<!doctype html>
<html lang="ch">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="博客后台管理">
<meta name="keywords" content="博客后台管理">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<title>博客后台管理</title>
<script src="/websiteManagement/js/jquery.min.js"></script>
<script src="/websiteManagement/js/bootstrap.min.js"></script>
<link href="/websiteManagement/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/websiteManagement/css/common.css" />
<link rel="stylesheet" type="text/css"
	href="/websiteManagement/css/slide.css" />
<link rel="stylesheet" type="text/css"
	href="/websiteManagement/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="/websiteManagement/css/flat-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="/websiteManagement/css/jquery.nouislider.css">
</head>
<script>
	$(function() {
		// 获取用户登录信息
		$.ajax({
			url : "/loginRegister/getLoginUserInfo",
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					$("#userName").html(result.data.userName);
					// $("#showUserEmail").html("邮箱信息");
				}
			}
		})

		getLeftMeun();
	})

	/**
	 * 加载详情网页
	 */
	function loadPage(urlStr) {
		$("#rightContent").empty();
		$.ajax({
			url : urlStr,
			dataType : "html",
			success : function(result) {
				$("#rightContent").empty();
				$("#rightContent").html(result);
			}
		})
	}

	/**
	 * 获取左侧菜单
	 */
	function getLeftMeun() {
		$.ajax({
			url : "/menuManagement/getAllMenu",
			dataType : "json",
			success : function(result) {
				if (result.code == 200) {
					$.each(result.data, function(index, element) {
						var str;
						if (element.parentMenu == null
								|| element.parentMenu == "") {
							str = getLeftMeunTilteStr(element.uuid,
									element.menuName);
							$("#personInfor").after(str)
						} else {
							str = getLeftMeunItemStr(element.uuid,
									element.menuName, element.menuUrl);
							$("#" + element.parentMenu).after(str)
						}

						// 加载样式
						loadStyle();
					});
				}
			}
		})
	}

	/**
	 * 获取meun-title
	 */
	function getLeftMeunTilteStr(uuid, menuName) {
		var str = "<div class=\"meun-title\" id = \""+uuid+"\">" + menuName
				+ "</div>";
		return str;
	}

	/**
	 * 获取meun-item
	 */
	function getLeftMeunItemStr(uuid, menuName, menuUrl) {
		var str = "<div id = \"" + uuid + "\" onclick=\"loadPage('" + menuUrl
				+ "')\" "
				+ "class=\"meun-item\" href=\"#sour\" aria-controls=\"sour\""
				+ "role=\"tab\" data-toggle=\"tab\">"
				+ "<img src=\"/websiteManagement/images/icon_source.png\">"
				+ menuName
		"</div>";
		return str;
	}
	/**
	 * 加载显示样式
	 */
	function loadStyle() {
		$(".meun-item").click(function() {
			$(".meun-item").removeClass("meun-item-active");
			$(this).addClass("meun-item-active");
			var itmeObj = $(".meun-item").find("img");
			itmeObj.each(function() {
				var items = $(this).attr("src");
				items = items.replace("_grey.png", ".png");
				items = items.replace(".png", "_grey.png")
				$(this).attr("src", items);
			});
			var attrObj = $(this).find("img").attr("src");
			;
			attrObj = attrObj.replace("_grey.png", ".png");
			$(this).find("img").attr("src", attrObj);
		});
		$("#topAD").click(function() {
			$("#topA").toggleClass(" glyphicon-triangle-right");
			$("#topA").toggleClass(" glyphicon-triangle-bottom");
		});
		$("#topBD").click(function() {
			$("#topB").toggleClass(" glyphicon-triangle-right");
			$("#topB").toggleClass(" glyphicon-triangle-bottom");
		});
		$("#topCD").click(function() {
			$("#topC").toggleClass(" glyphicon-triangle-right");
			$("#topC").toggleClass(" glyphicon-triangle-bottom");
		});
		$(".toggle-btn").click(function() {
			$("#leftMeun").toggleClass("show");
			$("#rightContent").toggleClass("pd0px");
		})
	}
</script>
<body>
	<div id="wrap">
		<!-- 左侧菜单栏目块 -->
		<div class="leftMeun" id="leftMeun">
			<div id="logoDiv">
				<p id="logoP">
					<img id="logo" alt="博客后台管理"
						src="/websiteManagement/images/logo.png"><span>博客后台管理</span>
				</p>
			</div>
			<div id="personInfor">
				<p id="userName"></p>
				<p>
					<!-- <span id="showUserEmail"></span> -->
				</p>
				<p>
					<a href="/loginRegister/logout">退出登录</a>
				</p>
			</div>
			<!-- <div class="meun-title">账号管理</div>
			<div onclick="loadPage('/menuManagement/menuManagement')"
				class="meun-item meun-item-active" href="#sour" aria-controls="sour"
				role="tab" data-toggle="tab">
				<img src="/websiteManagement/images/icon_source.png">菜单管理
			</div> -->
		</div>
		<!-- 右侧具体内容栏目 -->
		<div id="rightContent"></div>
	</div>
	<script src="/websiteManagement/js/jquery.nouislider.js"></script>

</body>

</html>