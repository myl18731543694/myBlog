package com.learn.myblog.coreCode.test.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;

/**
 * @ClassName: TestSwaggerController
 * @Description: 测试Swagger
 * @author 孟轶龙
 * @date 2018年12月20日
 */
@RestController
@RequestMapping("testSwagger")
@Api(value = "测试Swagger")
public class TestSwaggerController {

	@ApiOperation(value = "测试用接口", notes = "测试用接口", httpMethod = "POST")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "name", value = "用户姓名", dataType = "String", required = true, paramType = "form"),
			@ApiImplicitParam(name = "id", value = "id", dataType = "int", required = false, paramType = "form") })
	@RequestMapping("word")
	public String HelloWord(@RequestParam String name, Integer id) {
		return "Hello Word";
	}

}
