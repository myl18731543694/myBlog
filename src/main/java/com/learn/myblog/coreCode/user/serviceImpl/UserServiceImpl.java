/**
 * 
 */
package com.learn.myblog.coreCode.user.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learn.myblog.common.bean.User;
import com.learn.myblog.common.mapper.UserMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.Md5Utils;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.loginRegister.service.LoginRegisterService;
import com.learn.myblog.coreCode.user.service.UserService;

/**
 * @ClassName: UserServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	LoginRegisterService loginRegisterService;

	/**
	 * 修改密码
	 * 
	 * @param oldPwd 旧密码
	 * @param newPwd 新密码
	 * @return
	 */
	@Override
	public Msg updatePwd(String oldPwd, String newPwd) {
		User user = loginRegisterService.getLoginUser();
		if (!Md5Utils.encodeMd5(oldPwd).equals(user.getUserPwd())) {
			return MsgUtils.getFailedMsg("密码不正确");
		}
		
		newPwd = Md5Utils.encodeMd5(newPwd);
		user.setUserPwd(newPwd);
		int result = userMapper.updateById(user);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

}
