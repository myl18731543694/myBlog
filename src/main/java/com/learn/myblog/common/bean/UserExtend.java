/**
 * 
 */
package com.learn.myblog.common.bean;

import java.time.LocalDate;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;

/**
 * @ClassName: UserExtend
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Data
@TableName("userextend")
public class UserExtend {
	// 主键 用户id
	@TableId
	private String uuid;

	// 用户地址 (暂时不维护)
	@Deprecated
	private String userLocation;

	// 用户简介
	private String userIntroduce;

	// 用户生日
	private LocalDate userBirthday;

	// 用户性别：1：男，2：女
	private int userSex;

	// 用户手机号
	private String userMobile;

	// 用户邮箱
	private String userEmail;

}
