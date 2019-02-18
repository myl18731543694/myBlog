-<#include "/showBlog/commonPage/start.ftl">
<link href="/showBlog/css/base.css" rel="stylesheet">
<link href="/showBlog/css/time.css" rel="stylesheet">
<link href="/showBlog/css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/scrollReveal.js"></script>
<script src="/showBlog/js/time.js"></script>
<#include "/showBlog/commonPage/header.ftl">

<article>
	<div class="timebox">
		<ul id="blogListUl" name="blogListUl">
			<!-- <li><span>2018-06-17</span><i><a href="/" target="_blank">安静地</a></i></li> -->
		</ul>
	</div>

</article>

<script>
	var currentPage = 0;

	/**
	 * 加载博客列表
	 */
	function loadBlogList(currentPageItem) {
		currentPage = currentPageItem + 1;
		console.log("开始加载第" + currentPage + "页");
		// 获取博客内容
		getBlogList(currentPage, "", "");
	}

	$(function() {
		loadBlogList(currentPage);
	});

	/**
	 * 获取博客列表
	 */
	function getBlogList(currentPage, search, blogClassfiy) {
		$.ajax({
			url : "/blogManager/getBlogList",
			data : {
				pageSize : 20, //页面大小
				currentPage : currentPage, //页码
				search : search,
				blogClassfiy : blogClassfiy
			},
			dataType : "json",
			success : function(result) {
				var showStr = "";
				// 判断是不是最后一行数据
				var isLast = true;

				$.each(result.rows,
						function(index, element) {
							isLast = false;
							var url = "/common/html/showBlog/blogDetail?uuid="
									+ element.uuid;
							var createTime = (element.createTime + "")
									.substring(0, 10);
							var blogTitle = element.blogTitle;
							showStr += "<li style=\"height: 40px;\"><span>"
									+ createTime
									+ "</span><i><a href=\""+url+"\">"
									+ blogTitle + "</a></i></li>";
						});

				$("#blogListUl").append(showStr);

				// 判断是不是要移除下拉到底事件
				if (isLast) {
					$(window).unbind("scroll");
				}
			}
		})
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
