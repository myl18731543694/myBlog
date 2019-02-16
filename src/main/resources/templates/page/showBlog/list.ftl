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
	var keyboard = "${keyboard!""}";

	$(function() {
		if (keyboard != "") {
			$("#keyboardA").html("搜索关键字：" + keyboard);
			$("#pageContents").show();
		}
		getBlogList(1, keyboard);
	});

	/**
	 * 获取博客列表
	 */
	function getBlogList(currentPage, search) {
		$.ajax({
			url : "/blogManager/getBlogList",
			data : {
				pageSize : 10, //页面大小
				currentPage : currentPage, //页码
				search : search
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
					var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;

					if ((index % 4) == 1) {
						$("#addBlogDiv").before(
								blogStyle1(url, blogTitle, blogIntro,
										createTime, blogImage));
					} else if ((index % 4) == 2) {
						$("#addBlogDiv").before(
								blogStyle2(url, blogTitle, blogIntro,
										createTime));
					} else if ((index % 4) == 3) {
						$("#addBlogDiv").before(
								blogStyle3(url, blogTitle, blogIntro,
										createTime, blogImage));
					} else if ((index % 4) == 0) {
						$("#addBlogDiv").before(
								blogStyle4(url, blogTitle, blogIntro,
										createTime, blogImage));
					} else {
						alert(index % 4);
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
