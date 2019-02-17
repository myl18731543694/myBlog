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
	<main>
	<div class="place" id="pageContents" style="display: none;">
		<a id="keyboardA">搜索关键字：</a>
	</div>


	<div id="addBlogDiv"></div>
	</main>

	<#include "/showBlog/common/countRight.ftl">

</article>

<script>
	// 搜索关键字
	var keyboard = "${keyboard!""}";
	// 博客分类
	var blogClassfiy = "${blogClassfiy!""}";
	// 博客分类名称
	var blogClassfiyName = "${blogClassfiyName!""}";

	$(function() {
		if (keyboard != "") {
			$("#keyboardA").html("搜索关键字：" + keyboard);
			$("#pageContents").show();
		} else if (blogClassfiy != ""){
			$("#keyboardA").html("博客分类：" + blogClassfiyName);
			$("#pageContents").show();
		}
		getBlogList(1, keyboard, blogClassfiy);
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
				$.each(result.rows, function(index, element) {
					var url = "/common/html/showBlog/blogDetail?uuid="
							+ element.uuid;
					var blogTitle = element.blogTitle;
					var blogIntro = element.blogIntro;
					var createTime = element.createTime;

					if (element.blogImage == null
							|| element.blogImage == "undefined"
							|| element.blogImage == "") {
						// 没有图片的文章
						$("#addBlogDiv").before(
								blogStyle2(url, blogTitle, blogIntro,
										createTime));
					} else {
						var blogImage = "/attachment/getFileById?uuid="
								+ element.blogImage;

						if ((index % 2) == 1) {
							$("#addBlogDiv").before(
									blogStyle1(url, blogTitle, blogIntro,
											createTime, blogImage));
						} else if ((index % 2) == 0) {
							$("#addBlogDiv").before(
									blogStyle4(url, blogTitle, blogIntro,
											createTime, blogImage));
						}
					}

				});

			}
		})
	}

	/* $(function(){
		$("#addBlogDiv").before(blogStyle1());
		$("#addBlogDiv").before(blogStyle2());
		$("#addBlogDiv").before(blogStyle3());
		$("#addBlogDiv").before(blogStyle4());
	}); */
</script>

<#include "/showBlog/common/foot.ftl">
