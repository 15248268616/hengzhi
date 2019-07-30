<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/24
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="./JS/jquery-1.9.1.min.js"></script>
    <link href="CSS/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="JS/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./CSS/news_show.css">
    <script src="./JS/news_show.js"></script>
    <title>Document</title>
</head>

<body>
<!-- 头部绿色部分---开始 -->
<div class="head">
    <div class="right">
        <a href="http://www.nenu.edu.cn/">学校主页</a>
        <strong>|</strong>
        <a href="http://xyh.nenu.edu.cn/">校友之家</a>
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




<!-- 新闻内容展示部分---开始 -->
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 ">


                <!-- 第一张新闻 -->
                <div id="newShow1" class="hid_den">
                    <!-- 算是个面包屑 -->
                    <div class="title">
                            <span>
                                您所在的位置：
                                <a href="index.jsp"> 首页 >> </a>
                                <a href="news_list.jsp">校园新闻 >> </a>
                                <a href="#"> 2017年净月校区辅导员消防应急实践培训成功举办 </a>
                            </span>
                    </div>
                    <!-- 面包屑---结束 -->

                    <div class="container">
                        <div class="row">
                            <div class="col-xs-8 news_show_bg">
                                <div class="news_title">
                                    <h3>2017年净月校区辅导员消防应急实践培训成功举办 </h3>
                                </div>
                                <hr>
                                <div class="news_body">
                                    <p>为了进一步增强辅导员消防安全意识，切实提高消防应急处置能力，继本部校区本科生辅导员消防应急实践培训圆满结束后，10月31日，党委学生工作部联合保卫处举行了净月校区辅导员消防应急实践培训活动。本次培训由保卫处王佑名老师主讲，净月校区52名本科生辅导员参加，党委学生工作部、保卫处负责同志莅临现场。

                                        此次消防应急实践培训延续上一场培训的主要形式，先由保卫处相关老师详细讲解常用消防器材的使用方法，强调灭火要领，示范干粉灭火器的使用。随后，由各位辅导员进行操作演练。室外灭火受风向影响较大，辅导员在保卫处老师的指导之下，准确判断风向，科学规范操作，掌握了基本灭火技能。

                                        此次消防应急实践培训，帮助辅导员积累了消防应急处置的经验，提升了应对多变火情的能力。至此，2017年秋季学期东北师范大学本科生辅导员消防应急实践培训圆满结束。
                                    </p>
                                    <p></p>
                                    <div class="img">
                                        <img src="./Image/news_show1.jpg" alt="" width="500px" height="300px">
                                    </div>
                                    <p></p>
                                    <div class="img">
                                        <img src="./Image/news_show2.jpg" alt="" width="500px" height="300px">
                                    </div>
                                    <hr>
                                    <div>
                                        <button class="btnTo1"
                                                onclick="show(2)">下一条：我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4 ">
                                <div class="group">
                                    <div class="nav">
                                        <a href="http://xsc.nenu.edu.cn/index/xyxw.htm">校园新闻</a>
                                        <hr>
                                        <a href="http://xsc.nenu.edu.cn/index/tzgg.htm">通知公告</a>
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
                <!-- 第一张结束 -->




                <!-- 第二张新闻 -->
                <div id="newShow2" class="hid_den">
                    <!-- 算是个面包屑 -->
                    <div class="title">
                            <span>
                                您所在的位置：
                                <a href="index.jsp"> 首页 >> </a>
                                <a href="news_list.jsp">校园新闻 >> </a>
                                <a href="#">我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕 </a>
                            </span>
                    </div>
                    <!-- 面包屑---结束 -->

                    <div class="container">
                        <div class="row">
                            <div class="col-xs-8 news_show_bg">
                                <div class="news_title">
                                    <h3>我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕 </h3>
                                </div>
                                <hr>
                                <div class="news_body">
                                    <p>12月22日，党委学生工作部、学生处组织召开了2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会。中共长春市委宣传部高教处处长陶树海、吉林省教育厅民族教育处副处长隗峰、东北师范大学党委书记杨晓慧、校长刘益春、党委副书记王延、党委副书记兼副校长马晓燕，副校长常青、徐海阳，校长助理薛利锋以及学校相关职能部门负责人，各学院（部）党委书记、院长，学生工作组成员，本科生代表和获奖学生家长代表等400余人参加了现场活动。同时学校3670名2018级本科生分别在两校区22个分会场同步收看典礼直播，近4000人通过手机收看直播。
                                    </p>
                                    <p>马晓燕宣读表彰决定，对获得国家奖学金、国家励志奖学金、校长奖学金、宝钢奖学金的优秀本科生以及获得标兵班集体、十佳宿舍等荣誉的优秀集体进行了表彰，并为第十九届“理想与成才”报告团年度人物和提名奖获得者颁奖。
                                    </p>
                                    <p>典礼上，刘益春发表讲话，充分肯定了学校设立奖学金对培养学生德、智、体、美、劳全面发展的重要意义，高度赞扬了“理想与成才”报告团多年来在全校学生中发挥的示范引领作用。同时，他结合新时代新要求对全校学生提出三点殷切期望，一是希望广大学生树立正确的价值观和人生观，他鼓励学生要在学校“创造的教育”理念下，培养批判精神，养成反思习惯，培养自主学习能力，明确人生规划，有理想与人生目标，打好人生底色，“扣好人生第一粒扣子”；二是希望学生在学习中坚持追求真理，做“真学问”，在做中学、在学中做，将理论融入实践，打下扎实的知识基础，迈稳步子、久久为功，成为新时代教育家、科学家；三是希望学生能“为天地立心，为生民立命，为往圣继绝学，为万世开太平”，成为心有大我、有责任担当的中国特色社会主义事业的合格建设者和可靠接班人。
                                    </p>
                                    <p>第十九届“理想与成才”报告团年度人物数学与统计学院王长虎、物理学院乔国健等十名同学通过访谈、演讲等不同形式为在场学生做了精彩的首场报告。学生纷纷表示十分受鼓舞，定将在未来向着理想前进的路上，谨记校长嘱托，对标看齐典范榜样，树理想，勇成才。
                                    </p>
                                    <p>“理想与成才”报告团是学校多年来探索形成的引导学生成长成才的重要途径，是对学生进行典范教育的重要平台，是扎实推进社会主义核心价值观落细落小落实的重要载体。1996年至今，学校已成功组建了十九届“理想与成才”报告团，先后选拔199名优秀学生典型，以“身边人讲述身边事、身边事影响身边人”的方式，为“讲好东师故事、传播东师声音、弘扬东师精神”，不断凝聚和积极传递青春正能量发挥了重要作用。
                                    </p>
                                    <p></p>
                                    <div class="img">
                                        <img src="./Image/news_show3.jpg" alt="" width="500px" height="300px">
                                    </div>
                                    <p></p>
                                    <div class="img">
                                        <img src="./Image/news_show4.jpg" alt="" width="500px" height="300px">
                                    </div>
                                    <hr>
                                    <div>
                                        <button class="btnTo2"
                                                onclick="show(1)">上一条：2017年净月校区辅导员消防应急实践培训成功举办
                                        </button>
                                        <button class="btnTo1"
                                                onclick="show(3)">下一条：我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4 ">
                                <div class="group">
                                    <div class="nav">
                                        <a href="http://xsc.nenu.edu.cn/index/xyxw.htm">校园新闻</a>
                                        <hr>
                                        <a href="http://xsc.nenu.edu.cn/index/tzgg.htm">通知公告</a>
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
                <!-- 第二张结束 -->



                <!-- 第三张新闻 -->
                <div id="newShow3" class="hid_den">
                    <!-- 算是个面包屑 -->
                    <div class="title">
                                <span>
                                    您所在的位置：
                                    <a href="index.jsp"> 首页 >> </a>
                                    <a href="news_list.jsp">校园新闻 >> </a>
                                    <a href="#">经济学院创新创业工作现场会在净月社区国家级众创空间举行 </a>
                                </span>
                    </div>
                    <!-- 面包屑---结束 -->

                    <div class="container">
                        <div class="row">
                            <div class="col-xs-8 news_show_bg">
                                <div class="news_title">
                                    <h3>经济学院创新创业工作现场会在净月社区国家级众创空间举行 </h3>
                                </div>
                                <hr>
                                <div class="news_body">
                                    <p>4月20日，经济学院创新创业工作现场会在国家级创新创业人才培养基地、国家级创新创业孵化园净月社区创客空间举行。
                                    </p>
                                    <p>长春聚达利创服商务有限公司董事长、净月社区国家级众创空间负责人王子建，人社部、省工信厅创业导师逯建峰，我校创业典型、经济学院优秀毕业生、长春市创精英企业管理咨询有限公司董事长刘淑媛应邀参加此次会议。
                                    </p>
                                    <p>会议对经济学院创新创业工程整体规划、创业团队组建、创新创业理论学习、创新创业大赛的开展、创新创业空间建设以及创业实践活动的扶持等内容进行了深入讨论，进一步明确了经济学院创新创业工程的实施步骤和具体内容。王子健着重介绍了国内创新创业类赛事情况，并对大学生创业的相关政策进行了介绍。逯键锋对近年经典的创业案例进行了讲解，并现场为我院“易秀文化定制工作室”等创业项目进行了分析和指导。
                                    </p>
                                    <p>此次现场会是把创新创业会议开在创新创业一线的一次有益尝试，标志着我校经济学院与净月社区国家级众创空间全面合作伙伴关系的正式确立，标志着经济学院新时期创新创业工程的全面启动。
                                    </p>
                                    <p></p>
                                    <hr>
                                    <div>
                                        <button class="btnTo2"
                                                onclick="show(2)">上一条：我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4 ">
                                <div class="group">
                                    <div class="nav">
                                        <a href="http://xsc.nenu.edu.cn/index/xyxw.htm">校园新闻</a>
                                        <hr>
                                        <a href="http://xsc.nenu.edu.cn/index/tzgg.htm">通知公告</a>
                                    </div>
                                </div>
                                <div class="group">
                                    <div class="nav">
                                        <ul class="NewestList">
                                            <li><span class="dates"><strong>21</strong><i>2019.05</i></span><a
                                                    href="http://xsc.nenu.edu.cn/info/1174/1712.htm">我校在2018年度长春市 “高校文明杯”评选活动中获多项荣誉...</a>
                                            </li>
                                            <li><span class="dates"><strong>25</strong><i>2018.12</i></span><a
                                                    href="http://xsc.nenu.edu.cn/info/1174/1682.htm">我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕...</a>
                                            </li>
                                            <li><span class="dates"><strong>28</strong><i>2018.04</i></span><a
                                                    href="http://xsc.nenu.edu.cn/info/1174/1562.htm">经济学院创新创业工作现场会在净月社区国家级众创空间举行...</a>
                                            </li>
                                            <li><span class="dates"><strong>26</strong><i>2018.04</i></span><a
                                                    href="http://xsc.nenu.edu.cn/info/1174/1553.htm">生命科学学院2015级生物科学班红色体验教育实践活动圆满成功 ...</a></li>
                                            <li><span class="dates"><strong>27</strong><i>2017.12</i></span><a
                                                    href="http://xsc.nenu.edu.cn/info/1174/1523.htm">信息科学与技术学院“书香校园，文化东师”读书报告会圆满成功 ...</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 第二张结束 -->


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



<!-- 写一个相对于浏览器的回到顶部的按钮 -->
<div class="goToTop">
    <a href="#"><img src="./Image/gotop.png" alt=""></a>
</div>
</body>

</html>
