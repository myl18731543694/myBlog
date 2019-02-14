/**
 * 
 */
package com.learn.myblog.common.enums;

/**
 * @ClassName: CodeEumu
 * @Description: 返回结果code相关枚举类
 * @author 孟轶龙
 * @date 2018年12月8日
 */
public enum CodeEnmu {
	SUCCESS("成功", 200), FAILED("失败", 100);

	private int code;

	/**
	 * 购藏方法
	 * 
	 * @param name 描述
	 * @param code 值
	 */
	private CodeEnmu(String name, int code) {
		this.code = code;
	}
	
	public int value() {
		return this.code;
	}


	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Enum#toString()
	 */
	@Override
	public String toString() {
		return this.code + "";
	}

}
