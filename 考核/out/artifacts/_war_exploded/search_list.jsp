<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/26
  Time: 10:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="./JS/jquery-1.9.1.min.js"></script>
    <link href="CSS/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="JS/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./CSS/search_list.css">
    <title>Document</title>
</head>

<body>
<!-- 头部绿色部分---开始 -->
<div class="head">
    <div class="right">
        <a href="">学校主页</a>
        <strong>|</strong>
        <a href="">校友之家</a>
        <input type="text">
        <button><span class="glyphicon glyphicon-search"></span></button>
    </div>
</div>
<!-- 头部绿色部分---结束 -->


<!-- 头部白色部分---开始 -->
<div class="top">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 ">
                <div class="top_bg">
                    <img src="./Image/unwst2.png" alt="" width="170px" height="170px" class="img-circle">
                </div>
                <div class="top_bg2">
                    <img src="./Image/news_list_logo.png" alt="">
                </div>
            </div>
            <div class="col-xs-5 ">
                <div class="top_nav">
                    <img src="./Image/nav01.png" alt="">
                </div>
                <div class="top_p">
                    <ul>
                        <li><a href="">头条关注</a></li>
                        <li><a href="">综合新闻</a></li>
                        <li><a href="">专题新闻</a></li>
                        <li><a href="">学术动态</a></li>
                        <li><a href="">师大人物</a></li>
                        <li><a href="">木铎文韵</a></li>
                        <li><a href="">菁菁校园</a></li>
                        <li><a href="">新闻合集</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-xs-3 ">
                <div class="top_nav">
                    <img src="./Image/nav02.png" alt="">
                </div>
                <div class="top_p2">
                    <ul>
                        <li><a href="">光影师大</a></li>
                        <li><a href="">数字展厅</a></li>
                        <li><a href="">视频空间</a></li>
                        <li><a href="">媒体师大</a></li>
                        <li><a href="">校报在线</a></li>
                        <li><a href="">校内报刊</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 头部白色部分---结束 -->




<!-- main部分---开始 -->
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 ">


                <!-- 内容开始 -->
                <div>
                    <!-- 算是个面包屑 -->
                    <div class="title">
                            <span>
                                您所在的位置：
                                <a href="index.jsp"> 首页 >> </a>
                                <a href="">搜索 >> </a>
                                <a href=""> 搜索内容 </a>
                            </span>
                    </div>
                    <!-- 面包屑---结束 -->

                    <div class="container">
                        <div class="row">
                            <div class="col-xs-8 news_show_bg">
                                <table class="table">
                                    <caption class="h3 text-center text-info"></caption>
                                    <thead>
                                    <tr>
                                        <th class="text-center">标题</th>
                                        <th class="text-center">作者</th>
                                        <th class="text-center">创建时间</th>
                                        <th class="text-center">修改时间</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach var="search" items="${searchlist}">
                                    <tr class="text-center">
                                        <td>${search.title}</td>
                                        <td>${search.author}</td>
                                        <td>${search.writeTime}</td>
                                        <td>${search.alterTime}</td>
                                    </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                            <div class="col-xs-4 ">
                                <div class="group">
                                    <div class="nav">
                                        <a href="">校园新闻</a>
                                        <hr>
                                        <a href="">通知公告</a>
                                    </div>
                                </div>
                                <div class="group">
                                    <div class="nav">
                                        <ul class="NewestList">
                                            <li><span class="dates"><strong>21</strong><i>2019.05</i></span><a
                                                    href="">我校在2018年度长春市 “高校文明杯”评选活动中获多项荣誉...</a>
                                            </li>
                                            <li><span class="dates"><strong>25</strong><i>2018.12</i></span><a
                                                    href="">我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕...</a>
                                            </li>
                                            <li><span class="dates"><strong>28</strong><i>2018.04</i></span><a
                                                    href="">经济学院创新创业工作现场会在净月社区国家级众创空间举行...</a>
                                            </li>
                                            <li><span class="dates"><strong>26</strong><i>2018.04</i></span><a
                                                    href="">生命科学学院2015级生物科学班红色体验教育实践活动圆满成功 ...</a></li>
                                            <li><span class="dates"><strong>27</strong><i>2017.12</i></span><a
                                                    href="">信息科学与技术学院“书香校园，文化东师”读书报告会圆满成功 ...</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 内容结束 -->


            </div>
        </div>
    </div>
</div>



<!-- 页脚---开始 -->
<div class="foot">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 ">
                <p class="foot_p">
                    <span>版权所有©东北师范大学吉</span>
                    <strong>|</strong>
                    <span>ICP备05004942号</span>
                    <strong>|</strong>
                    <span>维护：信息化管理与规划办公室</span>
                    <strong>|</strong>
                    <span>邮箱：webmaster@nenu.edu.cn</span>
                    <strong>|</strong>
                    <span>地址：吉林省长春市人民大街（130024）</span>
                </p>
            </div>
        </div>
    </div>
</div>
</body>

</html>