<div role="tabpanel" class="tab-pane active" id="sour">

	<form id="blogInfoForm" class="form-horizontal">
		<div class="form-group ">
			<label for="sName" class="col-xs-3 control-label">博客标题：</label>
			<div class="col-xs-8 ">
				<input type="password" class="form-control input-sm duiqi"
					id="blogTitle" name=“blogTitle” placeholder="博客标题">
			</div>
		</div>
		<div class="form-group">
			<label for="sLink" class="col-xs-3 control-label">博客正文：</label>
			<div class="col-xs-8 ">
				<input type="password" class="form-control input-sm duiqi"
					id="blogContent" name="blogContent"  placeholder="博客正文">
			</div>
		</div>
		<div class="form-group">
			<label for="sOrd" class="col-xs-3 control-label"></label>
			<button type="button" onclick="addBlog()">发 布</button>
		</div>
	</form>
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