-<#include "/showBlog/common/start.ftl">
<link href="/showBlog/css/base.css" rel="stylesheet">
<link href="/showBlog/css/time.css" rel="stylesheet">
<link href="/showBlog/css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/scrollReveal.js"></script>
<script src="/showBlog/js/time.js"></script>
<#include "/showBlog/common/header.ftl">

<article>
	<div class="timebox">
		<ul id="blogListUl" name="blogListUl">
			<!-- <li><span>2018-06-17</span><i><a href="/" target="_blank">安静地</a></i></li> -->
		</ul>
	</div>
	
</article>

<script>
	$(function() {
		getBlogList(1, "");
	});

	/**
	 * 获取博客列表
	 */
	function getBlogList(currentPage, search) {
		$
				.ajax({
					url : "/blogManager/getBlogList",
					data : {
						pageSize : 10, //页面大小
						currentPage : currentPage, //页码
						search : search
					},
					dataType : "json",
					success : function(result) {
						var showStr = "";
						$
								.each(
										result.rows,
										function(index, element) {
											var url = "/common/html/showBlog/blogDetail?uuid="
													+ element.uuid;
											var createTime = (element.createTime + "")
													.substring(0, 10);
											var blogTitle = element.blogTitle;
											showStr += "<li><span>"
													+ createTime
													+ "</span><i><a href=\""+url+"\">"
													+ blogTitle
													+ "</a></i></li>";
										});

						$("#blogListUl").html(showStr);
					}
				})
	}
</script>


<#include "/showBlog/common/foot.ftl">
