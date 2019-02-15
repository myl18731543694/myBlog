<#include "/common/script.ftl">

<div role="tabpanel" class="tab-pane active" id="sour">
	<div class="panel-body" style="padding-bottom: 0px;">

		<div class="panel panel-default">
			<div class="panel-heading">发布博客</div>
			<div class="panel-body">
				<form id="blogInfoForm" class="form-horizontal">
					<div class="form-group ">
						<label for="sName" class="col-xs-3 control-label">博客标题：</label>
						<div class="col-xs-5 ">
							<input type="text" class="form-control input-sm duiqi"
								id="blogTitle" name="blogTitle" placeholder="博客标题">
						</div>
					</div>
					<div class="form-group">
						<label for="sLink" class="col-xs-3 control-label">博客正文：</label>
						<div class="col-xs-8 ">
							<textarea rows="10" cols="50" id="blogContent" name="blogContent"
								placeholder="博客正文"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label for="sOrd" class="col-xs-3 control-label"></label>
						<button type="button" class="btn btn-default  btn-sm"
							onclick="addBlog()">发 布</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</div>
<script>
	/**
	 * 修改用户信息
	 */
	function addBlog() {
		$.ajax({
			url : "/blogManager/addBlog",
			data : $("#blogInfoForm").serialize(),
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					alert("发布成功");
				} else {
					alert(result.data);
				}

			}
		});
	}
</script>