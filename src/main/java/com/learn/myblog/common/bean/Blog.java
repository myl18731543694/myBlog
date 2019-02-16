/**
 * 
 */
package com.learn.myblog.common.bean;

import java.time.LocalDateTime;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;

/**
 * @ClassName: Blog
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@TableName("blog")
@Data
public class Blog {
	// 主键
	@TableId
	private String uuid;
	
	// 用户id
	private String userId;
	
	// 博客标题
	private String blogTitle;
	
	// 博客正文
	private String blogContent;
	
	// 博客简介
	private String blogIntro;
	
	// 创建时间
	private LocalDateTime createTime;
	
	// 是否删除 1：删除
	private int isDelete;

}
