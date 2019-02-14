package com.learn.myblog.common.pojo;

import lombok.Data;

/**
 * @ClassName: Msg
 * @Description: 消息实体类
 * @author 孟轶龙
 * @date 2018年12月8日
 */
@Data
public class Msg {

	/**
	 * 结合 CodeEumu 使用
	 */
	private int code;
	/**
	 * 返回数据
	 */
	private Object data;
	/**
	 * 将要跳转的 url
	 */
	private String url;
}
