/**
 * 
 */
package com.learn.myblog.common.bean;

import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;

/**
 * @ClassName: WebsiteManagementMenu
 * @Description: 后台管理的菜单表
 * @author 孟轶龙
 * @date 2019年1月24日
 */
@TableName("websiteManagementMenu")
@Data
public class WebsiteManagementMenu {
	// 主键
	@TableId
	private String uuid;

	// 菜单名称
	private String menuName;
	
	// 菜单url
	private String menuUrl;

	// 菜单排序
	private String menuSort;

	// 父级菜单id，为null是顶级菜单
	private String parentMenu;

	// 创建时间
	// FieldStrategy.IGNORED 为null的话则忽略更新
	private LocalDateTime createTime;

}
