/**
 * 
 */
package com.learn.myblog.common.bean;

import com.baomidou.mybatisplus.annotation.TableName;

import lombok.Data;

/**
 * @ClassName: BlogClassfiy
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2019年2月17日
 */
@TableName("blogclassify")
@Data
public class BlogClassfiy {
	
	// 主键
	private String uuid;
	
	// 博客分类名称
	private String blogClassifyName;
}
