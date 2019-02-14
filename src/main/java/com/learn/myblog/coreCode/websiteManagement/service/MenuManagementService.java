/**
 * 
 */
package com.learn.myblog.coreCode.websiteManagement.service;

import com.learn.myblog.common.bean.WebsiteManagementMenu;
import com.learn.myblog.common.pojo.Msg;

/**
 * @ClassName: MenuManagementService
 * @Description: 后台菜单管理
 * @author 孟轶龙
 * @date 2019年1月24日
 */
public interface MenuManagementService {

	/**
	 * 获取所有菜单信息
	 * 
	 * @return
	 */
	Msg getAllMenu();

	/**
	 * 增加菜单信息
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	Msg addMenu(WebsiteManagementMenu websiteManagementMenu);

	/**
	 * 修改菜单信息，根据uuid
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	Msg editMenu(WebsiteManagementMenu websiteManagementMenu);

	/**
	 * 删除菜单信息，根据uuid
	 * 
	 * @param uuid
	 * @return
	 */
	Msg deleteMenu(String uuid);

	/**
	 * 获取菜单信息，根据uuid
	 * 
	 * @param uuid
	 * @return
	 */
	Msg getMenuById(String uuid);

}
