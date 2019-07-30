<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/21
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="./CSS/index2.css">
  <script src="./JS/jquery-1.9.1.min.js"></script>
  <link href="CSS/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
  <script src="JS/bootstrap/3.3.6/bootstrap.min.js"></script>
  <script src="./JS/vue.min.js"></script>
  <script src="./JS/index2.js"></script>

</head>

<body>
<div id="app">
  <!-- 相对于浏览器的定位  start-->
  <div class="head">
    <div class="left">
      <!-- <a href="">信息门户</a> -->
    </div>
    <div class="right">
      <a href="login.jsp">登录</a>
      <strong>|</strong>
      <a href="register.jsp">注册</a>
      <strong>|</strong>
      <button class="btn" data-toggle="modal" data-target="#sousuo"><span
              class="glyphicon glyphicon-search"></span></button>
    </div>
    <div class="top">
      <div class="container">
        <div class="row">
          <div class="col-xs-5 ">
            <div class="left">
              <div class="dropdown">
                <button class="dropbtn">网站首页</button>
                <div class="dropdown-content">
                  <a href="http://xsc.nenu.edu.cn/index/xyxw.htm">校园新闻</a>
                  <a href="http://xsc.nenu.edu.cn/index/tzgg.htm">通知公告</a>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn">部门介绍</button>
                <div class="dropdown-content">
                  <a href="http://xsc.nenu.edu.cn/bmjs/bmjj.htm">部门简介</a>
                  <a href="http://xsc.nenu.edu.cn/bmjs/ryxx.htm">人员信息</a>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn">队伍建设</button>
                <div class="dropdown-content">
                  <a href="http://xsc.nenu.edu.cn/dwjs/glwj.htm">纲领文件</a>
                  <a href="http://xsc.nenu.edu.cn/dwjs/pxpy.htm">培训培养</a>
                  <a href="http://xsc.nenu.edu.cn/dwjs/jcdw.htm">基层队伍</a>
                </div>
              </div>
              <div class="dropdown dis_apper">
                <button class="dropbtn">下拉菜单</button>
                <div class="dropdown-content">
                  <a href="">aaa</a>
                  <a href="">aaa</a>
                  <a href="">aaa</a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xs-2 ">
            <div class="up">
              <img src="./Image/unwst.jpg" width="200px" height="160px" class="img_rounded">
            </div>
          </div>
          <div class="col-xs-5 ">
            <div class="right">
              <div class="dropdown dis_apper">
                <button class="dropbtn">网站首页</button>
                <div class="dropdown-content">
                  <a href="">校园新闻</a>
                  <a href="">通知公告</a>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn">思政教育</button>
                <div class="dropdown-content">
                  <a href="">
                    <div class="dropdown2">
                      <button class="dropbtn2">入学导航</button>
                      <div class="dropdown-content2">
                        <p>服务内容</p>
                        <p>服务安排</p>
                        <p>咨询</p>
                      </div>
                    </div>
                  </a>
                  <a href="">
                    <div class="dropdown2">
                      <button class="dropbtn2">典型培育</button>
                      <div class="dropdown-content2">
                        <p>服务内容</p>
                        <p>服务安排</p>
                        <p>咨询</p>
                      </div>
                    </div>
                  </a>
                  <a href="">
                    <div class="dropdown2">
                      <button class="dropbtn2">红色体验</button>
                      <div class="dropdown-content2">
                        <p>服务内容</p>
                        <p>服务安排</p>
                        <p>咨询</p>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn">心灵港湾</button>
                <div class="dropdown-content">
                  <a href="">
                    <div class="dropdown2">
                      <button class="dropbtn2">教育培训</button>
                      <div class="dropdown-content2">
                        <p>朋辈辅导</p>
                        <p>心孕报</p>
                      </div>
                    </div>
                  </a>
                  <a href="">
                    <div class="dropdown2">
                      <button class="dropbtn2">心理咨询</button>
                      <div class="dropdown-content2">
                        <p>服务内容</p>
                        <p>服务安排</p>
                        <p>咨询</p>
                      </div>
                    </div>
                  </a>
                </div>
              </div>
              <div class="dropdown">
                <button class="dropbtn">日常管理</button>
                <div class="dropdown-content">
                  <a href="managerlogin.jsp">后台管理</a>
                  <a href="">aaa</a>
                  <a href="">aaa</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 相对于浏览器的定位  end-->

  <!-- 中间内容两侧空白  start -->
  <div class="main">
    <!-- <div class="grid-content bg-purple-light"></div> -->

    <!-- 栅格--头部 -->
    <div class="_head">
      <!-- 学生处logo部分  start-->
      <div class="left">

      </div>
      <!-- 学生处logo部分  end-->

      <!-- 搜索 && 导航 -->
      <div class="right">

      </div>
      <!-- 搜索 && 导航  end -->
    </div>

    <!----轮播 -->
    <div class="slide_img">
      <img src="./Image/slideimg3.jpg" width="100%" height="500px" id="ad1">
      <img src="./Image/bgimg4.jpg" width="100%" height="500px" id="ad2" class="hid_den">
      <img src="./Image/bgimg3.jpg" width="100%" height="500px" id="ad3" class="hid_den">
      <img src="./Image/bgimg.jpg" width="100%" height="500px" id="ad4" class="hid_den">
    </div>
    <!-- 轮播  end -->

    <!-- 校园新闻  start -->
    <div class="news">
      <div class="title">
        <div class="news_margin">
          <a href="news_list.jsp"><img src="./Image/main_news.png" alt="" width="80%"></a>
        </div>
      </div>
      <div class="news_groups">
        <div class="container">
          <div class="row" gutter="10px">
            <div class="col-xs-3">
              <div class="new_bg">
                <div class="news_overflow">
                                        <span>
                                            <img src="./Image/news1.png" width="280px" height="185px">
                                        </span>
                  <p class="news_h3"><span class="dis_apper">明</span>
                    我校2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会圆满落幕
                  </p>
                  <hr>
                  <p class="news_p"><span class="dis_apper">明</span>
                    12月22日，党委学生工作部、学生处组织召开了2017-2018学年本科生奖学金颁奖典礼暨第十九届“理想与成才”报告团首场报告会。中共长春市委宣传部高教处处长陶树海、吉林省教育厅民族教育处副处长隗峰、东北师范大学党委书记杨晓慧、校长刘益春、党委副书记王延、党委副书记兼副校长马晓燕，副校长常青、徐海阳，校长助理薛利锋以及学校相关职能部门负责人，各学院（部）党委书记、院长，学生工作组成员，本科生代表和获奖学生家长代表等400余人参加了现场活动。同时学校3670名2018级本科生分别在两校区22个分会场同步收看典礼直播，近4000人通过手机收看直播。

                    马晓燕宣读表彰决定，对获得国家奖学金、国家励志奖学金、校长奖学金、宝钢奖学金的优秀本科生以及获得标兵班集体、十佳宿舍等荣誉的优秀集体进行了表彰，并为第十九届“理想与成才”报告团年度人物和提名奖获得者颁奖。
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xs-3 ">
              <div class="new_bg">
                <div class="news_overflow">
                                        <span>
                                            <img src="./Image/news2.png" width="280px" height="185px">
                                        </span>
                  <p class="news_h3"><span class="dis_apper">明</span>
                    2017年辅导员消防应急实践培训成功举办
                  </p>
                  <hr>
                  <p class="news_p"><span class="dis_apper">明</span>
                    为了进一步增强辅导员消防安全意识，切实提高消防应急处置能力，10月11日，党委学生工作部联合保卫处举行了2017年辅导员消防应急实践培训。本次培训由保卫处高世军副处长主讲，本部校区44名本科生辅导员参加，党委学生工作部、保卫处负责同志莅临现场。

                    此次消防应急实践培训以消防器材使用演示与实际操作为主要内容。保卫处相关老师向辅导员详细讲解了相关消防知识和常用消防器材的使用方法，强调了灭火要领，示范了干粉灭火器和灭火毯的使用。随后，各位辅导员在保卫处老师的指导下进行了操作演练。

                    此次消防应急实践培训，使辅导员对于消防应急处置具备了实操经验。净月校区本科生辅导员消防应急实践培训将于下周进行。

                    马晓燕宣读表彰决定，对获得国家奖学金、国家励志奖学金、校长奖学金、宝钢奖学金的优秀本科生以及获得标兵班集体、十佳宿舍等荣誉的优秀集体进行了表彰，并为第十九届“理想与成才”报告团年度人物和提名奖获得者颁奖。
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xs-3">
              <div class="new_bg">
                <div class="news_overflow">
                                        <span>
                                            <img src="./Image/news3.png" width="280px" height="185px">
                                        </span>
                  <p class="news_h3"><span class="dis_apper">明</span>
                    学校举行2017年新兵入伍欢送会
                  </p>
                  <hr>
                  <p class="news_p"><span class="dis_apper">明</span>
                    9月8日下午，我校隆重举行
                    2017年新兵入伍欢送会。南关区人民武装部部长王景祥，校党委副书记兼副校长马晓燕，学校征兵工作相关部门领导，各学院（部）党委副书记、团委书记、辅导员以及学生代表参加仪式，共同欢送我校即将奔赴军营的25名大学生新兵。

                    会上，学校向南关区人民武装部赠送锦旗，为新入伍士兵赠送图书、明信片等礼物，并对他们圆梦军营、参军入伍表示衷心祝贺。一直以来，学校十分重视大学生参军入伍工作。今年，各部门协同工作、密切配合，通过完善制度、多方宣讲、营造氛围、遴选榜样、全程服务等，我校学生参军入伍工作取得了突破性进展。体育学院、地理科学学院、文学院、政法学院、环境学院、美术学院等学院（部）扎实工作、创新方法，有力推进了我校征兵工作的顺利开展。会议总结了我校今年征兵工作的整体情况，对下一年征兵工作进行了部署、安排，要求各学院（部）总结经验，提前筹划，为下一年征兵工作开展做好准备。

                    美术学院2014级孔淞同学作为新兵代表发言，他讲述了自己从军梦、爱国梦，以及他选择去西藏参军的心路历程。25名新入伍同学一道庄严宣誓，入伍后将严守纪律，听从指挥，刻苦训练，敢为人先，铭记使命，感恩前行。

                    校党委副书记、副校长马晓燕寄语入伍新兵，希望同学们胸怀天下，学文为兴业之人才，习武为安邦之栋梁，勉励同学们在部队中磨练意志，砥砺作风，经受考验，不忘初心。同时希望在校学生学习入伍新兵投身国防、矢志报国的家国情怀，为实现中国梦贡献力量。

                    学校从今年5月份开始征兵动员，有92名同学正式报名，51名同学上站体检，25名同学通过南关区人民武装部政治审核、体检，入伍参军。
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xs-3">
              <div class="new_bg">
                <div class="news_overflow">
                                        <span>
                                            <img src="./Image/news4.png" width="280px" height="185px">
                                        </span>
                  <p class="news_h3"><span class="dis_apper">明</span>
                    我校2017-信息科学与技术学院“书香校园，文化东师”读书报告会圆满成功
                  </p>
                  <hr>
                  <p class="news_p"><span class="dis_apper">明</span>
                    2017年12月10日，信息科学与技术学院2017级计科、中美、教技三个班级在学院128教室联合举了“书香校园，文化东师”读书报告会活动。全体学生及2017级辅导员杨琦出席了本次活动。

                    报告会秉承着交流共享，畅所欲言的原则，旨在促进同学之间相互交流，养成良好的读书习惯，以在学院内形成浓郁的阅读风气。活动以“读书接力”宣传片开场，引起同学们的普遍共鸣；接着，丰富多彩的报告接踵而至，朗诵、话剧、演讲、读书笔记分享等等形式多样，为同学们带来一场舌灿莲花的听觉盛宴，使得大家对于未曾涉猎的书籍有了初步的认识，对已阅的书籍有了更深的理解与体会。

                    本次活动后，同学们对于校长“砥砺奋进，追求真知，心系国家”的嘱托有了更切实的感悟与体会，全院师生将会持续在学院内掀起阅读热潮，让书籍的馨香在校园蔓延。
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 校园新闻   end -->


    <!-- 通知公告   start -->
    <div class="notice">
      <div class="title">
        <div class="news_margin">
          <img src="./Image/main_notice.png" alt="" width="90px">
        </div>
      </div>
      <!-- 第一行 -->
      <div class="container notice_margin">
        <div class="row">
          <div class="col-xs-3 notice_color1">
            <div class="notice_padding">
              <p class="notice_h3">
                关于申报2019年度学生政工干部队伍科研项目的通知
              </p>
              <p class="notice_p">各学院（部）、各单位：

                为进一步提高我校学生政工干部的职业化专业化专家化水平，培育形成一批高级别项目，学校现启动2019年度学生政工干部队伍科研项目的申报工作，具体要求如下：

                一、项目类别与申报人员

                1．项目类别

                重点课题培育项目，资助经费2万元，完成时限为1年；

                一般课题培育项目，资助经费1万元，完成时限为1年。

                2．申报人员

                各学院（部）党委副书记兼副院长、团委书记、专职辅导员，学生工作各部门工作人员。副高职称及以上、在研C类及以上课题主持人不参加此次项目申报。</p>
            </div>
          </div>
          <div class="col-xs-3 notice_color2">
            <div class="notice_padding">
              <p class="notice_h3">
                关于征集2019年度学生政工干部队伍科研项目选题的通知
              </p>
              <p class="notice_p">各学院（部）、各单位：

                为切实提升学生思想政治教育工作的专业化水平，促进政工干部将工作问题转化为科研课题，将工作经验转化为理论成果，教育部高校思想政治工作创新发展中心（东北师范大学）将于近日启动2019年度政工干部队伍科研立项工作。现面向全校各学院（部）党委副书记兼副院长、团委书记、专职辅导员，学生工作各部门工作人员征集项目选题。具体通知如下：

                一、选题范围

                本次选题征集重点围绕东师思政队伍专业化的经验与规律、东师思政工作典型模式、新时代大学生思想动态和成长规律、全国思政工作典型案例四个方面。

                二、选题类别

                1.重点培育项目选题：聚焦历史经验、工作模式、成长规律等全局性、战略性和前瞻性的重大理论与实践问题，力求具有现实性、指导性和较强的决策参考价值。

                2.一般培育项目选题：聚焦典型经验、典型案例等具体实践问题，力求具有鲜明的问题意识、较强的创新价值和较好的可操作性。

                三、选题的遴选和采用

                学校将组织相关领域专家学者对征集选题进行匿名评议，根据专家投票推荐情况遴选部分选题列入2019年度学生政工干部队伍科研项目申报范围。凡被正式列入选题范围的选题拟定人，承诺同意对所拟选题进行公开申报、公平竞争，不存在知识产权争议。立项时将优先考虑列入选题范围的拟定人。

                四、选题报送

                申请人根据选题类别与要求认真填写《2019年度东北师范大学学生政工干部队伍科研项目选题汇总表》（见附件1），并于2019年7月9日中午11：30前将电子版发送至chenx578@nenu.edu.cn，邮件主题请标注“创新发展项目+申报人姓名”字样，逾期不予受理。原则上，每个学院（部）、单位需提交重点培育项目选题1个，一般培育项目选题1个。
              </p>
            </div>
          </div>
          <div class="col-xs-3 notice_color1">
            <div class="notice_padding">
              <p class="notice_h3">
                关于征集“砥砺前行七十载 奋斗成就中国梦”第三届全省高校大学生讲思政课参赛作品的通知
              </p>
              <p class="notice_p">各学院（部）：

                为深入学习贯彻全国教育大会、全国高校思想政治工作会议、全国学校思想政治理论课教师座谈会精神，庆祝中华人民共和国成立70周年，不断增强学生学习思政课的主动性和获得感，按照教育部社科司关于开展习近平新时代中国特色社会主义思想大学习领航计划系列主题活动的通知要求，现面向全校征集“砥砺前行七十载
                奋斗成就中国梦”第三届全省高校大学生讲思政课参赛作品。现将有关事项通知如下：

                一、活动目标

                全校本科生可自主在思政课教师指导下组建参赛团队，围绕“马克思主义基本原理概论”“毛泽东思想和中国特色社会主义理论体系概论”“中国近现代史纲要”“思想道德修养与法律基础”“形势与政策”五门课程中的有关章节或专题进行教学设计、开展教学尝试，引导学生深化对思政课教学内容的认识，展现当代学生的马克思主义理论素养和精神风貌。教学内容要求观点正确、逻辑清晰、说理性强，教学设计要求构思精巧、创意独特、形式新颖、方法得当。

                二、参加对象

                所有全日制在校本科生。

                三、参赛流程

                1.各学院（部）推荐（2019年6月21日-7月5日）：每个团队上交15分钟讲课视频，以及报名表（附件），参与学校初选。

                2.省赛遴选（2019年7月15日-30日）：由高校思政课专家和各高校推荐的学生代表联合组成评委团，对视频进行盲评打分，评选出30支入围团队。

                3.省级复赛（2019年9月2日）：30支入围团队分别进行10分钟现场说课汇报（团队成员集体进行说课）。

                说课内容包括：教学目标、重点难点、教学方法、课程导入、教学环节、内容设计及参赛团队在学习习近平新时代中国特色社会主义思想上的收获，由思政课大赛评委团进行现场评选，选出15支团队进入决赛。团队说课内容要与报送的视频课程相一致。

                4.省级决赛（2019年9月3日）：复赛成绩排名前15名的团队，进行15分钟现场授课展示，回答评委团提出的相关问题，由评委团进行最终评选。

                四、相关要求

                1.参赛团队要求：参赛团队由1名指导教师和5名在校本科生组成，比赛过程中不允许调换或增减。

                2.视频材料要求：一是录制视频能够呈现入选团队选定的授课内容，形式上以主讲人讲课实录为主，以PPT课件配合为辅，提倡新颖的视听表现形式。二是视频画面清楚，不抖动、不倾斜，像素不低于720×576PIX。三是音频要求发音清晰，内容与视频画面同步。四是视频时长不超过15分钟（包括30秒片头），作品请标注讲授的课程题目、来源章节。五是视频中不得透露参赛学校和选手的个人信息。

                五、材料报送

                请各学院（部）按照要求，做好初赛组织和推荐报送工作，填写《高校大学生讲思政课大赛活动报名表》（附件），按要求完成课程录制，并将电子版刻成光盘或存入U盘。于2019年7月5日11:30前将报名表及视频材料送至学生处教育科（行政楼710室）。
              </p>
            </div>
          </div>
          <div class="col-xs-3 notice_color2">
            <div class="notice_padding">
              <p class="notice_h3">
                关于收看“闪亮的名字——2019最美高校辅导员/最美大学生发布仪式”的通知
              </p>
              <p class="notice_p">各位师生：


                由中宣部、教育部举办的“闪亮的名字——2019最美高校辅导员/最美大学生发布仪式”，将于6月21日20:07在中央电视台十二频道（CCTV-12）首播，6月22日9:45重播；中央电视台综合频道（CCTV-1）于
                6月22日13:14重播。我校政法学院2015级本科生刘强获评中宣部、教育部联合授予的“2019最美大学生”称号，并参加了发布仪式。欢迎广大师生届时观看。</p>
            </div>
          </div>
        </div>
      </div>

      <!-- 第二行 -->
      <div class="container">
        <div class="row">
          <div class="col-xs-3 notice_color2">
            <div class="notice_padding">
              <p class="notice_h3">
                关于召开学院（部）2018—2019学年学生工作述职会议暨学生工作评估工作的通知
              </p>
              <p class="notice_p">各学院（部）、学生工作各部门：

                关于学院（部）2018—2019学年学生工作述职会议暨学生工作评估工作的具体安排如下：

                一、时间与地点

                （一）各学院（部）学生工作述职

                时间：7月2日下午13:30。

                地点：本部校区学生就业指导服务中心一楼多功能厅（一）。

                参会人员：

                1.各学院（部）党委副书记、团委书记、专兼职辅导员；

                2.机关各学生工作职能部门全体工作人员。

                （二）学生工作评估

                时间：7月3日8:30至7月4日下午18:00。

                地点：本部校区学生就业指导服务中心一楼多功能厅（一）。

                参与测评人员：机关各学生工作职能部门负责人及工作人员。</p>
            </div>
          </div>
          <div class="col-xs-3 notice_color1">
            <div class="notice_padding">
              <p class="notice_h3">
                关于对本科生辅导员进行工作考核的通知
              </p>
              <p class="notice_p">各学院（部）：

                为全面了解我校辅导员工作情况，进一步提高我校辅导员队伍职业化、专业化水平，全面提升思想政治工作质量，党委学生工作部将对全校在岗本科生辅导员进行工作考核。

                一、考核原则

                考核本着公开、公平、公正的原则，定量考核与定性考核相结合，自评（述职）与他评相结合。

                二、考核范围

                目前在岗的全校本科生辅导员。包括专职辅导员、“1+3”“2+3”兼职辅导员。

                三、考核工作机构

                学校成立考核工作领导小组，负责本次考核工作的整体规划与具体落实：

                组　　长：马晓燕

                副 组 长：金 昕、刘 志、李亚员、王 娜、王宝鑫

                本部测评一组：孔洁珺（负责人）、魏义梅、吴晓庆、王 祎、霍奎先

                本部测评二组：蒋问津（负责人）、曹威威、聂庆国、周思瑞、于 鑫

                净月测评一组：杨成岭（负责人）、李雪梅、王 娇、翁 灏、王翘楚

                净月测评二组：樊泓池（负责人）、常 睿、郭宝付、赵 睿、马玉婷</p>
            </div>
          </div>
          <div class="col-xs-3 notice_color2">
            <div class="notice_padding">
              <p class="notice_h3">
                关于开展“青春有你，筑梦远方”2019届本科毕业生主题教育活动的通知
              </p>
              <p class="notice_p">各学院（部）：
                　　

                为做好我校2019届毕业生离校工作，给全体毕业生营造一个健康、文明、和谐、有序的毕业氛围，学校决定校、院（部）两级，联合开展“青春有你，筑梦远方”本科毕业生主题教育系列活动，激发毕业生感恩奉献之心、爱校荣校之情和报国成才之志。


                (一)学校层面

                　　1．“一份礼物寄情深”
                　　学校将继续拍摄制作《远方有你（2019）》主题歌曲MV，展现新时代东师人青春风采；学校推出“奶牛”形象毕业吉祥物，增强校园毕业文化氛围；学校将定制系列文创纪念品，赠予全体2019届本科毕业生，以留下永恒的东师纪念。

                2.“一亭回忆驻华年”

                学校将设计推出“东师毕业微型博物馆”。在两校区朗读亭集中展示大学四年的经典回忆元素，为全体本科毕业生打造毕业感言、毕业留念专属空间。全体毕业生可在此诉说对东师的不舍和对未来的期待，学校将依托微信、抖音等新媒体平台择优展播。

                3.“一抹笑颜致青春”

                学校将进一步丰富两校区毕业留影文化景观带内容，增设系列毕业元素的校园文化区域，安排吉祥物人偶与毕业生合影互动；面向全体毕业生开展“最美笑脸”毕业照征集活动，择优通过微信、抖音等新媒体平台进行系列展播，在“毕业微型博物馆”线下展示，为全体毕业生搭建展示青春风采的平台，留下美好记忆。

                4.“一曲歌唱咏芳华”

                学校将在毕业典礼等重要时间节点，面向全体毕业生开展《远方有你》、《师德公约》等校园歌曲传唱活动，营造和谐的毕业氛围，培养毕业生感恩情感与家国情怀。

                5.“一场晚会话离别”

                在毕业生即将离校之际，学校支持各学院（部）开展毕业晚会，并将统一在两校区搭建晚会舞台，为全体毕业生创建抒发不舍情愫、回忆青春时光、展示自我风采的平台。


              </p>
            </div>
          </div>
          <div class="col-xs-3 notice_color1">
            <div class="notice_padding">
              <p class="notice_h3">
                关于组织第十九届“理想与成才”报告团巡回报告会的通知
              </p>
              <p class="notice_p">各学院（部）：

                为在全校范围内营造崇尚先进、争当先进的良好风气，引导广大学生以身边先进典型为榜样，树立远大理想，激发学习兴趣与动力，学校决定面向全校学生开展第十九届“理想与成才”报告团巡回报告会，现将相关事宜通知如下。

                一、时间安排

                5月20日至5月26日

                二、组织形式

                本次巡讲采取“菜单式”集中巡讲的方式。各学院（部）可以根据本学院（部）的学科性质自主选择报告人进行报告，报告形式可自主把握。

                三、具体要求

                1.每个人报告时长在8分钟左右，各学院（部）可参考报告团成员名单及简介（见附件1），根据实际需要及具体时间安排，合理选择报告团成员（人数不限）进行巡讲。

                2.请各学院（部）负责人于5月13日11：30前将巡回报告需求表（见附件2）发至学生处邮箱（xueshengchu@nenu.edu.cn）；如各学院（部）巡回报告时间有冲突，由学生处统一协调。

                3.各学院（部）负责人为参会年级辅导员，请各学院（部）自行安排场地布置、人员组织、宣传报道等相关事宜。</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 通知公告   end -->

    <!-- 六个图标部分   start -->
    <div class="more">
      <div class="container">
        <div class="row">
          <div class="col-xs-5 ">
<%--            <div class="more_margin">--%>
<%--              新闻分类--%>
<%--            </div>--%>
            <div class="more_margin">
              <div class="more_padding">
                <a href="http://mail.nenu.edu.cn/"><img src="./Image/more4.png" alt=""></a>
              </div>
              <div class="more_padding">
                <a href="http://ids.nenu.edu.cn/amserver/UI/Login?goto=http://sas.nenu.edu.cn"><img src="./Image/more5.png" alt=""></a>
              </div>
              <div class="more_padding">
                <a href="webNav.jsp"><img src="./Image/more6.png" alt=""></a>
              </div>
            </div>
            <br>
          </div>
          <div class="col-xs-7 ">
            <div class="more_first">
              <p class="more_strong">@东北师范大学</p>
              <br>
              <p class="more_p">
                哪个瞬间让你感到你到家了呢？从期末周连夜的奋战中解脱出来，踏上了返乡的行程。便捷的交通缩短了距离，恍惚之间一日万里，回家的情感或许不再那么深重。但是，总会在一个瞬间，或是家乡特有的滋味，或是父母的唠叨，或是久未谋面的同伴，或是无拘无束的满足，牵动了你幽微的情感，呼唤起儿时的记忆......
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 六个图标部分   end -->



  </div>
  <!-- 中间内容两侧空白  end -->

  <!-- 页脚 -->
  <div class="root">
    <div class="root_margin">
      <p>版权所有：东北师范大学党委学生工作部（处） <strong>|</strong> 地址：吉林省长春市人民大街5268号 <strong>|</strong> 邮编：130024 </p>
    </div>
  </div>
</div>




<!-- 写一个相对于浏览器的回到顶部的按钮 -->
<div class="goToTop">
  <a href="#"><img src="./Image/gotop.png" alt=""></a>
</div>



<!-- 搜索模态框 -->
<form action="/search" method="POST">
  <div class="modal" id="sousuo">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button class="close" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span>
          </button>
          <h4 class="modal-text">请输入要搜索的内容</h4>
          <input type="text" class="form-control" name="key">
        </div>
        <div class="modal-body text-center">
          <button class="btn btn-primary" data-dismiss="modal">取 消</button>
          <input class="btn btn-primary" type="submit" value="搜索" />
        </div>
      </div>
    </div>
  </div>
</form>
</body>

</html>