<!DOCTYPE html>
<html>
<head lang="Zh-CN">
    <meta charset="UTF-8">
    <title>个人微博</title>
    <meta name="keywords" content="个人博客" />
    <meta name="description" content="个人博客丶一个站在web后端设计之路的男青年个人博客网站，提供html模板和博客模板免费资源下载的个人原创网站。" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0,minimal-ui">
    <link rel="stylesheet" href="/blog/css/style.css"/>
        <!--&lt;!&ndash; 新 Bootstrap 核心 CSS 文件 &ndash;&gt;-->
    <!--    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">-->
    <!--    &lt;!&ndash; jQuery文件。务必在bootstrap.min.js 之前引入 &ndash;&gt;-->
    <!--    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>-->
    <!--    &lt;!&ndash; 最新的 Bootstrap 核心 JavaScript 文件 &ndash;&gt;-->
    <!--    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->

    <style>
        body {
            background: #d9d3c1 url('/blog/images/bigbannerpic_01.png') no-repeat center 0;
        }
    </style>
</head>
<body>
    <div id="header">                          <!--网页头-->
        <div id="header-top" class="header-top">
            <div id="logo" class="header-top-logo" style="display: inline">
                <img style="width: 110px" src="/blog/images/logo.png" alt="logo图片"/>
            </div>
                <a class="welcome" href="#">你好，欢迎访问我的博客！<br>
                    <script type="text/JavaScript">
                        var now = new Date();
                        document.write(now.getFullYear() + "年" + (now.getMonth() + 1) + "月" + now.getDate() + "日" + now.getHours() + "点" + now.getMinutes() + "分");
                    </script>
                </a>
            <div class="header-menu-wrapper">
                <ul class="header-menu-list">
                    <li class="menu-item"><a href="#">首页</a></li>
                    <li class="menu-item"><a href="#">心情</a></li>
                    <li class="menu-item"><a href="#">关于我</a></li>
                    <li class="menu-item"><a href="#">留言板</a></li>
                    <li class="menu-item"><a href="#">优秀个人博客</a></li>
                    <li class="menu-item"><a href="#">web交流群</a></li>
                </ul>
            </div>

        </div>
    </div>
    <div id="continer">    <!--中部-->
        <div class="continer_top">
            <div class="continer_top_left">
                <div class="icon">
                    <img src="/blog/images/default-avatar.png" alt="头像" class="img_icon">
                </div>

                <div class="artical_link"><a href="#">5644<br>文章</a></div>
                <div class="artical_link"><a href="#">546<br>评论</a></div>
                <div class="artical_link"><a href="#">55<br>友链</a></div>

            </div>
            <div class="continer_top_center">
                <ul class="main_menu">
                    <li>慢生活</li>
                    <li>学无止境</li>
                    <li>模板分享</li>
                    <li>面试题库</li>
                    <li>站长新闻</li>
                    <li>优秀个人博客</li>
                </ul>
            </div>
            <div class="continer_top_right"> </div>

        </div>
            <div class="brief_introduction">      <!--简介-->
                <span>Hi，欢迎来到我的个人博客网站。本博客是自己通过代码构建的。前端html，后端java技术。对这些技术有兴趣的朋友可以加入qq群172816590，我们一起学习进步。嘿嘿，欢迎来到梁子个人博客！~
                投稿邮箱:419400980@qq.com
                </span>
                <!--微博 QQ 微信 GitHub 浏览器  的这些图标-->
                <div class="icons">
                    <div class="icon_microBlog">
                        <!--<span class="glyphicon glyphicon-education" aria-hidden="true"></span>-->
                        <span class="icons_float"><img src="/blog/images/icon_microBlog.png" alt=""/></span>
                    </div>
                    <div class="icon_QQ">
                        <span class="icons_float"><img src="/blog/images/icon_QQ.png" alt=""/></span>
                    </div>
                    <div class="icon_weChat">
                        <span class="icons_float"><img src="/blog/images/icon_weChat.png" alt=""/></span>
                    </div>
                    <div class="icon_Github">
                        <span class="icons_float"><img src="/blog/images/icon_Github.png" alt=""/></span>
                    </div>
                    <div class="icon_Browser">
                        <span class="icons_float"><img src="/blog/images/icon_Browser.png" alt=""/></span>
                    </div>
                </div>
            </div>
        <!--轮播图-->
            <div class="pic_slideshow">




                <div class="slider" id="circle">
                    <a href=""><img src="/blog/images/1.jpg" class="img" style="width: 850px;height: auto"></a>
                    <ul class="circle">
                        <li class="current" onmouseover="pic(1)" style="color:red">●</li>
                        <li onmouseover="pic(2)">●</li>
                        <li onmouseover="pic(3)">●</li>

                    </ul>
                    <div class="arrow">
                        <a href="javaScript:;" class="arrow-l" onclick="bo2()" id="bo1"><</a>
                        <a href="javaScript:;" class="arrow-2" onclick="bo1()" id="bo2">></a>
                    </div>
                </div>

                <script>
                    var a = 1;
                    var t = 0;
                    window.onload=function(){
                        t = setInterval('bo1()',3000);
                    }
                    function pic(num){
                        a = num;
                        var btn = document.querySelector('.img');
                        for (var i=1;i<4;i++) {
                            var li = document.getElementById("circle").getElementsByTagName("li")[i-1];
                            li.style.color = "white";
                            if(num == i){
                                btn.src = "/blog/images/"+i+".jpg";
                                li.style.color = "red";
                            }
                        }
                    }
                    function bo1(){
                        if(a>=3){
                            a = 0;
                        }
                        a++;
                        pic(a);
                    }
                    function bo2(){
                        if(a<=1){
                            a = 4;
                        }
                        a--;
                        pic(a);
                    }
                </script>

            </div>
        <div class="continer_left">

                <h5><span style="color: #89DCC9;font-weight: bold;">相关推荐</span></h5>
                <div>
                    <a href="/get-search-page-centos-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="centos">centos</a>
                    <a href="/get-search-page-vmware-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="vmware">vmware</a>
                    <a href="/get-search-page-linux-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="linux">linux</a>
                    <a href="/get-search-page-ajax-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="ajax">ajax</a>
                    <a href="/get-search-page-mysql-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="mysql">mysql</a>
                    <a href="/get-search-page-xmanager-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="xmanager">xmanager</a>
                    <a href="/get-search-page-java-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="java">java</a>
                    <a href="/get-search-page-html模板-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="html模板">html模板</a>
                    <a href="/get-search-page-邮箱-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="邮箱">邮箱</a>
                    <a href="/get-search-page-ip-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="ip">ip</a>
                    <a href="/get-search-page-防火墙-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="防火墙">防火墙</a>
                    <a href="/get-search-page-JDK-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="JDK">JDK</a>
                    <a href="/get-search-page-关键词-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="关键词">关键词</a>
                    <a href="/get-search-page-java教程-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="java教程">java教程</a>
                    <a href="/get-search-page-static-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="static">static</a>
                    <a href="/get-search-page-冒泡-.html" class="tag-link-31 tag-link-position-1 with-tooltip" style="font-size: 12px;" data-tooltip="冒泡">冒泡</a>
                </div>

        </div>

    </div>

</body>
</html>