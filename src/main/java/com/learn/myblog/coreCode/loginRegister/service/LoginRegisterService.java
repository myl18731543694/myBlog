/**
 * 
 */
package com.learn.myblog.coreCode.loginRegister.service;

import com.learn.myblog.common.bean.User;
import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: loginRegisterService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年1月23日
 */

public interface LoginRegisterService {

	/**
	 * 注册用户
	 * 
	 * @param user
	 * @return
	 */
	public Msg registerUser(User user);

	/**
	 * 登录用户
	 * 
	 * @param user
	 * @return
	 */
	public Msg loginUser(User user);

	/**
	 * 获取登录用户信息
	 * 
	 * @return
	 */
	public Msg getLoginUserInfo();

}
