package com.learn.myblog.common.dto;

import lombok.Data;

/**
 * @ClassName: BlogClassfiyNums
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月17日
 */
@Data
public class BlogClassfiyNums {
	// 主键
	private String uuid;

	// 博客分类名称
	private String blogClassifyName;

	// 分类的博客数目
	private int nums;
}
