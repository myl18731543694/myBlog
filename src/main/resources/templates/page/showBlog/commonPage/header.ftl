<script src="/commonStatic/dynamicLoad/dynamicLoad.js"></script>
<header class="header-navigation" id="header">
	<nav>
		<div class="logo">
			<a id="userName" href="/common/html/websiteManagement/index"
				target="_blank">孟轶龙的博客</a>
		</div>
		<h2 id="mnavh">
			<span class="navicon"></span>
		</h2>
		<ul id="starlist">
			<li><a href="/common/html/showBlog/index">网站首页</a></li>
			<li><a href="/common/html/showBlog/about">关于我</a></li>
			<li><a href="/common/html/showBlog/list">我的博客</a></li>
			<li><a href="/common/html/showBlog/time">时间轴</a></li>
		</ul>
		<div class="searchbox">
			<div id="search_bar" class="search_bar">
				<form id="searchform" action="/common/html/showBlog/list"
					method="post" name="searchform">
					<input class="input" placeholder="想搜点什么呢.." type="text"
						name="keyboard" id="keyboard"> <input type="hidden"
						name="show" value="title" /> <input type="hidden" name="tempid"
						value="1" /> <input type="hidden" name="tbname" value="news">
					<input type="hidden" name="Submit" value="搜索" />
					<p class="search_ico">
						<span></span>
					</p>
				</form>
			</div>
		</div>
	</nav>
</header>
<script>
	// 用户id
	var loginUserId = "0de5f862-7e86-4243-81e8-5210d52f18d9";

	/**
	 * 加载指定用户信息
	 */
	function loadUserInfo(userUuid, compelete) {
		$.ajax({
			url : "/user/getUserInfo",
			data : {
				uuid : userUuid
			},
			dataType : "json",
			success : function(result) {
				compelete(result);
			}
		})
	}
</script>
