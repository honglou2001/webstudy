<%@page import="com.mingsoft.cms.dao.DataOperation" %>
<%@page import="com.mingsoft.cms.bean.CoinArticleBean" %>
<%@ page import="java.util.List" %>

<link href="css/base.css" rel="stylesheet">
<link href="css/m.css" rel="stylesheet">

<!-- JSP指令 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isThreadSafe="false" errorPage="" %>

<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>星聚行情，关注区块链，技术发展</title>
    <meta name="keywords" content="blog"/>
    <meta name="description" content="blog"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/base.css" rel="stylesheet">
    <link href="css/m.css" rel="stylesheet">
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/comm.js"></script>
    <!--[if lt IE 9]>
    <script src="js/modernizr.js"></script>
    <![endif]-->
</head>
<body>
<!--top begin-->
<header id="header">
    <div class="navbox">
        <h2 id="mnavh"><span class="navicon"></span></h2>
        <div class="logo"><a href="http://www.yangqq.com">星聚区块</a></div>
        <nav>
            <ul id="starlist">
                <li><a href="index.html">首页</a></li>
                <li><a href="list.html">个人博客日记</a></li>
                <li class="menu"><a href="list2.html">博客网站制作</a>
                    <ul class="sub">
                        <li><a href="/6">推荐工具</a></li>
                        <li><a href="/7">JS经典实例</a></li>
                        <li><a href="/8">网站建设</a></li>
                        <li><a href="/7">CSS3|Html5</a></li>
                        <li><a href="/8">心得笔记</a></li>
                    </ul>
                    <span></span></li>
                <li><a href="list3.html">网页设计心得</a></li>
                <li><a href="daohang.html">优秀个人博客</a></li>
                <li><a href="about.html">关于我</a></li>
            </ul>
        </nav>
        <div class="searchico"></div>
    </div>
</header>
<div class="searchbox">
    <div class="search">
        <form action="/e/search/index.php" method="post" name="searchform" id="searchform">
            <input name="keyboard" id="keyboard" class="input_text" value="请输入关键字词" style="color: rgb(153, 153, 153);"
                   onfocus="if(value=='请输入关键字词'){this.style.color='#000';value=''}"
                   onblur="if(value==''){this.style.color='#999';value='请输入关键字词'}" type="text">
            <input name="show" value="title" type="hidden">
            <input name="tempid" value="1" type="hidden">
            <input name="tbname" value="news" type="hidden">
            <input name="Submit" class="input_submit" value="搜索" type="submit">
        </form>
    </div>
    <div class="searchclose"></div>
</div>

<article>
    <%
        List<CoinArticleBean> list = DataOperation.queryData();

        try {
    %>

    <div class="fullbox whitebg">
        <h2 class="table-caption">市场动态：</h2>
        <div class="table-column-group">
            <div class="table-column"></div>
            <div class="table-column"></div>
            <div class="table-column"></div>
            <div class="table-column"></div>
            <div class="table-column"></div>
            <div class="table-column"></div>
            <div class="table-column"></div>
        </div>
        <div class="table-header-group">
            <ul class="table-row">
                <li class="table-cell">Symbol</li>
                <li class="table-cell">Price</li>
                <li class="table-cell">Open</li>
                <li class="table-cell">Max</li>
                <li class="table-cell">Low</li>
                <li class="table-cell">Close</li>
                <li class="table-cell">Volume</li>
                <li class="table-cell">Market Cap</li>
            </ul>
        </div>
        <div class="table-footer-group">
            <ul class="table-row">
                <li class="table-cell">Symbol</li>
                <li class="table-cell">Price</li>
                <li class="table-cell">Open</li>
                <li class="table-cell">Max</li>
                <li class="table-cell">Low</li>
                <li class="table-cell">Close</li>
                <li class="table-cell">Volume</li>
                <li class="table-cell">Market Cap</li>
            </ul>
        </div>
        <div class="table-row-group">
            <%for (int i = 0; i < list.size(); i++) {%>
            <ul class="table-row">
                <li class="table-cell"><% out.write(list.get(i).getFsymbol()); %></li>
                <li class="table-cell"><% out.write(list.get(i).getFprice().toString()); %></li>
                <li class="table-cell"><% out.write(list.get(i).getFopen().toString()); %></li>

                <li class="table-cell"><% out.write(list.get(i).getFmax().toString()); %></li>
                <li class="table-cell"><% out.write(list.get(i).getFlow().toString()); %></li>
                <li class="table-cell"><% out.write(list.get(i).getFclose().toString()); %></li>
                <li class="table-cell"><% out.write(DataOperation.isNullConvert(list.get(i).getFvol())); %></li>
                <li class="table-cell"><% out.write(DataOperation.isNullConvert(list.get(i).getFmarketcap())); %></li>
            </ul>
            <%}%>
        </div>
    </div>
    <%
        } catch (Exception ex) {
            out.write(ex.toString());
        }
    %>
    <div class="fullbox">

        <!--tab_box end-->
        <div class="zhuanti whitebg">
            <h2 class="htitle"><span class="hnav"><a href="/">原创模板</a><a href="/">古典</a><a href="/">清新</a><a
                    href="/">低调</a></span>精彩专题</h2>
            <ul>
                <li><i class="ztpic"><a href="/" target="_blank"><img src="images/1.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a
                        href="" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/" target="_blank"><img src="images/2.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a
                        href="" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/" target="_blank"><img src="images/3.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a
                        href="" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/" target="_blank"><img src="images/4.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a
                        href="" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/" target="_blank"><img src="images/h2.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a
                        href="" target="_blank" class="readmore">文章阅读</a></li>
                <li><i class="ztpic"><a href="/" target="_blank"><img src="images/h1.jpg"></a></i> <b>个人博客模板《今夕何夕》-响应式个人...</b><span>个人博客模板《今夕何夕》，宽屏响应式个人博客模板，采用冷色系为主，固定导航栏和侧边栏，无缝滚动图片...</span><a
                        href="" target="_blank" class="readmore">文章阅读</a></li>
            </ul>
        </div>
        <div class="ad whitebg"><img src="images/longad.jpg"></div>
        <div class="whitebg bloglist">
            <h2 class="htitle">最新博文</h2>
            <ul>
                <!--多图模式 置顶设计-->
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank"><b>【顶】</b>别让这些闹心的套路，毁了你的网页设计!</a></h3>
                    <span class="bplist"><a href="/"> <img src="images/b02.jpg" alt=""></a> <a href="/"><img
                            src="images/b03.jpg" alt=""></a> <a href="/"><img src="images/b04.jpg" alt=""> </a><a
                            href="/"><img src="images/b05.jpg" alt=""> </a></span>
                    <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if
                        来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">原创模板</a>】</span></p>
                </li>
                <!--单图-->
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img
                            src="images/b01.jpg" alt=""></a></span>
                    <p class="blogtext">
                        这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">原创模板</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">宝宝个人博客模板-亲子博客模板-宝宝个人网站模板</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">最新模板</a></i><a href="/" title=""><img
                            src="images/b02.jpg" alt=""></a></span>
                    <p class="blogtext">
                        这是一个记录宝宝成长点滴的个人博客，用作于宝宝博客，亲子博客，都是适用的。颜色为蓝色调，头部有飘动的卡通云，采用css3动画效果，布局简单，代码精简，还有相册功能，发图片，视频，时间轴可记录重要时刻，也可记录宝宝的生长发育状况，也可以统计宝宝博客网站的所有文章... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">最新模板</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">如何快速建立自己的个人博客网站</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">快速建站</a></i><a href="/" title=""><img
                            src="images/b03.jpg" alt=""></a></span>
                    <p class="blogtext">
                        各大博客门户网站，相继关闭，做一个独立的个人博客网站，那是将来的趋势。越来越多的个人站长倾向于独立建站，有个属于自己的博客网站，那如何快速建立自己的个人博客网站呢，接下来，我就简单给大家介绍一下：以阿里云为例... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">快速建站</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">作为一个设计师,如果遭到质疑你是否能恪守自己的原则?</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">设计制作</a></i><a href="/" title=""><img
                            src="images/b04.jpg" alt=""></a></span>
                    <p class="blogtext">
                        就拿我自己来说吧，有时候会很矛盾，设计好的作品，不把它分享出来，会觉得待在自己电脑里面实在是没有意义。干脆就发布出去吧。我也害怕收到大家不好的评论，有些评论，可能说者无意，但是对于每一个用心的站长来说，都会受很深的影响，愤怒，恼羞。... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">设计制作</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <!--纯文字-->
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">别让这些闹心的套路，毁了你的网页设计!</a></h3>
                    <p class="blogtext">如图，要实现上图效果，我采用如下方法：1、首先在数据库模型，增加字段，分别是图片2，图片3。2、增加标签模板，用if，else if
                        来判断，输出。思路已打开，样式调用就可以多样化啦！... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">原创模板</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <!--单图-->
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img
                            src="images/b01.jpg" alt=""></a></span>
                    <p class="blogtext">
                        这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">原创模板</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">如何快速建立自己的个人博客网站</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">快速建站</a></i><a href="/" title=""><img
                            src="images/b03.jpg" alt=""></a></span>
                    <p class="blogtext">
                        各大博客门户网站，相继关闭，做一个独立的个人博客网站，那是将来的趋势。越来越多的个人站长倾向于独立建站，有个属于自己的博客网站，那如何快速建立自己的个人博客网站呢，接下来，我就简单给大家介绍一下：以阿里云为例... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">快速建站</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
                <li>
                    <h3 class="blogtitle"><a href="/" target="_blank">【个人博客网站制作】自己不会个人博客网站制作，你会选择用什么博客程序源码？</a></h3>
                    <span class="blogpic imgscale"><i><a href="/">原创模板</a></i><a href="/" title=""><img
                            src="images/b05.jpg" alt=""></a></span>
                    <p class="blogtext">
                        这些开源的博客程序源码，都是经过很多次版本测试的，都有固定的使用人群。我所知道的主流的博客程序有，Z-blog，Emlog，WordPress，Typecho等，免费的cms系统有，织梦cms（dedecms），phpcms，帝国cms（EmpireCMS）！... </p>
                    <p class="bloginfo"><i class="avatar"><img src="images/avatar.jpg"></i><span>杨青青</span><span>2018-10-28</span><span>【<a
                            href="/">原创模板</a>】</span></p>
                    <a href="/" class="viewmore">阅读更多</a></li>
            </ul>
        </div>
        <!--bloglist end-->
    </div>
</article>
<footer>
    <div class="box">
        <div class="wxbox">
            <ul>
                <li><img src="images/wxgzh.jpg"><span>微信公众号</span></li>
                <li><img src="images/wx.png"><span>我的微信</span></li>
            </ul>
        </div>
        <div class="endnav">
            <p><b>站点声明：</b></p>
            <p>1、本站个人区块数据，均为Young本人设计，个人可以使用，但是未经许可不得用于任何商业目的。</p>
            <p>2、所有文章未经授权禁止转载、摘编、复制或建立镜像，如有违反，追究法律责任。举报邮箱：<a href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=1111-c3E" target="_blank">holou111@qq.com</a></p>
            <p>Copyright © <a href="http://www.example.com" target="_blank">www.example.com</a> All Rights Reserved. 备案号：<a href="http://www.miitbeian.gov.cn/" target="_blank">蜀ICP备1111111111号-1</a></p>
        </div>
    </div>
    <a href="#">
        <div class="top"></div>
    </a> </footer>
</body>
</html>

