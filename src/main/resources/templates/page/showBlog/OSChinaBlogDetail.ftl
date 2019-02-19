<#include "/showBlog/commonPage/start.ftl">
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/info.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/jquery.easyfader.min.js"></script>
<script src="/showBlog/js/hc-sticky.js"></script>
<script src="/showBlog/js/comm.js"></script>
<script src="/showBlog/js/scrollReveal.js"></script>
<#include "/showBlog/commonPage/header.ftl">

<article>
	<main>
	<div class="infosbox">
		<div class="newsview">
			<h3 id="blogTitle" class="news_title"></h3>
			<div class="bloginfo">
				<ul>
					<li class="author">作者：<a href="/common/html/showBlog/about" id="userNick">小小编辑</a></li>
					<li id="blogTime" class="timer"></li>
					<li class="view" id="blogReadNumber"></li>
				</ul>
			</div>
			<div class="tags" id="blogClassfiyDiv"></div>
			<div class="news_about" >简介：该文章来自OSChina</div>
			<div class="news_con" id="blogContent">正文</div>
		</div>
		<div>
			</br>
		</div>
		<div>
			</br>
		</div>

	</div>

	</main>

	<#include "/showBlog/commonPage/countRight.ftl">

</article>

<script>
	var blogDetails = "${blogDetailsUrl}";

	$(function() {
		$.ajax({
			url : "/OSChinaBlog/getBlogDetails",
			data : {
				blogDetails : blogDetails
			},
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					$("#blogTitle").html("${blogTitle }");
					$("#blogTime").html("时间：${blogCreateTime}");
					$("#blogReadNumber").html("阅读：${blogReadNumber}");
					$("#blogContent").html(result.data);
				} else {
					alert(result.data);
				}

			}
		});
	})
</script>

<#include "/showBlog/commonPage/foot.ftl">
