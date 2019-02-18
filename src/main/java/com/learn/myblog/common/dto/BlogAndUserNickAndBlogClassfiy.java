/**
 * 
 */
package com.learn.myblog.common.dto;

import com.learn.myblog.common.bean.Blog;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**  
 * @ClassName: BlogAndUserNickAndBlogClassfiy  
 * @Description: TODO(这里用一句话描述这个类的作用)  
 * @author 孟轶龙  
 * @date 2019年2月18日    
 */
@Getter
@Setter
@ToString
public class BlogAndUserNickAndBlogClassfiy extends Blog{
	
	// 博客分类
	private String blogClassifyName;
	
	// 用户昵称
	private String userNick;
}
