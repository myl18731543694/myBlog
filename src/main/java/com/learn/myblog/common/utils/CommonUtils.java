package com.learn.myblog.common.utils;

import java.util.UUID;

import org.apache.shiro.SecurityUtils;

/**
 * @ClassName: CommonUtils
 * @Description: 常用方法
 * @author 孟轶龙
 * @date 2018年12月8日
 */
public class CommonUtils {

	/**
	 * 获取 uuid 方法
	 * 
	 * @return 随机生成的uuid
	 */
	public static String getUuid() {
		return UUID.randomUUID().toString();
	}

	/**
	 * 获取 用户id
	 * 
	 * @return
	 */
	public static String getUserId() {
		return SecurityUtils.getSubject().getPrincipal() + "";
	}

}
