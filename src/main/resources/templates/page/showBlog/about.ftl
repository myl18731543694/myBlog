<#include "/showBlog/common/start.ftl">
<link href="/showBlog/css/base.css" rel="stylesheet">
<link href="/showBlog/css/about.css" rel="stylesheet">
<link href="/showBlog/css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/ab.js"></script>
<#include "/showBlog/common/header.ftl">

<article>
	<div class="photowall">
		<ul class="wall_a">
			<li id="addPhotoWallLi" hidden></li>
		</ul>
	</div>
	<div class="abox">
		<h2>博主简介</h2>
		<div class="biji-content" id="content">
			孟轶龙，男。
			<p></p>
			<p>一个正在走向大神路上的菜鸡。</p>
		</div>
		<div class="navlist">
			<ul>
				<li class="navcurrent"><a href="#top1">基本信息</a></li>
				<li><a href="#top2">工作技能</a></li>
			</ul>
		</div>
		<div class="navtab">
			<div class="navitem" style="display: block;" name="top1">
				<div class="content">
					<p>网名：dancesmile | 杨青</p>
					<p>职业：Web前端设计师、网页设计</p>
					<p>邮箱：dancesmiling@qq.com</p>
					<p>个人微信：</p>
					<p>
						<img src="images/grwx.png">
					</p>
				</div>
			</div>
			<div class="navitem" name="top2">
				<div class="content">
					<p class="ab_t">工作技能：</p>
					<p>1、web前端页面的开发</p>
					<p>2、根据产品需求，配合后端开发人员协作实现前端页面效果和功能</p>
					<p>3、能够进行手机端和Pc端Html页面制作</p>
					<p>4、熟练使用html5，CSS3，javascript，熟悉页面架构和布局</p>
					<p>5、熟练使用Javascript框架</p>
				</div>
			</div>
		</div>
	</div>
</article>

<script>
	$(function() {
		$("#addPhotoWallLi").before(photoWallStyle1());
		$("#addPhotoWallLi").before(photoWallStyle2());
		$("#addPhotoWallLi").before(photoWallStyle1());
		$("#addPhotoWallLi").before(photoWallStyle2());
		$("#addPhotoWallLi").before(photoWallStyle1());
		$("#addPhotoWallLi").before(photoWallStyle2());
		$("#addPhotoWallLi").before(photoWallStyle1());
		$("#addPhotoWallLi").before(photoWallStyle2());
		
	});

	/**
	 * 照片墙 图片下隐藏文字风格
	 */
	function photoWallStyle1() {
		var str = "<li><a href=\"/\"><img src=\"images/1.jpg\">\r\n"
				+ "					<figcaption>\r\n"
				+ "						<h2>不再因为别人过得好而焦虑，在没有人看得到你的时候依旧能保持节奏</h2>\r\n"
				+ "					</figcaption> </a>" + "			</li>";
		return str;
	}

	/**
	 * 照片墙 纯文字风格
	 */
	function photoWallStyle2() {
		var str = "<li>\r\n"
				+ "				<p class=\"text_b\">\r\n"
				+ "					<a href=\"/\">逃避自己的人，最终只能导致自己世界的崩塌，而变得越来越没有安全感。</a>\r\n"
				+ "				</p>\r\n" + "			</li>";
		return str;
	}
</script>

<#include "/showBlog/common/foot.ftl">
