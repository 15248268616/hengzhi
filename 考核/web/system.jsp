<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/24
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<style>
    .hid_den{
        display:none;
    }

    .form-control{
        background-color: rgba(255,255,255,0.4) !important;
        padding-left: 10px !important;
        height: 45px !important;
        border-radius: 5px !important;
        width: 300px !important;
    }
    .show_center{
        width: 410px;
        height: 400px;
        margin: 100px auto;
        background-color: rgba(255,255,255,0.6);
        border-radius: 30px;
        padding: 50px;
    }

    .show2_center{
        width: 420px;
        height: 700px;
        margin: 0 auto;
        background-color: rgba(255,255,255,0.6);
        border-radius: 30px;
        padding: 50px;
    }

    .show3_center{
        width: 410px;
        height: 550px;
        margin: 70px auto;
        background-color: rgba(255,255,255,0.6);
        border-radius: 30px;
        padding: 50px;
    }

    .center{
        text-align: center !important;
        margin: 0 auto !important;
    }
</style>
<head>
    <meta charset="UTF-8">
    <script src="JS/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <link href="CSS/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="JS/bootstrap/3.3.6/bootstrap.min.js"></script>
    <link href="CSS/system.css" rel="stylesheet" type="text/css">


</head>

<body>
<div id="app">
    <el-container style="height: 730px">



        <!-- 头部---开始 -->
        <el-header>
            <div class="left">
                后台管理系统
            </div>
            <div id="Time"></div>
            <div class="right">
                欢迎你,${username}
                <strong>|</strong>
                <a href="index.jsp">回到首页</a>
                <strong>|</strong>
                <a href="index.jsp">退出管理</a>
            </div>
        </el-header>
        <!-- 头部---结束 -->



        <el-container>



            <!-- 侧边栏---开始 -->
            <el-aside width="200px">
                <el-menu>
                    <el-submenu>
                        <template slot="title"><i class="el-icon-setting"></i>新闻管理</template>
                        <el-menu-item-group>
                            <el-menu-item index="1-1" onclick="show(1)">分类管理</el-menu-item>
                            <el-menu-item index="1-2" onclick="show(2)">新闻列表</el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
                </el-menu>
                <el-menu>
                    <el-submenu>
                        <template slot="title"><i class="el-icon-setting"></i>公告管理</template>
                        <el-menu-item-group>
                            <el-menu-item index="2-1" onclick="show(3)">公告列表</el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
                </el-menu>
                <el-menu>
                    <el-submenu>
                        <template slot="title"><i class="el-icon-setting"></i>管理员管理</template>
                        <el-menu-item-group>
                            <el-menu-item index="3-1" onclick="show(4)">管理员列表</el-menu-item>
                        </el-menu-item-group>
                    </el-submenu>
                </el-menu>
            </el-aside>
            <!-- 侧边栏---结束 -->



            <!-- 主要显示部分---开始 -->
            <el-main class="main_bg">


                <!-- 分类管理---开始 -->

                <!-- 分类管理--本体--开始 -->
                <div id="main_show1">
                    <div class="new_show_bg">
                        <table class="table table-bordered table-hover">
                            <caption class="h3 text-center text-info">新闻分类</caption>
                            <thead>
                            <tr>
                                <th class="text-center">类名</th>
                                <th class="text-center">添加时间</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text-center" v-for="(sort,index) in sorts">
                                <td>{{sort.sortName}}</td>
                                <td>{{sort.addTime}}</td>
                                <td>
                                    <button class="btn btn-default btn-sm" onclick="show(5)" id="check" v-on:click="nowIndex = index">查看</button>
                                    <button class="btn btn-info btn-sm" onclick="show(6)">修改</button>
                                    <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#del"
                                            v-on:click="nowIndex1 = index">删除</button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" class="text-right">
                                    <button class="btn btn-info btn-sm" onclick="show(7)">添加</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 分类管理--本体--结束 -->

                <!-- 分类管理--查看--开始 -->
                <div id="main_show5" class="hid_den">
                    <div class="new_show_bg">
                        <table class="table table-bordered table-hover">
                            <caption class="h3 text-center text-info">新闻列表</caption>
                            <thead>
                            <tr>
                                <th class="text-center">标题</th>
                                <th class="text-center">作者</th>
                                <th class="text-center">创建时间</th>
                                <th class="text-center">最后修改</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text-center" v-for="list in (nowIndex==0?list_1:(nowIndex==1?list_2:(nowIndex==2?list_3:(nowIndex==3?list_4:(nowIndex=4?list_5:(nowIndex==5?list_6:''))))))" >
<%--                                <td>{{(sorts[nowIndex]?sorts[nowIndex].sortId:'')==list.sortId?list.title:''}}</td>--%>
<%--                                <td>{{(sorts[nowIndex]?sorts[nowIndex].sortId:'')==list.sortId?list.author:''}}</td>--%>
<%--                                <td>{{(sorts[nowIndex]?sorts[nowIndex].sortId:'')==list.sortId?list.writeTime:''}}</td>--%>
<%--                                <td>{{(sorts[nowIndex]?sorts[nowIndex].sortId:'')==list.sortId?list.alterTime:''}}</td>--%>
                                <td>{{list.title}}</td>
                                <td>{{list.author}}</td>
                                <td>{{list.writeTime}}</td>
                                <td>{{list.alterTime}}</td>
                            </tr>
                            <!-- <tr>
                                <td colspan="8" class="text-right">
                                    <button class="btn btn-info btn-sm">添加</button>
                                </td>
                            </tr> -->
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 分类管理--查看--结束 -->

                <!-- 分类管理--修改--开始 -->
                <div id="main_show6"  class="hid_den">
                    <div class="show_center">
                        <form action="/changeSort" method="post">
                            <p class="h3 text-center text-info">请输入原类名：</p>
                            <input type="text" class="form-control text-center" name="sortName">
                            <p class="h3 text-center text-info">请输入新类名</p>
                            <input type="text" class="form-control text-center" name="newsortName">
                            <input type="submit" class="btn btn-info" value="提交" />
                        </form>
                    </div>
                </div>
                <!-- 分类管理--修改--结束 -->

                <!-- 分类管理--添加--开始 -->
                <div id="main_show7"  class="hid_den">
                    <div class="show_center">
                        <form action="/addSort" method="post">
                            <p class="h3 text-center text-info">请要添加的类名：</p>
                            <input type="text" class="form-control text-center" name="newsort">
                            <input type="submit" class="btn btn-info" value="提交" />
                        </form>
                    </div>
                </div>
                <!-- 分类管理--添加--结束 -->

                <!-- 分类管理---结束 -->


                <!-- 新闻列表---开始 -->

                <!-- 新闻列表--本体--开始 -->
                <div id="main_show2" class="hid_den">
                    <div class="new_show_bg">
                        <table class="table table-bordered table-hover">
                            <caption class="h3 text-center text-info">新闻列表</caption>
                            <thead>
                            <tr>
                                <th class="text-center">标题</th>
                                <th class="text-center">作者</th>
                                <th class="text-center">创建时间</th>
                                <th class="text-center">最后修改</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text-center" v-for="(newss,index2) in news">
                                <td>{{newss.title}}</td>
                                <td>{{newss.author}}</td>
                                <td>{{newss.writeTime}}</td>
                                <td>{{newss.alterTime}}</td>
                                <td>
                                    <button class="btn btn-info btn-sm" onclick="show(9)">修改</button>
                                    <button class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#del2"
                                            v-on:click="nowIndex2 = index2">删除</button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" class="text-right">
                                    <button class="btn btn-info btn-sm" onclick="show(10)">添加</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 新闻列表--本体--结束 -->

                <!-- 新闻列表--查看--开始 -->
                <!-- <div id="main_show8"  class="hid_den">
                        新闻列表--查看
                </div> -->
                <!-- 新闻列表--查看--结束 -->

                <!-- 新闻列表--修改--开始 -->
                <div id="main_show9"  class="hid_den">
                    <div class="show2_center">
                        <form action="/changeNews" method="post">
                            <p class="h3 text-center text-info">请输入原标题：</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="title">
                            </div>
                            <p class="h3 text-center text-info">请输入新标题</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="newTitle">
                            </div>
                            <p class="h3 text-center text-info">请输入新作者</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="author">
                            </div>
                            <p class="h3 text-center text-info">请输入新闻内容</p>
                            <textarea cols="40" rows="1" name="content" style="background-color: rgba(255,255,255,0.6);border: 0;border-radius: 5px;padding: 5px;"></textarea>
                            <input type="submit" value="提交" class="btn btn-info"/>
                        </form>
                    </div>
                </div>
                <!-- 新闻列表--修改--结束 -->

                <!-- 新闻列表--添加--开始 -->
                <div id="main_show10"  class="hid_den">
                    <div class="show2_center">
                        <form action="/addNews" method="post">
                            <p class="h3 text-center text-info">请输入要添加的标题：</p>
                            <input type="text" class="form-control text-center" name="title">
                            <p class="h3 text-center text-info">请输入要添加的作者：</p>
                            <input type="text" class="form-control text-center" name="author">
                            <p class="h3 text-center text-info">请输入要添加的内容：</p>
                            <textarea cols="40" rows="1" name="content" style="background-color: rgba(255,255,255,0.6);border: 0;border-radius: 5px;padding: 5px;"></textarea>
                            <input type="submit" class="btn btn-info" value="提交" />
                        </form>
                    </div>
                </div>
                <!-- 新闻列表--结束--开始 -->

                <!-- 新闻列表---结束 -->


                <!-- 公告列表---开始 -->

                <!-- 公告列表--本体--开始 -->
                <div id="main_show3" class="hid_den">
                    <div class="new_show_bg">
                        <table class="table table-bordered table-hover">
                            <caption class="h3 text-center text-info">公告列表</caption>
                            <thead>
                            <tr>
                                <th class="text-center">标题</th>
                                <th class="text-center">作者</th>
                                <th class="text-center">创建时间</th>
                                <th class="text-center">最后修改</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text-center" v-for="(notice,index3) in notices">
                                <td>{{notice.title}}</td>
                                <td>{{notice.author}}</td>
                                <td>{{notice.writeTime}}</td>
                                <td>{{notice.alterTime}}</td>
                                <td>
                                    <button class="btn btn-info btn-sm"  onclick="show(12)">修改</button>
                                    <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#del5"
                                            v-on:click="nowIndex3 = index3">删除</button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" class="text-right">
                                    <button class="btn btn-info btn-sm"  onclick="show(11)">添加</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 公告列表--本体--结束 -->

                <!-- 公告列表--查看--开始 -->
<%--                <div id="main_show11"  class="hid_den">--%>
<%--                    公告列表--查看--%>
<%--                </div>--%>
                <!-- 公告列表--查看--结束 -->

                <!-- 公告列表--修改--开始 -->
                <div id="main_show12"  class="hid_den">
                    <div class="show2_center">
                        <form action="/changeNotice" method="post">
                            <p class="h3 text-center text-info">请输入原标题：</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="title">
                            </div>
                            <p class="h3 text-center text-info">请输入新标题</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="newTitle">
                            </div>
                            <p class="h3 text-center text-info">请输入新作者</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="author">
                            </div>
                            <p class="h3 text-center text-info">请输入新闻内容</p>
                            <textarea cols="40" rows="1" name="content" style="background-color: rgba(255,255,255,0.6);border: 0;border-radius: 5px;padding: 5px;"></textarea>
                            <input type="submit" value="提交" class="btn btn-info"/>
                        </form>
                    </div>
                </div>
                <!-- 公告列表--修改--结束 -->

                <!-- 公告列表--添加--开始 -->
                <div id="main_show11"  class="hid_den">
                    <div class="show2_center">
                        <form action="/addNotice" method="post">
                            <p class="h3 text-center text-info">请输入要添加的标题：</p>
                            <input type="text" class="form-control text-center" name="title">
                            <p class="h3 text-center text-info">请输入要添加的作者：</p>
                            <input type="text" class="form-control text-center" name="author">
                            <p class="h3 text-center text-info">请输入要添加的内容：</p>
                            <textarea cols="40" rows="1" name="content" style="background-color: rgba(255,255,255,0.6);border: 0;border-radius: 5px;padding: 5px;"></textarea>
                            <input type="submit" class="btn btn-info" value="提交" />
                        </form>
                    </div>
                </div>
                <!-- 公告列表--添加--结束 -->

                <!-- 公告列表---结束 -->


                <!-- 管理员列表---开始 -->

                <!-- 管理员列表--本体--开始 -->
                <div id="main_show4" class="hid_den">
                    <div class="new_show_bg">
                        <table class="table table-bordered table-hover">
                            <caption class="h3 text-center text-info">管理员列表</caption>
                            <thead>
                            <tr>
                                <th class="text-center">姓名</th>
                                <th class="text-center">性别</th>
                                <th class="text-center">年龄</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="text-center" v-for="(user,index4) in users">
                                <td>{{user.username}}</td>
                                <td>{{user.sex}}</td>
                                <td>{{user.age}}</td>
                                <td>
                                    <button class="btn btn-info btn-sm"  onclick="show(8)">修改</button>
                                    <button class="btn btn-danger btn-sm"  data-toggle="modal" data-target="#del4"
                                            v-on:click="nowIndex4 = index4">删除</button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="8" class="text-right">
                                    <button class="btn btn-info btn-sm" onclick="location='managerregister.jsp'">添加</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- 管理员列表--本体--结束 -->

                <!-- 管理员列表--查看--开始 -->
                <!-- <div id="main_show14"  class="hid_den">
                        管理员列表--查看
                </div> -->
                <!-- 管理员列表--查看--结束 -->

                <!-- 管理员列表--修改--开始 -->
                <div id="main_show8"  class="hid_den">
                    <div class="show2_center">
                        <form action="/changeManager" method="post">
                            <p class="h3 text-center text-info">请输入原姓名：</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="username">
                            </div>
                            <p class="h3 text-center text-info">请输入要修改的姓名</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="newusername">
                            </div>
                            <p class="h3 text-center text-info">请输入要修改的性别</p>
                            <div class="center">
                                <input type="text" class="form-control text-center" name="sex">
                            </div>
                            <p class="h3 text-center text-info">请输入要修改的年龄</p>
                            <input type="text" class="form-control text-center" name="age">
                            <input type="submit" value="提交" class="btn btn-info"/>
                        </form>
                    </div>
                </div>
                <!-- 管理员列表--修改--结束 -->

                <!-- 管理员列表--添加--开始 -->
<%--                <div id="main_show8"  class="hid_den">--%>
<%--                    <div class="show3_center">--%>
<%--                        <form action="" method="post">--%>
<%--                            <p class="h3 text-center text-info">请要添加的用户名：</p>--%>
<%--                            <input type="text" class="form-control text-center" name="username">--%>
<%--                            <p class="h3 text-center text-info">请要添加的用户性别：</p>--%>
<%--                            <input type="text" class="form-control text-center" name="sex">--%>
<%--                            <p class="h3 text-center text-info">请要添加的用户年龄：</p>--%>
<%--                            <input type="text" class="form-control text-center" name="newsort">--%>
<%--                            <input type="submit" class="btn btn-info" value="提交" />--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <!-- 管理员列表--添加--结束 -->

                <!-- 管理员列表---结束 -->




            </el-main>
            <!-- 主要显示部分---结束 -->
        </el-container>



        <!-- 页脚---开始 -->
        <el-footer>
            <img src="./Image/NENU_bg.png" alt="">
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
        </el-footer>
        <!-- 页脚---结束 -->

    </el-container>




    <!-- 删除模态框1 -->
    <div class="modal" id="del">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="modal-text">
                        确认要删除："{{sorts[nowIndex1]?sorts[nowIndex1].sortName:''}}" 吗？</h4>
                </div>
                <div class="modal-body text-center">
                    <button class="btn btn-primary" data-dismiss="modal">取 消</button>
                    <button class="btn btn-primary" data-dismiss="modal" v-on:click="deletSort()">确 认</button>
                </div>
            </div>
        </div>
    </div>




    <!-- 删除模态框2 -->
    <div class="modal" id="del2">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="modal-text">
                        确认要删除："{{news[nowIndex2]?news[nowIndex2].title:''}}" 吗？</h4>
                </div>
                <div class="modal-body text-center">
                    <button class="btn btn-primary" data-dismiss="modal">取 消</button>
                    <button class="btn btn-primary" data-dismiss="modal" v-on:click="deletNews()">确 认</button>
                </div>
            </div>
        </div>
    </div>






    <!-- 删除模态框3 -->
    <div class="modal" id="del5">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="modal-text">
                        确认要删除："{{notices[nowIndex3]?notices[nowIndex3].title:''}}" 吗？</h4>
                </div>
                <div class="modal-body text-center">
                    <button class="btn btn-primary" data-dismiss="modal">取 消</button>
                    <button class="btn btn-primary" data-dismiss="modal" v-on:click="deletNotice()">确 认</button>
                </div>
            </div>
        </div>
    </div>




    <!-- 删除模态框4 -->
    <div class="modal" id="del4">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="modal-text">
                        确认要删除："{{users[nowIndex4]?users[nowIndex4].username:''}}" 吗？</h4>
                </div>
                <div class="modal-body text-center">
                    <button class="btn btn-primary" data-dismiss="modal">取 消</button>
                    <button class="btn btn-primary" data-dismiss="modal" v-on:click="deletUser()">确 认</button>
                </div>
            </div>
        </div>
    </div>



    <!-- 添加模态框 -->
    <div class="modal" id="add">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="modal-text">
                        请输入要添加的类名：
                    </h4>
                    <input type="text" id="sortName" class="form-control" v-model="sort.name" placeholder="请输入类名">
                <div class="modal-body text-center">
                    <button class="btn btn-primary" data-dismiss="modal">取 消</button>
                    <button class="btn btn-primary" data-dismiss="modal" v-on:click="addSort()">确 认</button>
                </div>
            </div>
        </div>
    </div>






</div>









<!-- 新闻分类管理模态框 -->

<!-- 添加 -->
<!-- <div class="modal" id="new_manager_check">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal">
                        <span class="glyphicon glyphicon-remove"></span>
                    </button>
                    <h4 class="modal-text">
                        test1</h4>
                </div>
                <div class="modal-body text-center">
                    <button class="btn btn-primary" data-dismiss="modal">取 消</button>
                    <button class="btn btn-primary" data-dismiss="modal">确 认</button>
                </div>
            </div>
        </div>
    </div> -->
</body>

<script>




    // function dissplay(){
    //     var test = document.getElementsByTagName("td");
    //     // console.log("!!");
    //     for (var i=0;i<test.length;i++){
    //         if (test[i].value == '1')
    //             $("td").addClass("hid_den");
    //     }
    // }
    //
    // var timer1 =  setInterval(function () {
    //     dissplay();
    // },1000);



    var vm = new Vue({
        el: '#app',
        data: {
            sort:{},
            newss:{},
            notice:{},
            user:{},
            nowIndex: 1,
            nowIndex1: -1,
            nowIndex2: -1,
            nowIndex3: -1,
            nowIndex4: -1,
            sorts:${sortlist},
            news:${newslist},
            notices:${noticelist},
            users:${userlist},
            list_1:${list1},
            list_2:${list2},
            list_3:${list3},
            list_4:${list4},
            list_5:${list5},
            list_6:${list6},
        },
        methods: {
            addSort: function () {
                this.sorts.push(this.sort);
                this.sort = {};
            },
            deletSort: function () {
                this.sorts.splice(this.nowIndex1, 1);
            },
            deletNews: function () {
                this.news.splice(this.nowIndex2, 1);
            },
            deletNotice: function () {
                this.notices.splice(this.nowIndex3, 1);
            },
            deletUser: function () {
                this.users.splice(this.nowIndex4, 1);
            },
        }
    })

    // vm.list_5 = vm.list_5.concat(vm.list_6);
    // vm.list_4 = vm.list_4.concat(vm.list_5);
    // vm.list_3 = vm.list_3.concat(vm.list_4);
    // vm.list_2 = vm.list_2.concat(vm.list_3);
    // vm.list_1 = vm.list_1.concat(vm.list_2);

    // mian 内容切换
    var max = 12;
    var now = 1;

    function $(id) {
        return document.getElementById(id);
    }

    function show(flag) {
        if (flag) {
            now = flag;
        }

        for (var i = 1; i <= max; i++) {
            if (i == now) {
                $("main_show" + now).style.display = "block";
            } else {
                $("main_show" + i).style.display = "none";
            }
        }
        if (now == max) {
            now = 1;
        } else {
            now++;
        }
    }

    window.onload = function () {
        show();
    }



    // 实时时间显示
    $(function () {
        CurrentTime();
    })

    function CurrentTime() {
        var date = new Date();
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var hour = date.getHours();
        var minute = date.getMinutes();
        var second = date.getSeconds();
        month = month < 10 ? ("0" + month) : month;
        day = day < 10 ? ("0" + day) : day;
        hour = hour < 10 ? ("0" + hour) : hour;
        minute = minute < 10 ? ("0" + minute) : minute;
        second = second < 10 ? ("0" + second) : second;
        var Timer = year + '-' + month + '-' + day + ' ' + hour + ':' + minute + ':' + second;
        $("#Time").html(Timer);
        setTimeout(function () {
            CurrentTime();
        }, 1000);
    }



    $("#check").click(function(){
        var test233 = $("td");
        for(i = 0;i < 14;i++){
            if(!test233[i].value){
                this.addClass("hid_den")
            }
        }
    })

</script>
</html>
