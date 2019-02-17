<#include "/showBlog/common/start.ftl">
<link href="/showBlog/css/base.css" rel="stylesheet">
<link href="/showBlog/css/about.css" rel="stylesheet">
<link href="/showBlog/css/m.css" rel="stylesheet">
<script src="/showBlog/js/jquery.min.js"></script>
<script src="/showBlog/js/ab.js"></script>
<#include "/showBlog/common/header.ftl">

<article>
	<!-- <div class="photowall">
		<ul class="wall_a">
			<li id="addPhotoWallLi" hidden></li>
		</ul>
	</div> -->
	<div class="abox">
		<h2>博主简介</h2>
		<div class="biji-content" id="content">
			<p id="userNickAndSex"></p>
			<p></p>
			<p id="userIntroduce"></p>
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
					<p>
						姓名：<span id="userNick"></span>
					</p>
					<p>
						职业：<span id="userProfession"></span>
					</p>
					<p>
						邮箱：<span id="userEmail"></span>
					</p>
					<p>
						手机号：<span id="userMobile"></span>
					</p>
					<p>个人微信：</p>
					<p>
						<img id="userWeChat" src="" alt="用户微信"
							style="width: 140px; height: 140px;">
					</p>
				</div>
			</div>
			<div class="navitem" name="top2">
				<div class="content" id="userSkill">
				</div>
			</div>
		</div>
	</div>
</article>

<script>
	$(function() {
		//用户信息
		loadUserInfo(loginUserId, function(result) {
			if (result.code == 200) {
				$("#userNickAndSex").html(result.data.userNick);
				$("#userIntroduce").html(result.data.userIntroduce);

				// 基本信息
				$("#userNick").html(result.data.userNick);
				$("#userProfession").html(result.data.userProfession);
				$("#userEmail").html(result.data.userEmail);
				$("#userMobile").html(result.data.userMobile);

				// 工作技能
				$("#userSkill").html(result.data.userSkill);
				$("#userWeChat")
						.attr(
								"src",
								"/attachment/getFileById?uuid="
										+ result.data.userWeChat);
			}
		});

		/* $("#addPhotoWallLi").before(photoWallStyle1());
		$("#addPhotoWallLi").before(photoWallStyle2());
		$("#addPhotoWallLi").before(photoWallStyle1());
		$("#addPhotoWallLi").before(photoWallStyle2()); */
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
