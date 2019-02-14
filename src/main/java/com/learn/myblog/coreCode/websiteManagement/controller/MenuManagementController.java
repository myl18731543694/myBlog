/**
 * 
 */
package com.learn.myblog.coreCode.websiteManagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.learn.myblog.common.bean.WebsiteManagementMenu;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.coreCode.websiteManagement.service.MenuManagementService;

/**
 * @ClassName: MenuManagement
 * @Description: 菜单管理
 * @author 孟轶龙
 * @date 2019年1月24日
 */
@Controller
@RequestMapping("/menuManagement")
public class MenuManagementController {

	@Autowired
	MenuManagementService menuManagementService;

	/**
	 * 跳转到菜单管理页面
	 * 
	 * @return /myBlog/src/main/resources/templates/page/websiteManagement/menuManagement.ftl
	 */
	@RequestMapping("menuManagement")
	public ModelAndView menuManagement() {
		return new ModelAndView("/websiteManagement/menuManagement");
	}

	/**
	 * 获取所有菜单信息
	 * 
	 * @return
	 */
	@RequestMapping("/getAllMenu")
	@ResponseBody
	public Msg getAllMenu() {
		return menuManagementService.getAllMenu();
	}

	/**
	 * 增加菜单信息
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	@RequestMapping("/addMenu")
	@ResponseBody
	public Msg addMenu(WebsiteManagementMenu websiteManagementMenu) {
		return menuManagementService.addMenu(websiteManagementMenu);
	}

	/**
	 * 修改菜单信息，根据uuid
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	@RequestMapping("/editMenu")
	@ResponseBody
	public Msg editMenu(WebsiteManagementMenu websiteManagementMenu) {
		return menuManagementService.editMenu(websiteManagementMenu);
	}

	/**
	 * 删除菜单信息，根据uuid
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	@RequestMapping("/deleteMenu")
	@ResponseBody
	public Msg deleteMenu(String uuid) {
		return menuManagementService.deleteMenu(uuid);
	}

	/**
	 * 获取菜单信息，根据uuid
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	@RequestMapping("/getMenuById")
	@ResponseBody
	public Msg getMenuById(String uuid) {
		return menuManagementService.getMenuById(uuid);
	}

}
