<aside class="r_box">
	<div class="about_me">
		<h2>博主简介</h2>
		<ul>
			<!-- <i><img src="images/4.jpg"></i> -->
			<p>
				<b id="userNick"></b>，<span id="userIntroduce"></span>
			</p>
		</ul>
	</div>
	<div class="fenlei">
		<h2>文章分类</h2>
		<ul id="blogClassfiyUl">
		</ul>
	</div>
	<div class="tuijian" style="display: none;">
		<h2 id="tab">
			<a href="#" class="current">点击排行</a><a href="#">站长推荐</a>
		</h2>
		<div id="content">
			<ul style="display: block;">
				<li><a href="/">第二届 优秀个人博客模板比赛参选活动</a></li>
				<li><a href="/">【活动作品】柠檬绿兔小白个人博客模板</a></li>
				<li><a href="/">帝国cms 列表页调用子栏目，没有则不显示栏目名称</a></li>
				<li><a href="/">2014年度优秀个人博客评选活动</a></li>
				<li><a href="/">你是什么人便会遇上什么人</a></li>
				<li><a href="/">帝国cms 列表页调用子栏目，没有则不显示栏目名称</a></li>
				<li><a href="/">第二届 优秀个人博客模板比赛参选活动</a></li>
				<li><a href="/">个人博客模板《绅士》后台管理</a></li>
			</ul>
			<ul>
				<li><a href="/">个人博客，我为什么要用帝国cms？</a></li>
				<li><a href="/">D设计师博客-一个热爱生活的设计师</a></li>
				<li><a href="/">东轩博客，我看到了你的坚持！</a></li>
				<li><a href="/">程序员创业，就得“豁得出去”！</a></li>
				<li><a href="/">张建华 一个90后年轻站长！我们是对手亦是朋友！</a></li>
				<li><a href="/">《奋斗电商》看知名微商如何做博客引流？</a></li>
				<li><a href="/">《寻之旅》一个关于旅游，游记的个人博客</a></li>
				<li><a href="/">【匆匆那些年】总结个人博客经历的这四年</a></li>
			</ul>
		</div>
	</div>
	<div class="guanzhu">
		<h2>个人微信</h2>
		<ul>
			<img id="userWeChat" src="" alt="个人微信"
				style="width: 280px; height: 280px;">
		</ul>
	</div>

</aside>
<script>
	$(function() {
		//用户信息
		loadUserInfo(loginUserId, function(result) {
			if (result.code == 200) {
				// 博主简介
				$("#userNick").html(result.data.userNick);
				$("#userIntroduce").html(result.data.userIntroduce);

				// 个人微信
				$("#userWeChat").attr(
						"src",
						"/attachment/getFileById?uuid="
								+ result.data.userWeChat);
			}
		});

		// 查询博客分类的数量
		slectBlogClassfiyNums();
	});

	/**
	 * 查询博客分类的数量
	 */
	function slectBlogClassfiyNums() {
		$
				.ajax({
					url : "/blogManager/slectBlogClassfiyNums",
					dataType : "json",
					success : function(result) {
						if (result.code == 200) {
							var str = "";
							$
									.each(
											result.data,
											function(index, element) {
												str += "<li><a href=\"/common/html/showBlog/list?blogClassfiy="
														+ element.uuid
														+ "&blogClassfiyName="
														+ element.blogClassifyName
														+ "\">"
														+ element.blogClassifyName
														+ "（"
														+ element.nums
														+ "）</a></li>";
											});
							$("#blogClassfiyUl").append(str);
						}
					}
				})
	}
</script>