/**
 * 
 */
package com.learn.myblog.common.pojo;

import java.util.List;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import lombok.Data;

/**
 * @ClassName: BootStrapTable
 * @Description: BootStrapTable返回结果类
 * @author 孟轶龙
 * @date 2019年2月15日
 */
@Data
public class BootStrapTable {
	private long total;

	private List<?> rows;
	
	private BootStrapTable() {
	}

	/**
	 * 返回bootstrap-table所需要的数据格式
	 * 
	 * @param page
	 * @return
	 */
	public static <T> BootStrapTable createBootStrapTable(Page<T> page) {
		BootStrapTable bootStrapTable = new BootStrapTable();
		bootStrapTable.setTotal(page.getTotal());
		bootStrapTable.setRows(page.getRecords());
		return bootStrapTable;
	}
}
