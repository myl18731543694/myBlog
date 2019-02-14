package com.learn.myblog.coreCode.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * @author 赵杰平
 *
 */
@Controller
@RequestMapping("/blog")
public class BlogController {

	/**
	 * 跳转到博客详情页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/blog/myBlog.ftl
	 */
	@RequestMapping("/blogDetails")
	public ModelAndView blogDetails() {
		return new ModelAndView("blog/myBlog");
	}
	
//	/**
//	 * 跳转到博客详情页面
//	 * 
//	 * @return /myBlog/src/main/resources/templates/page/blog/myBlog.ftl
//	 */
//	@RequestMapping("/blogDetails")
//	public ModelAndView blogDetails() {
//		return new ModelAndView("blog/myBlog");
//	}
	
	
}
