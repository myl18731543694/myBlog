<#include "/showBlog/common/start.ftl">
<link href="/showBlog/css/base.css" rel="stylesheet">
<link href="/showBlog/css/index.css" rel="stylesheet">
<link href="/showBlog/css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/jquery.easyfader.min.js"></script>
<script src="/showBlog/js/hc-sticky.js"></script>
<script src="/showBlog/js/comm.js"></script>
<script src="/showBlog/js/scrollReveal.js"></script>

<script src="/showBlog/common/blogStyle.js"></script>
<#include "/showBlog/common/header.ftl">

<article>
	<!--banner begin-->
	<div class="banner">
		<div id="banner" class="fader">
			<li class="slide"><a href="/" target="_blank"><img
					src="images/1.jpg"><span class="imginfo">别让这些闹心的套路，毁了你的网页设计!</span></a></li>
			<li class="slide"><a href="/" target="_blank"><img
					src="images/2.jpg"><span class="imginfo">网页中图片属性固定宽度，如何用js改变大小</span></a></li>
			<li class="slide"><a href="/" target="_blank"><img
					src="images/3.jpg"><span class="imginfo">个人博客，属于我的小世界！</span></a></li>
			<div class="fader_controls">
				<div class="page prev" data-target="prev">&lsaquo;</div>
				<div class="page next" data-target="next">&rsaquo;</div>
				<ul class="pager_list">
				</ul>
			</div>
		</div>
	</div>
	<!--banner end-->
	<div id="topRightDiv" class="toppic"></div>
	<main>
	<div class="news_box">
		<ul id="addNewsBoxUl">
		</ul>
	</div>
	<div class="pics">
		<ul id="addPicsUl">
		</ul>
	</div>

	<div class="blogtab">
		<ul id="blogtab">
			<li class="current">最新文章</li>
			<!-- <li><a href="list.html">心得笔记</a></li> -->
		</ul>

		<!-- 添加博客用的div -->
		<div id="addBlogDiv" hidden></div>
	</div>
	</main>

	<#include "/showBlog/common/countRight.ftl">

</article>

<script>
	$(function() {
		// 首页右上角样式
		$("#topRightDiv").append(topRightStyle());
		$("#topRightDiv").append(topRightStyle());

		// 首页中间图片文字1
		$("#addNewsBoxUl").append(newsBox());
		$("#addNewsBoxUl").append(newsBox());
		$("#addNewsBoxUl").append(newsBox());
		$("#addNewsBoxUl").append(newsBox());
		$("#addNewsBoxUl").append(newsBox());
		$("#addNewsBoxUl").append(newsBox());

		// 首页中间图片文字2
		$("#addPicsUl").append(pics());
		$("#addPicsUl").append(pics());
		$("#addPicsUl").append(pics());
		
		// 博客正文样式
		$("#addBlogDiv").before(blogStyle1());
		$("#addBlogDiv").before(blogStyle2());
		$("#addBlogDiv").before(blogStyle3());
		$("#addBlogDiv").before(blogStyle4());
	})

	/**
	 * 首页右边的图片文字
	 */
	function topRightStyle(url, imgSrc, blogTitle, blogClassify) {
		/* var str = "<li><a href=\""+url+"\" target=\"_blank\"> <i><img\r\n" + 
		"					src=\""+imgSrc+"\"></i>\r\n"
				+ "				<h2>"
				+ blogTitle
				+ "</h2> <span>"
				+ blogClassify
				+ "</span>\r\n" + "		</a></li>"; */
		var str = "<li><a href=\"/\" target=\"_blank\"> <i><img\r\n" + 
		"					src=\"images/1.jpg\"></i>\r\n"
				+ "				<h2>安静地做一个爱设计的女子</h2> <span>学无止境</span>\r\n"
				+ "		</a></li>";
		return str;
	}

	/**
	 * 首页中间图片文字1
	 */
	function newsBox(url, imgSrc, blogTitle, blogClassify) {
		var str = "<li><i><a href=\"/\"><img src=\"images/1.jpg\"></a></i>\r\n"
				+ "				<h3>\r\n"
				+ "					<a href=\"/\">html5个人博客模板《simple》</a>\r\n"
				+ "				</h3></li>";
		return str;
	}

	/**
	 * 首页中间图片文字2
	 */
	function pics(url, imgSrc, blogTitle, blogClassify) {
		var str = "<li><i><a href=\"/news/life/2018-06-17/873.html\"\r\n" + 
		"					target=\"_blank\"><img src=\"images/p1.jpg\"></a></i><span>安静地做一个爱设计的女子</span></li>";
		return str;
	}
</script>


<#include "/showBlog/common/foot.ftl">
