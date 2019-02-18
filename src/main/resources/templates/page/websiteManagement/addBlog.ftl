<#include "/commonPage/script.ftl">

<div role="tabpanel" class="tab-pane active" id="sour">
	<div class="panel-body" style="padding-bottom: 0px;">

		<div class="panel panel-default">
			<div class="panel-heading">发布博客</div>
			<div class="panel-body">
				<form id="blogInfoForm" class="form-horizontal">
					<div class="form-group ">
						<label for="sName" class="col-xs-2 control-label">博客标题：</label>
						<div class="col-xs-5 ">
							<input type="text" class="form-control input-sm duiqi"
								id="blogTitle" name="blogTitle" placeholder="博客标题">
						</div>
					</div>
					<div class="form-group ">
						<label for="sName" class="col-xs-2 control-label">博客简介：</label>
						<div class="col-xs-5 ">
							<textarea rows="3" cols="3" class="form-control input-sm duiqi"
								id="blogIntro" name="blogIntro" placeholder="博客简介"></textarea>
						</div>
					</div>
					<div class="form-group ">
						<label for="sName" class="col-xs-2 control-label">显示图片：</label>
						<div class="col-xs-5 ">
							<input type="hidden" class="form-control input-sm duiqi"
								id="blogImage" name="blogImage"  placeholder="显示图片">
							<img style="width: 300px;height: 196px" id="blogImageImg" name="blogImageImg" alt="请选择博客首页图片"
								src="">
							<#include "/websiteManagement/uploadImage.ftl">
						</div>
					</div>
					<div class="form-group">
						<label for="sLink" class="col-xs-2 control-label">博客正文：</label>
						<div class="col-xs-8 ">
							<!-- <textarea rows="10" cols="50" id="blogContent" name="blogContent"
								placeholder="博客正文"></textarea> -->
							<!-- 加载编辑器的容器 -->
							<script id="blogContent" name="blogContent" type="text/plain"></script>
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
	// 实例化编辑器
	var ue = UE.getEditor('blogContent');

	ue.ready(function() {
		ue.setHeight(400);
		//设置编辑器的内容
		// ue.setContent('hello');
		// //获取html内容，返回: <p>hello</p>
		// var html = ue.getContent();
		// //获取纯文本内容，返回: hello
		// var txt = ue.getContentTxt();
	});

	/**
	 * 修改用户信息
	 */
	function addBlog() {
		$.ajax({
			url : "/blogManager/addBlog",
			data : {
				blogTitle : $("#blogTitle").val(),
				blogIntro : $("#blogIntro").val(),
				blogContent : ue.getContent(),
				blogImage : $("#blogImage").val()
			},
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