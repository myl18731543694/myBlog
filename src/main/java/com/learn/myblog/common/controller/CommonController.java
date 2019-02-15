/**
 * 
 */
package com.learn.myblog.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: CommonController
 * @Description: 通用帮助类
 * @author 孟轶龙
 * @date 2019年2月15日
 */
@Controller
@RequestMapping("/common")
public class CommonController {

	/**
	 * 通用跳转
	 * 
	 * @param path
	 * @return
	 */
	@RequestMapping("/html/**")
	public ModelAndView conmonGotoHtml(HttpServletRequest request) {
		String path = request.getRequestURI();
		path = path.substring(12);
		return new ModelAndView(path);
	}

}
