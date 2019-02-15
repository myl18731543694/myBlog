<#include "/showBlog/common/start.ftl">

<article>
	<main>
	<div class="infosbox">
		<div class="newsview">
			<h3 id="blogTitle" class="news_title">博客标题！</h3>
			<div class="bloginfo">
				<ul>
					<li class="author">作者：<a href="/">杨青</a></li>
					<li class="timer">时间：2018-5-13</li>
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
	<aside class="r_box">
		<div class="fenlei">
			<h2>文章分类</h2>
			<ul>
				<li><a href="/">学无止境（33）</a></li>
				<li><a href="/">日记（19）</a></li>
				<li><a href="/">慢生活（520）</a></li>
				<li><a href="/">美文欣赏（40）</a></li>
			</ul>
		</div>
		<div class="tuijian">
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
			<h2>关注我</h2>
			<ul>
				<img src="/showBlog/images/wx.jpg">
			</ul>
		</div>

	</aside>
</article>

<script>
	var blogId = "ca9f063b-40d9-4f26-8ae8-69522ff22409";

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
