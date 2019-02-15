/**
 * 
 */
package com.learn.myblog.coreCode.userManager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.learn.myblog.common.pojo.BootStrapTable;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.coreCode.userManager.service.UserManagerService;

/**
 * @ClassName: UserController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Controller
@RequestMapping("/userManager")
public class UserManagerController {

	@Autowired
	UserManagerService userManagerService;

	/**
	 * 获取用户列表
	 * 
	 * @param currentPage 当前页码
	 * @param pageSize    一次多少条
	 * @param search      搜索标题条件
	 * @return
	 */
	@RequestMapping("/getUserList")
	@ResponseBody
	public BootStrapTable getUserList(int currentPage, int pageSize, String search) {
		return userManagerService.getUserList(currentPage, pageSize, search);
	}

	/**
	 * 修改用户是否锁定
	 * 
	 * @param uuid   用户id
	 * @param isLock 是否锁定
	 * @return
	 */
	@RequestMapping("/updateUserLock")
	@ResponseBody
	public Msg updateUserLock(@RequestParam String uuid, @RequestParam Boolean isLock) {
		return userManagerService.updateUserLock(uuid, isLock);
	}

}
