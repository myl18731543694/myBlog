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
	<div class="place" id="pageContents" style="display: none;">
		<a id="keyboardA">搜索关键字：</a>
	</div>


	<div id="addBlogDiv"></div>
	</main>

	<#include "/showBlog/commonPage/countRight.ftl">

</article>

<script>
	var currentPage = 0;

	// 搜索关键字
	var keyboard = '${keyboard!""}';
	// 博客分类
	var blogClassfiy = '${blogClassfiy!""}';
	// 博客分类名称
	var blogClassfiyName = '${blogClassfiyName!""}';

	$(function() {
		if (keyboard != "") {
			$("#keyboardA").html("搜索关键字：" + keyboard);
			$("#pageContents").show();
		} else if (blogClassfiy != "") {
			$("#keyboardA").html("博客分类：" + blogClassfiyName);
			$("#pageContents").show();
		}
		loadBlogList(currentPage);
	});

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
				if (isLast){
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
		getBlogList(currentPage, keyboard, blogClassfiy);
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
