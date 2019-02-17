/**
 * 
 */
package com.learn.myblog.coreCode.user.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.learn.myblog.common.bean.User;
import com.learn.myblog.common.bean.UserExtend;
import com.learn.myblog.common.mapper.UserExtendMapper;
import com.learn.myblog.common.mapper.UserMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.CommonUtils;
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
	UserExtendMapper userExtendMapper;
	
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
		oldPwd = Md5Utils.encodeMd5(oldPwd);
		User user = loginRegisterService.getLoginUser();
		if (!user.getUserPwd().equals(oldPwd)) {
			return MsgUtils.getFailedMsg("密码不正确。");
		}
		
		newPwd = Md5Utils.encodeMd5(newPwd);
		if (user.getUserPwd().equals(newPwd)) {
			return MsgUtils.getFailedMsg("新密码不能和旧密码一样。");
		}
		
		user.setUserPwd(newPwd);
		int result = userMapper.updateById(user);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

	/**
	 * 修改用户信息
	 * 
	 * @param userExtend
	 * @return
	 */
	@Override
	public Msg updateInfo(UserExtend userExtend) {
		String uuid = CommonUtils.getUserId();
		userExtend.setUuid(uuid);
		int result = userExtendMapper.updateById(userExtend);
		if (result == 0) {
			userExtendMapper.insert(userExtend);
		}
		return MsgUtils.getSuccessMsg();
	}

	/**
	 * 获取用户信息
	 */
	@Override
	public Msg getUserInfo(String uuid) {
		if ("".equals(uuid) || "null".equals(uuid) || uuid == null) {
			uuid = CommonUtils.getUserId();
		}
		UserExtend userExtend = userExtendMapper.selectById(uuid);
		if (userExtend == null) {
			return MsgUtils.getSuccessMsg();
		}
		
		userExtend.setUuid(null);
		return MsgUtils.getSuccessMsg(userExtend);
	}
	

}
