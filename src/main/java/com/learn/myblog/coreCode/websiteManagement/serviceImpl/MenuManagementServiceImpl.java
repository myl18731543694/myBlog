/**
 * 
 */
package com.learn.myblog.coreCode.websiteManagement.serviceImpl;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.learn.myblog.common.bean.WebsiteManagementMenu;
import com.learn.myblog.common.mapper.WebsiteManagementMenuMapper;
import com.learn.myblog.common.pojo.Msg;
import com.learn.myblog.common.utils.CommonUtils;
import com.learn.myblog.common.utils.MsgUtils;
import com.learn.myblog.coreCode.websiteManagement.service.MenuManagementService;

/**
 * @ClassName: MenuManagementServiceImpl
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年1月24日
 */
@Service
public class MenuManagementServiceImpl implements MenuManagementService {

	@Autowired
	WebsiteManagementMenuMapper websiteManagementMenuMapper;

	/**
	 * 获取所有菜单信息
	 * 
	 * @return
	 */
	public Msg getAllMenu() {
//		Page<WebsiteManagementMenu> page = new Page<WebsiteManagementMenu>();
//		websiteManagementMenuMapper.selectPage(page, null);
//		return MsgUtils.getSuccessMsg(page);
		
		QueryWrapper<WebsiteManagementMenu> queryWrapper = new QueryWrapper<WebsiteManagementMenu>();
		queryWrapper.orderByAsc("menuSort");
		// 查询所有不分页
		List<WebsiteManagementMenu> list = websiteManagementMenuMapper.selectList(queryWrapper);
		return MsgUtils.getSuccessMsg(list);
	}

	/**
	 * 增加菜单信息
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	public Msg addMenu(WebsiteManagementMenu websiteManagementMenu) {
		websiteManagementMenu.setUuid(CommonUtils.getUuid());
		websiteManagementMenu.setCreateTime(LocalDateTime.now());
		int result = websiteManagementMenuMapper.insert(websiteManagementMenu);
		return result == 0 ? MsgUtils.getFailedMsg() : MsgUtils.getSuccessMsg();
	}

	/**
	 * 修改菜单信息，根据uuid
	 * 
	 * @param websiteManagementMenu
	 * @return
	 */
	// TODO createTime创建时间不能为null
	public Msg editMenu(WebsiteManagementMenu websiteManagementMenu) {
		WebsiteManagementMenu db_websiteManagementMenu = websiteManagementMenuMapper.selectById(websiteManagementMenu.getUuid());
		if (db_websiteManagementMenu == null) {
			return MsgUtils.getFailedMsg("没有找到对应数据。");
		}
		db_websiteManagementMenu.setMenuName(websiteManagementMenu.getMenuName());
		db_websiteManagementMenu.setMenuSort(websiteManagementMenu.getMenuSort());
		db_websiteManagementMenu.setMenuUrl(websiteManagementMenu.getMenuUrl());
		db_websiteManagementMenu.setParentMenu(websiteManagementMenu.getParentMenu());
		int result = websiteManagementMenuMapper.updateById(db_websiteManagementMenu);
		return result == 0 ? MsgUtils.getFailedMsg() : MsgUtils.getSuccessMsg();
	}

	/**
	 * 删除菜单信息，根据uuid
	 * 
	 * @param uuid
	 * @return
	 */
	public Msg deleteMenu(String uuid) {
		int result = websiteManagementMenuMapper.deleteById(uuid);
		return result == 0 ? MsgUtils.getFailedMsg() : MsgUtils.getSuccessMsg();
	}

	/**
	 * 获取菜单信息，根据uuid
	 * 
	 * @param uuid
	 * @return
	 */
	public Msg getMenuById(String uuid) {
		WebsiteManagementMenu websiteManagementMenu = websiteManagementMenuMapper.selectById(uuid);
		return websiteManagementMenu == null ? MsgUtils.getFailedMsg("没有找到对应菜单信息") : MsgUtils.getSuccessMsg(websiteManagementMenu);
	}

}
