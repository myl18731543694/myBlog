<#include "/commonPage/script.ftl">

<!-- 核心显示 -->
<div role="tabpanel" class="tab-pane active" id="sour">

	<div class="panel-body" style="padding-bottom: 0px;">

		<div class="panel panel-default">
			<div class="panel-heading">查询条件</div>
			<div class="panel-body">
				<div id="formSearch" class="form-horizontal">
					<div class="form-group" style="margin-top: 15px">
						<label class="control-label col-sm-1" for="txt_search">博客标题</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="txt_search">
						</div>
						<!-- <label class="control-label col-sm-1" for="txt_search">博客分类</label>
						<div class="col-sm-3">
							<input type="text" class="form-control" id="txt_search">
						</div> -->
						<div class="col-sm-4" style="text-align: left;">
							<button type="button" style="margin-left: 50px" id="btn_query"
								class="btn btn-primary" onclick="refresh()">查询</button>
						</div>
					</div>
				</div>
			</div>
		</div>

		<table id="tb_departments"></table>
	</div>
</div>

<script>
	/**
	 * 刷新table
	 */ 
	function refresh(){
		$("#tb_departments").bootstrapTable('refresh');
	}

	$(function() {

		//1.初始化Table
		var oTable = new TableInit();
		oTable.Init();

		//2.初始化Button的点击事件
		var oButtonInit = new ButtonInit();
		oButtonInit.Init();

	});

	var TableInit = function() {
		var oTableInit = new Object();
		//初始化Table
		oTableInit.Init = function() {
			$('#tb_departments').bootstrapTable({
				url : '/blogManager/getBlogList', //请求后台的URL（*）
				method : 'get', //请求方式（*）
				striped : true, //是否显示行间隔色
				cache : false, //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
				pagination : true, //是否显示分页（*）
				sortable : false, //是否启用排序
				sortOrder : "asc", //排序方式
				totalField : "total",
				dataField: 'rows',
				queryParams : oTableInit.queryParams,//传递参数（*）
				sidePagination : "server", //分页方式：client客户端分页，server服务端分页（*）
				pageNumber : 1, //初始化加载第一页，默认第一页
				pageSize : 10, //每页的记录行数（*）
				pageList : [ 10, 25, 50, 100 ], //可供选择的每页的行数（*）
				search : false, //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
				strictSearch : true,
				showColumns : true, //是否显示所有的列
				showRefresh : true, //是否显示刷新按钮
				minimumCountColumns : 2, //最少允许的列数
				clickToSelect : true, //是否启用点击选中行
				height : 500, //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
				uniqueId : "uuid", //每一行的唯一标识，一般为主键列
				showToggle : true, //是否显示详细视图和列表视图的切换按钮
				cardView : false, //是否显示详细视图
				detailView : false, //是否显示父子表
				columns : [{
					field : 'blogTitle',
					title : '博客标题',
					width: '30%'
				}, {
					field : 'blogIntro',
					title : '博客简介',
					width: '50%'
				}, {
					title : '操作',
					width: '20%',
					formatter:function(value,row,index){
						var str = "<button type=\"button\" onclick=\"slectBlog('"+row.uuid+"')\" class=\"btn btn-default btn-sm\"><span class=\"glyphicon glyphicon-pencil\"></span>查看</button>&nbsp;";
						str += "<button type=\"button\" onclick=\"updateBlog('"+row.uuid+"')\" class=\"btn btn-default btn-sm\"><span class=\"glyphicon glyphicon-pencil\"></span>修改</button>&nbsp;";
					    str += "<button type=\"button\" onclick=\"deleteBlog('"+row.uuid+"')\" class=\"btn btn-default btn-sm\"><span class=\"glyphicon glyphicon-remove\"></span>删除</button>";
					    return str;
					}
				}]
			});
		};

		//得到查询的参数
		oTableInit.queryParams = function(params) {
			var temp = { //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
				// 自定义传参数
				pageSize : params.limit, //页面大小
				currentPage : (params.offset / params.limit) + 1, //页码
				search : $("#txt_search").val(),
				blogClassfiy : ""
				// blogClassfiy : $("#blogClassfiy").val()
			};
			return temp;
		};
		return oTableInit;
	};

	var ButtonInit = function() {
		var oInit = new Object();
		var postdata = {};

		oInit.Init = function() {
			//初始化页面上面的按钮事件
		};

		return oInit;
	};
	
	/**
	 * 删除博客根据 id
	 */
	function deleteBlog(id){
		if(confirm("确定要删除吗？" + id)){
			$.ajax({
				url : "/blogManager/deleteBlog",
				data : {
					uuid : id
				},
				dataType : "json",
				success : function(result) {
					if (result.code == 200) {
						alert("删除成功");
						$("#tb_departments").bootstrapTable('refresh');
					} else {
						alert(result.data);
					}

				}
			});
		}
	}
	
	/**
	 * 查看博客根据 id
	 */
	function slectBlog(id){
		window.open("/common/html/showBlog/blogDetail?uuid=" + id, "_blank");
	}
	
	/**
	 * 修改博客根据 id
	 */
	function updateBlog(id){
		window.location.href = "/common/html/websiteManagement/updateBlog?uuid=" + id;
	}
</script>



