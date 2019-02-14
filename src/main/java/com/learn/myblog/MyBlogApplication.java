package com.learn.myblog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * 
 * @ClassName: MyBlogApplication
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author 孟轶龙
 * @date 2018年11月29日
 *
 */
@SpringBootApplication
@ComponentScan(basePackages = {"com.learn.myblog"})
public class MyBlogApplication {

	/**
	 * springBoot 项目类的启动方法
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		SpringApplication.run(MyBlogApplication.class, args);
	}

}
