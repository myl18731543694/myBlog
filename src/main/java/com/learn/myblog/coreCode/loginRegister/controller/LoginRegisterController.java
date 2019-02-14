/**
 * 
 */
package com.learn.myblog.coreCode.loginRegister.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.learn.myblog.common.bean.User;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.common.validateGroups.LoginRegisterGroups;
import com.learn.myblog.coreCode.loginRegister.service.LoginRegisterService;

/**
 * @ClassName: homePageController
 * @Description: TODO(登录注册的controller)
 * @author 孟轶龙
 * @date 2019年1月23日
 */
@Controller
@RequestMapping("loginRegister")
public class LoginRegisterController {

	@Autowired
	LoginRegisterService loginRegisterService;

	/**
	 * 登录页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/loginRegister/login.ftl
	 */
	@RequestMapping("/login")
	public ModelAndView login() {
		return new ModelAndView("loginRegister/login");
	}

	/**
	 * 注册页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/loginRegister/register.ftl
	 */
	@RequestMapping("/register")
	public ModelAndView register() {
		return new ModelAndView("loginRegister/register");
	}

	/**
	 * 退出账号
	 * 
	 * @return 登录地址
	 */
	@RequestMapping("/logout")
	public ModelAndView logout() {
		Subject subject = SecurityUtils.getSubject();
		subject.logout();
		return this.login();
	}

	/**
	 * 注册用户
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/registerUser")
	@ResponseBody
	public Msg registerUser(@Validated(LoginRegisterGroups.class) User user, BindingResult BindingResult) {
		if (BindingResult.hasErrors()) {
			return MsgUtils.getFailedMsg(BindingResult);
		}

		return loginRegisterService.registerUser(user);
	}

	/**
	 * 登录用户
	 * 
	 * @param user
	 * @return
	 */
	@RequestMapping("/loginUser")
	@ResponseBody
	public Msg loginUser(@Validated(LoginRegisterGroups.class) User user, BindingResult BindingResult) {
		if (BindingResult.hasErrors()) {
			return MsgUtils.getFailedMsg(BindingResult);
		}

		return loginRegisterService.loginUser(user);
	}

	/**
	 * 获取登录用户信息
	 * 
	 * @return
	 */
	@RequestMapping("/getLoginUserInfo")
	@ResponseBody
	public Msg getLoginUserInfo() {
		return loginRegisterService.getLoginUserInfo();
	}
	
}
