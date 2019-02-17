/**
 * 
 */
package com.learn.myblog.common.bean;

import java.time.LocalDateTime;

import javax.validation.constraints.Pattern;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.learn.myblog.common.validateGroups.LoginRegisterGroups;

import lombok.Data;

/**
 * @ClassName: User
 * @Description: 数据库的user实体类
 * @author 孟轶龙
 * @date 2018年12月8日
 */
@TableName("user")
@Data
public class User {

	// 主键
	@TableId
	private String uuid;

	// 用户昵称
	@Pattern(message = "用户名必须，4到16位（字母，数字，下划线，减号）。", regexp = "^[a-zA-Z0-9_-]{4,16}$", groups = {
			LoginRegisterGroups.class })
	private String userName;

	// 用户密码
	@Pattern(message = "密码必须，4到16位（字母，数字，下划线，减号）。", regexp = "^[a-zA-Z0-9_-]{4,16}$", groups = {
			LoginRegisterGroups.class })
	private String userPwd;

	// 创建时间
	private LocalDateTime createTime;

	// 是否锁定，禁止登录。1：锁定，0：不锁定
	private int isLock;
	

}
