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
	<main>
	<div class="place">
		<a href="https://my.oschina.net" target="_blank">此列表文章引自：https://my.oschina.net</a>
	</div>


	<div id="addBlogDiv"></div>
	</main>

	<#include "/showBlog/commonPage/countRight.ftl">

</article>

<script>
	var currentPage = 0;

	$(function() {
		loadBlogList(currentPage);
	});

	/**
	 * 获取博客列表
	 */
	function getBlogList(currentPage) {
		$.ajax({
			url : "/OSChinaBlog/getBlogList",
			data : {
				page : currentPage
			},
			dataType : "json",
			success : function(result) {
				var showStr = "";
				// 判断是不是最后一行数据
				var isLast = true;
				$.each(result.data, function(index, element) {
					isLast = false;
					if ((index % 2) == 1) {
						$("#addBlogDiv").before(OSChainaBlogStyle1(element));
					} else if ((index % 2) == 0) {
						$("#addBlogDiv").before(OSChainaBlogStyle4(element));
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
		getBlogList(currentPage);
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

	/**
	 * 只有一个小图片的样式
	 */
	function OSChainaBlogStyle1(element) {
		var blogImage = element.blogImgUrl;
		var blogTitle = element.blogTitle;
		var blogIntro = element.blogIntro;
		var userNick = "小小编辑";
		var blogCreateTime = element.blogCreateTime;
		var blogReadNumber = element.blogReadNumber;

		var url = "/common/html/showBlog/OSChinaBlogDetail?blogDetailsUrl="
				+ element.blogDetails + "&blogTitle=" + blogTitle
				+ "&blogCreateTime=" + blogCreateTime + "&blogReadNumber="
				+ blogReadNumber;

		var str = "<div class=\"blogs\" data-scroll-reveal=\"enter bottom over 1s\">\r\n"
				+ "			<h3 class=\"blogtitle\">\r\n"
				+ "				<a href=\""
				+ url
				+ "\">"
				+ blogTitle
				+ "</a>\r\n"
				+ "			</h3>\r\n"
				+ "			<span class=\"blogpic\"><a href=\""
				+ url
				+ "\" title=\"\"><img\r\n"
				+ "					src=\""
				+ blogImage
				+ "\""
				+ " alt=\"\"></a></span>\r\n"
				+ "			<p class=\"blogtext\">"
				+ blogIntro
				+ "</p>\r\n"
				+ "			<div class=\"bloginfo\">\r\n"
				+ "				<ul>\r\n"
				+ "					<li class=\"author\"><a href=\"/common/html/showBlog/about\">"
				+ userNick
				+ "</a></li>\r\n"
				+ "					<li class=\"lmname\"><a href=\""
				+ "\">"
				+ "</a></li>\r\n"
				+ "					<li class=\"timer\">"
				+ blogCreateTime
				+ "</li>\r\n"
				+ " <li class=\"view\"><span>"
				+ blogReadNumber
				+ "</span>已阅读</li>\r\n"
				+ "				</ul>\r\n"
				+ "			</div>\r\n" + "		</div>";
		return str;
	}

	/**
	 * 一个大图片的样式
	 */
	function OSChainaBlogStyle4(element) {
		var blogImage = element.blogImgUrl;
		var blogTitle = element.blogTitle;
		var blogIntro = element.blogIntro;
		var userNick = "小小编辑";
		var blogCreateTime = element.blogCreateTime;
		var blogReadNumber = element.blogReadNumber;
		
		var url = "/common/html/showBlog/OSChinaBlogDetail?blogDetailsUrl="
			+ element.blogDetails + "&blogTitle=" + blogTitle
			+ "&blogCreateTime=" + blogCreateTime + "&blogReadNumber="
			+ blogReadNumber;

		// var lazyLoadImage = " data-original=\"" + blogImage + "\" ";

		var str = "<div class=\"blogs\" data-scroll-reveal=\"enter bottom over 1s\">\r\n"
				+ "		<h3 class=\"blogtitle\">\r\n"
				+ "			<a href=\""
				+ url
				+ "\">"
				+ blogTitle
				+ "</a>\r\n"
				+ "		</h3>\r\n"
				+ "		<span class=\"bigpic\"><a href=\""
				+ url
				+ "\" title=\"\"><img\r\n"
				// + lazyLoadImage
				+ " src=\""
				+ blogImage
				+ "\""
				+ " alt=\"\"></a></span>\r\n"
				+ "		<p class=\"blogtext\">"
				+ blogIntro
				+ "</p>\r\n"
				+ "		<div class=\"bloginfo\">\r\n"
				+ "			<ul>\r\n"
				+ "				<li class=\"author\"><a href=\"/common/html/showBlog/about\">"
				+ userNick
				+ "</a></li>\r\n"
				+ "				<li class=\"lmname\"><a href=\""
				+ "\">"
				+ "</a></li>\r\n"
				+ "				<li class=\"timer\">"
				+ blogCreateTime
				+ "</li>\r\n"
				+ " <li class=\"view\"><span>"
				+ blogReadNumber
				+ "</span>已阅读</li>\r\n"
				+ "			</ul>\r\n"
				+ "		</div>\r\n"
				+ "	</div>";
		return str;
	}
</script>

<#include "/showBlog/commonPage/foot.ftl">
