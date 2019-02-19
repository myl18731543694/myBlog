/**
 * 只有一个小图片的样式
 */
function blogStyle1(element) {
	var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
	var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;
	var blogClassfiy = element.blogClassfiy;
	var blogClassifyName = element.blogClassifyName;
	var blogClassfiyUrl = "/common/html/showBlog/list?blogClassfiy="
			+ blogClassfiy + "&blogClassfiyName=" + blogClassifyName;

	// var lazyLoadImage = " data-original=\""+blogImage+"\" ";

	var str = "<div class=\"blogs\" data-scroll-reveal=\"enter bottom over 1s\">\r\n"
			+ "			<h3 class=\"blogtitle\">\r\n" + "				<a href=\""
			+ url
			+ "\">"
			+ element.blogTitle
			+ "</a>\r\n"
			+ "			</h3>\r\n"
			+ "			<span class=\"blogpic\"><a href=\""
			+ url
			+ "\" title=\"\"><img\r\n"
			// + lazyLoadImage
			+ "					src=\""
			+ blogImage
			+ "\""
			+ " alt=\"\"></a></span>\r\n"
			+ "			<p class=\"blogtext\">"
			+ element.blogIntro
			+ "</p>\r\n"
			+ "			<div class=\"bloginfo\">\r\n"
			+ "				<ul>\r\n"
			+ "					<li class=\"author\"><a href=\"/common/html/showBlog/about\">"
			+ element.userNick
			+ "</a></li>\r\n"
			+ "					<li class=\"lmname\"><a href=\""
			+ blogClassfiyUrl
			+ "\">"
			+ blogClassifyName
			+ "</a></li>\r\n"
			+ "					<li class=\"timer\">"
			+ element.createTime + "</li>\r\n"
			// + " <li class=\"view\"><span>34567</span>已阅读</li>\r\n"
			// + " <li class=\"like\">9999</li>\r\n"
			+ "				</ul>\r\n" + "			</div>\r\n" + "		</div>";
	return str;
}
/**
 * 没有图片的样式
 */
function blogStyle2(element) {
	var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
	var blogClassfiy = element.blogClassfiy;
	var blogClassifyName = element.blogClassifyName;
	var blogClassfiyUrl = "/common/html/showBlog/list?blogClassfiy="
			+ blogClassfiy + "&blogClassfiyName=" + blogClassifyName;

	var str = "<div class=\"blogs\" data-scroll-reveal=\"enter bottom over 1s\">\r\n"
			+ "		<h3 class=\"blogtitle\">\r\n" + "			<a href=\""
			+ url
			+ "\">"
			+ element.blogTitle
			+ "</a>\r\n"
			+ "		</h3>\r\n"
			+ "		<p class=\"blogtext\">"
			+ element.blogIntro
			+ "</p>\r\n"
			+ "		<div class=\"bloginfo\">\r\n"
			+ "			<ul>\r\n"
			+ "				<li class=\"author\"><a href=\"/common/html/showBlog/about\">"
			+ element.userNick
			+ "</a></li>\r\n"
			+ "				<li class=\"lmname\"><a href=\""
			+ blogClassfiyUrl
			+ "\">"
			+ blogClassifyName
			+ "</a></li>\r\n"
			+ "				<li class=\"timer\">"
			+ element.createTime + "</li>\r\n"
			// + " <li class=\"view\">4567已阅读</li>\r\n"
			// + " <li class=\"like\">9999</li>\r\n"
			+ "			</ul>\r\n" + "		</div>\r\n" + "	</div>";
	return str;
}
/**
 * 三个小图片的样式
 */
function blogStyle3(element) {
	var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
	var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;
	var blogClassfiy = element.blogClassfiy;
	var blogClassifyName = element.blogClassifyName;
	var blogClassfiyUrl = "/common/html/showBlog/list?blogClassfiy="
			+ blogClassfiy + "&blogClassfiyName=" + blogClassifyName;

	var str = "<div class=\"blogs\" data-scroll-reveal=\"enter bottom over 1s\">\r\n"
			+ "		<h3 class=\"blogtitle\">\r\n" + "			<a href=\""
			+ url
			+ "\" >"
			+ element.blogTitle
			+ "</a>\r\n"
			+ "		</h3>\r\n"
			+ "		<span class=\"bplist\"><a href=\""
			+ url
			+ "\" title=\"\">\r\n"
			+ "				<li><img src=\""
			+ blogImage
			+ "\" alt=\"\"></li>\r\n"
			+ "				<li><img src=\""
			+ blogImage
			+ "\" alt=\"\"></li>\r\n"
			+ "				<li><img src=\""
			+ blogImage
			+ "\" alt=\"\"></li>\r\n"
			+ "		</a></span>\r\n"
			+ "		<p class=\"blogtext\">"
			+ element.blogIntro
			+ "</p>\r\n"
			+ "		<div class=\"bloginfo\">\r\n"
			+ "			<ul>\r\n"
			+ "				<li class=\"author\"><a href=\"/common/html/showBlog/about\">"
			+ element.userNick
			+ "</a></li>\r\n"
			+ "				<li class=\"lmname\"><a href=\""
			+ blogClassfiyUrl
			+ "\">"
			+ blogClassifyName
			+ "</a></li>\r\n"
			+ "				<li class=\"timer\">"
			+ element.createTime + "</li>\r\n"
			// + " <li class=\"view\"><span>34567</span>已阅读</li>\r\n"
			// + " <li class=\"like\">9999</li>\r\n"
			+ "			</ul>\r\n" + "		</div>\r\n" + "	</div>";
	return str;
}
/**
 * 一个大图片的样式
 */
function blogStyle4(element) {
	var url = "/common/html/showBlog/blogDetail?uuid=" + element.uuid;
	var blogImage = "/attachment/getFileById?uuid=" + element.blogImage;
	var blogClassfiy = element.blogClassfiy;
	var blogClassifyName = element.blogClassifyName;
	var blogClassfiyUrl = "/common/html/showBlog/list?blogClassfiy="
			+ blogClassfiy + "&blogClassfiyName=" + blogClassifyName;

	// var lazyLoadImage = " data-original=\"" + blogImage + "\" ";

	var str = "<div class=\"blogs\" data-scroll-reveal=\"enter bottom over 1s\">\r\n"
			+ "		<h3 class=\"blogtitle\">\r\n" + "			<a href=\""
			+ url
			+ "\">"
			+ element.blogTitle
			+ "</a>\r\n"
			+ "		</h3>\r\n"
			+ "		<span class=\"bigpic\"><a href=\""
			+ url
			+ "\" title=\"\"><img\r\n"
			// + lazyLoadImage
			+ " src=\""
			+ blogImage
			+ "\""
			+ " alt=\"\"></a></span>\r\n"
			+ "		<p class=\"blogtext\">"
			+ element.blogIntro
			+ "</p>\r\n"
			+ "		<div class=\"bloginfo\">\r\n"
			+ "			<ul>\r\n"
			+ "				<li class=\"author\"><a href=\"/common/html/showBlog/about\">"
			+ element.userNick
			+ "</a></li>\r\n"
			+ "				<li class=\"lmname\"><a href=\""
			+ blogClassfiyUrl
			+ "\">"
			+ blogClassifyName
			+ "</a></li>\r\n"
			+ "				<li class=\"timer\">"
			+ element.createTime + "</li>\r\n"
			// + " <li class=\"view\"><span>34567</span>已阅读</li>\r\n"
			// + " <li class=\"like\">9999</li>\r\n"
			+ "			</ul>\r\n" + "		</div>\r\n" + "	</div>";
	return str;
}