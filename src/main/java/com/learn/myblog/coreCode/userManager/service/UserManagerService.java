/**
 * 
 */
package com.learn.myblog.coreCode.userManager.service;

import com.learn.myblog.common.pojo.BootStrapTable;
import com.learn.myblog.common.pojo.Msg;
/**
 * @ClassName: UserService
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
public interface UserManagerService {

	/**
	 * 获取用户列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @return
	 */
	BootStrapTable getUserList(int currentPage, int pageSize, String search);

	/**
	 * 修改用户是否锁定
	 * 
	 * @param uuid   用户id
	 * @param isLock 是否锁定
	 * @return
	 */
	Msg updateUserLock(String uuid, Boolean isLock);

}
