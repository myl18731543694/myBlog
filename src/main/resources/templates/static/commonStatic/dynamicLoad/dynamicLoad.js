//获取页面顶部被卷起来的高度
function scrollTop() {
	return Math.max(
	// chrome
	document.body.scrollTop,
	// firefox/IE
	document.documentElement.scrollTop);
}

// 获取页面文档的总高度
function documentHeight() {
	// 现代浏览器（IE9+和其他浏览器）和IE8的document.body.scrollHeight和document.documentElement.scrollHeight都可以
	return Math.max(document.body.scrollHeight,
			document.documentElement.scrollHeight);
}

function windowHeight() {
	return (document.compatMode == "CSS1Compat") ? document.documentElement.clientHeight
			: document.body.clientHeight;
}

//// 图片查询中正对浏览器主页面滚动事件处理(瀑布流)。只能使用window方式绑定，使用document方式不起作用
//$(window)
//		.on(
//				"scroll",
//				function() {
//					if (scrollTop() + windowHeight() >= (documentHeight() - 50/* 滚动响应区域高度取50px */)) {
//						loadBlogList(currentPage);
//					}
//				});