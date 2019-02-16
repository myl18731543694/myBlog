<#include "/showBlog/common/start.ftl">
<link href="css/base.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/info.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/jquery.easyfader.min.js"></script>
<script src="/showBlog/js/hc-sticky.js"></script>
<script src="/showBlog/js/comm.js"></script>
<script src="/showBlog/js/scrollReveal.js"></script>
<#include "/showBlog/common/header.ftl">

<article>
	<main>
	<div class="infosbox">
		<div class="newsview">
			<h3 id="blogTitle" class="news_title">博客标题！</h3>
			<div class="bloginfo">
				<ul>
					<li class="author">作者：<a href="/">杨青</a></li>
					<li id="blogTime" class="timer">时间：2018-5-13</li>
					<li class="view">4567人已阅读</li>
				</ul>
			</div>
			<div class="news_about" id="blogIntro"></div>
			<div class="news_con" id="blogContent">正文</div>
		</div>
		<div>
			</br>
		</div>
		<div>
			</br>
		</div>

		<div class="share">
			<p class="diggit">
				<a> 赞！ </a>(<b id="diggnum">13</b>)
			</p>
		</div>

		<div class="nextinfo">
			<p>
				上一篇：<a href="/news/life/2018-03-13/804.html">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a>
			</p>
			<p>
				下一篇：<a href="/news/life/">返回列表</a>
			</p>
		</div>

		<div class="news_pl">
			<h2>文章评论</h2>
			<ul>
				<div class="gbko"></div>
			</ul>
		</div>
	</div>

	</main>
	
	<#include "/showBlog/common/countRight.ftl">
	
</article>

<script>
	var blogId = "${uuid}";

	$(function() {
		$.ajax({
			url : "/blogManager/getBlog",
			data : {
				blogId : blogId
			},
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					$("#blogTitle").html(result.data.blogTitle);
					$("#blogTime").html("时间：" + result.data.createTime);
					$("#blogIntro").html(
							"<strong>简介</strong>" + result.data.blogIntro);
					$("#blogContent").html(result.data.blogContent);
				} else {
					alert(result.data);
				}

			}
		});
	})
</script>

<#include "/showBlog/common/foot.ftl">
