/**
 * 
 */
package com.learn.myblog.coreCode.websiteManagement.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: homePageController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年1月23日
 */
@Controller
public class HomePageController {

	/**
	 * 配置默认后台主页
	 * 
	 * @return /myBlog/src/main/resources/templates/page/showBlog/index.ftl
	 */
	@RequestMapping("/")
	public ModelAndView home() {
		return new ModelAndView("showBlog/index");
	}
	
	/**
	 * 配置默认后台主页
	 * 
	 * @return /templates/page/websiteManagement/index.html
	 */
	@RequestMapping("/blogManagement")
	public ModelAndView blogManagement() {
		return new ModelAndView("websiteManagement/blogManagement");
	}
}
