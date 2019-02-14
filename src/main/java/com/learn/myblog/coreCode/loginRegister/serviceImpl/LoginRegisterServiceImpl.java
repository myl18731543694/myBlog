/**
 * 
 */
package com.learn.myblog.coreCode.loginRegister.serviceImpl;

import java.time.LocalDateTime;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.learn.myblog.common.bean.User;
import com.learn.myblog.common.mapper.UserMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.CommonUtils;
import com.learn.myblog.common.utils.Md5Utils;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.loginRegister.service.LoginRegisterService;

/**
 * @ClassName: loginRegisterServiceImpl
 * @Description: TODO(登录注册方法实现)
 * @author 孟轶龙
 * @date 2019年1月23日
 */
@Service
public class LoginRegisterServiceImpl implements LoginRegisterService {

	@Autowired
	UserMapper userMapper;

	/**
	 * 注册用户
	 * 
	 * @param user
	 * @return
	 */
	public Msg registerUser(User user) {
		// 用户名
		String userName = user.getUserName();
		QueryWrapper<User> queryWrapper = new QueryWrapper<User>();
		queryWrapper.eq("userName", userName);
		// 数据库的用户
		User db_user = userMapper.selectOne(queryWrapper);
		if (db_user != null) {
			return MsgUtils.getFailedMsg("用户名已被占用。");
		}

		user.setUuid(CommonUtils.getUuid());
		String md5UserPwd = Md5Utils.encodeMd5(user.getUserPwd());
		user.setUserPwd(md5UserPwd);
		user.setCreateTime(LocalDateTime.now());
		int result = userMapper.insert(user);
		return result > 0 ? MsgUtils.getSuccessMsg() : MsgUtils.getFailedMsg();
	}

	/**
	 * 登录用户
	 * 
	 * @param user
	 * @return
	 */
	public Msg loginUser(User user) {
		// 用户名
		String userName = user.getUserName();
		// 密码
		String userPwd = user.getUserPwd();

		System.out.println("前段传过来userPwd--> " + userPwd);
		// shiro登录
		UsernamePasswordToken token = new UsernamePasswordToken(userName, userPwd);

		try {
			Subject subject = SecurityUtils.getSubject();
			subject.logout();
			subject.login(token);
		} catch (AuthenticationException e) {
			// 出现认证异常
			String message = e.getMessage();
			return MsgUtils.getFailedMsg(message);
		}

		return MsgUtils.getSuccessMsg();
	}

	/**
	 * 获取登录用户信息
	 */
	public Msg getLoginUserInfo() {
		User user = this.getLoginUser();
		if (user == null) {
			return MsgUtils.getFailedMsg();
		}
		user.setUserPwd(null);
		user.setCreateTime(null);
		return MsgUtils.getSuccessMsg(user);
	}
	
	/**
	 * 获取登录用户信息
	 */
	public User getLoginUser() {
		String userUuid = CommonUtils.getUserId();
		System.out.println("userUuid--> " + userUuid);
		return userMapper.selectById(userUuid);
	}

}
