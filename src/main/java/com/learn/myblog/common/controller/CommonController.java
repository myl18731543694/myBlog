/**
 * 
 */
package com.learn.myblog.common.controller;

import java.util.Map;

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
		ModelAndView modelAndView = new ModelAndView(path);

		Map<String, String[]> map = request.getParameterMap();
		for (String item : map.keySet()) {
			String[] values = map.get(item);
			if (values.length > 0) {
				modelAndView.addObject(item, values[0]);
			} else {
				modelAndView.addObject(item, "");
			}

		}

		return modelAndView;
	}

}
