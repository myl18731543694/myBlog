/**
 * 
 */
package com.learn.myblog.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.converter.Converter;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @ClassName: DateConfig
 * @Description: TODO(解决LocalDate，或者LocalDateTime作为入参会报错400，格式转换问题。详细参考https://www.jianshu.com/p/b52db905f020)
 * @author 孟轶龙
 * @date 2019年2月14日
 */
@Configuration
public class DateConfig {

	@Bean
	public Converter<String, LocalDate> localDateConverter() {
		return new Converter<>() {
			@Override
			public LocalDate convert(String source) {
				return LocalDate.parse(source, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
			}
		};
	}

	@Bean
	public Converter<String, LocalDateTime> localDateTimeConverter() {
		return new Converter<>() {
			@Override
			public LocalDateTime convert(String source) {
				return LocalDateTime.parse(source, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
			}
		};
	}

}