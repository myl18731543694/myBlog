<#include "/showBlog/commonPage/start.ftl">
<link href="/showBlog/css/base.css" rel="stylesheet">
<link href="/showBlog/css/index.css" rel="stylesheet">
<link href="/showBlog/css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/jquery.easyfader.min.js"></script>
<script src="/showBlog/js/hc-sticky.js"></script>
<script src="/showBlog/js/comm.js"></script>
<script src="/showBlog/js/scrollReveal.js"></script>

<script src="/showBlog/commonStatic/blogStyle.js"></script>
<#include "/showBlog/commonPage/header.ftl">

<article>
	<!--banner begin-->
	<div class="banner">
		<div id="banner" class="fader">
			<li id="slideLi0" class="slide"><a href="/"><img
					src=""><span class="imginfo">个人博客!</span></a></li>
			<li id="slideLi1" class="slide"><a href="/"><img
					src=""><span class="imginfo">个人博客</span></a></li>
			<li id="slideLi2" class="slide"><a href="/"><img
					src=""><span class="imginfo">个人博客！</span></a></li>
			<li id="slideLi3" class="slide"><a href="/"><img
					src=""><span class="imginfo">个人博客！</span></a></li>
			<div class="fader_controls" id="slideShowDiv">
				<div class="page prev" data-target="prev">&lsaquo;</div>
				<div class="page next" data-target="next">&rsaquo;</div>
				<ul class="pager_list">
				</ul>
			</div>
		</div>
	</div>
	<!--banner end-->
	<div id="topRightDiv" class="toppic"></div>
	<main> <!-- 首页中间图片样式1 -->
	<div class="news_box">
		<ul id="addNewsBoxUl">
		</ul>
	</div>

	<!-- 首页中间图片样式2 --> <!-- <div class="pics">
		<ul id="addPicsUl">
		</ul>
	</div> -->

	<div class="blogtab">
		<ul id="blogtab">
			<li class="current">最新文章</li>
			<!-- <li><a href="list.html">心得笔记</a></li> -->
		</ul>

		<!-- 添加博客用的div -->
		<div id="addBlogDiv" hidden></div>
	</div>
	</main>

	<#include "/showBlog/commonPage/countRight.ftl">

</article>

<script>
	var currentPage = 1;

	$(function() {
		// 获取博客内容
		getIndexBlogList();

		// 获取博客内容
		loadBlogList(currentPage);
	})

	/**
	 * 首页右边的图片文字
	 */
	function topRightStyle(element) {
		var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
		var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;
		var blogClassfiy = element.blogClassfiy;
		var blogClassifyName = element.blogClassifyName;

		var str = "<li><a href=\""+url+"\"> <i><img\r\n" + 
		"					src=\""+blogImage+"\"></i>\r\n"
				+ "				<h2>"
				+ element.blogTitle
				+ "</h2> <span>"
				+ blogClassifyName + "</span>\r\n" + "		</a></li>";
		return str;
	}

	/**
	 * 首页中间图片文字1
	 */
	function newsBox(element) {
		var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
		var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;

		var str = "<li><i><a href=\""+url+"\"><img src=\""+blogImage+"\"></a></i>\r\n"
				+ "				<h3>\r\n"
				+ "					<a href=\""+url+"\">"
				+ element.blogTitle + "</a>\r\n" + "				</h3></li>";
		return str;
	}

	/**
	 * 首页中间图片文字2
	 */
	function pics() {
		var str = "<li><i><a href=\"/news/life/2018-06-17/873.html\"\r\n" + 
		"					target=\"_blank\"><img src=\"images/p1.jpg\"></a></i><span>安静地做一个爱设计的女子</span></li>";
		return str;
	}

	/**
	 * 获取首页博客列表
	 */
	function getIndexBlogList() {
		$.ajax({
			url : "/blogManager/getIndexBlogList",
			dataType : "json",
			success : function(result) {
				$.each(result.rows, function(index, element) {
					if (index < 4) {
						slideShow(index, element);
					} else if (index >= 4 && index < 6) {
						$("#topRightDiv").append(topRightStyle(element));
					} else {
						$("#addNewsBoxUl").append(newsBox(element));
					}

				});

			}
		})
	}

	/**
	 * 首页轮播图
	 */
	function slideShow(id, element) {
		var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
		var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;
		// 博客详情页面
		$("#slideLi" + id).find("a:eq(0)").attr("href", url);
		// 博客image
		$("#slideLi" + id).find("img:eq(0)").attr("src", blogImage);
		// 博客titile
		$("#slideLi" + id).find("span:eq(0)").html(element.blogTitle);
	}

	/**
	 * 获取博客列表
	 */
	function getBlogList(currentPage, search, blogClassfiy) {
		$.ajax({
			url : "/blogManager/getBlogList",
			data : {
				pageSize : 10, //页面大小
				currentPage : currentPage, //页码
				search : search,
				blogClassfiy : blogClassfiy
			},
			dataType : "json",
			success : function(result) {
				var showStr = "";
				// 判断是不是最后一行数据
				var isLast = true;
				$.each(result.rows, function(index, element) {
					isLast = false;
					if (element.blogImage == null
							|| element.blogImage == "undefined"
							|| element.blogImage == "") {
						// 没有图片的文章
						$("#addBlogDiv").before(blogStyle2(element));
					} else {
						if ((index % 2) == 1) {
							$("#addBlogDiv").before(blogStyle1(element));
						} else if ((index % 2) == 0) {
							$("#addBlogDiv").before(blogStyle4(element));
						}
					}

				});
				// 判断是不是要移除下拉到底事件
				if (isLast) {
					$(window).unbind("scroll");
				}

			}
		})
	}

	/**
	 * 加载博客列表
	 */
	function loadBlogList(currentPageItem) {
		currentPage = currentPageItem + 1;
		console.log("开始加载第" + currentPage + "页");
		// 获取博客内容
		getBlogList(currentPage, "", "");
	}

	//图片查询中正对浏览器主页面滚动事件处理(瀑布流)。只能使用window方式绑定，使用document方式不起作用
	$(window)
			.on(
					"scroll",
					function() {
						if (scrollTop() + windowHeight() >= (documentHeight() - 50/*滚动响应区域高度取50px*/)) {
							loadBlogList(currentPage);
						}
					});
</script>


<#include "/showBlog/commonPage/foot.ftl">
