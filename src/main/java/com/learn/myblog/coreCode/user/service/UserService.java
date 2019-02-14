/**
 * 
 */
package com.learn.myblog.coreCode.user.service;

import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: UserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
public interface UserService {

	/**
	 * 修改密码
	 * 
	 * @param oldPwd 旧密码
	 * @param newPwd 新密码
	 * @return
	 */
	Msg updatePwd(String oldPwd, String newPwd);

}
