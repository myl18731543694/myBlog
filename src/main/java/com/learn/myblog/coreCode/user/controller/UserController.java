/**
 * 
 */
package com.learn.myblog.coreCode.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.coreCode.user.service.UserService;

/**
 * @ClassName: UserController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	UserService userService;

	/**
	 * 跳转到修改用户名密码页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/websiteManagement/updateUserPwd.ftl
	 */
	@RequestMapping("/updateUserPwd")
	public ModelAndView updateUserPwd() {
		return new ModelAndView("websiteManagement/updateUserPwd");
	}

	/**
	 * 跳转到修改用户名密码页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/websiteManagement/updateUserPwd.ftl
	 */
	@RequestMapping("/updatePwd")
	@ResponseBody
	public Msg updatePwd(@RequestParam String oldPwd, @RequestParam String newPwd) {
		return userService.updatePwd(oldPwd, newPwd);
	}
}
