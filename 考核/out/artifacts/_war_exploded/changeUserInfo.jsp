<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/22
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <meta charset="UTF-8">
    <script src="JS/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
    <link href="CSS/userInfo.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <script src="https://unpkg.com/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <link href="../CSS/change.css" rel="stylesheet" type="text/css">
</head>

<body>
<div id="app">
    <el-container style="height: 700px; border: 1px solid #eee">
        <el-aside width="200px" style="background-color: rgb(238, 241, 246)">
            <el-menu>
                <el-submenu>
                    <template slot="title"><i class="el-icon-message"></i>个人信息</template>
                    <el-menu-item-group>
                        <el-menu-item index="1-1" onclick="show(1)">详细信息</el-menu-item>
                        <el-menu-item index="1-2" onclick="show(2)">编辑资料</el-menu-item>
                        <el-menu-item index="1-3" onclick="show(3)">修改密码</el-menu-item>
                    </el-menu-item-group>
                </el-submenu>
            </el-menu>
        </el-aside>

        <el-container>
            <el-header style="text-align: right; font-size: 12px">
                <span>${username}</span>
                <el-dropdown>
                    <i class="el-icon-setting" style="margin-right: 15px"></i>
                    <el-dropdown-menu slot="dropdown">
                        <el-dropdown-item onclick="show(1)">详细信息</el-dropdown-item>
                        <el-dropdown-item onclick="show(2)">编辑资料</el-dropdown-item>
                        <el-dropdown-item onclick="show(3)">修改密码</el-dropdown-item>
                        <el-dropdown-item><a href="index.jsp">退出登录</a></el-dropdown-item>
                    </el-dropdown-menu>
                </el-dropdown>
            </el-header>



            <el-main class="main_bg">
                <!-- 个人信息   开始 -->
                <div id="main_show1">
                    <div class="show1_center">
                        <el-upload class="avatar-uploader2" action="https://jsonplaceholder.typicode.com/posts/"
                                   :show-file-list="false" :on-success="handleAvatarSuccess"
                                   :before-upload="beforeAvatarUpload">
                            <img v-if="imageUrl" :src="imageUrl" class="avatar">
                            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                        </el-upload>
                        <div class="show1_margin">
                            <hr>
                        </div>
                        <div class="show1_margin">
                            <p class="show1_p">用户名:${username}</p>
                        </div>
                        <div class="show1_margin">
                            <p class="show1_p">性<span class="dis_apper">子</span>别:${sex}</p>
                        </div>
                        <div class="show1_margin">
                            <p class="show1_p">年<span class="dis_apper">子</span>龄:${age}</p>
                        </div>
                    </div>
                </div>
                <!-- 个人信息   结束 -->


                <!-- 修改个人信息   开始 -->
                <div id="main_show2">
                    <div class="show2_center">
                        <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px"
                                 class="demo-ruleForm" method="post" action="/changeInfo">
                            <el-form-item label="原用户名" prop="olduser">
                                <el-input v-model="ruleForm.olduser" name="username" placeholder="请输入原用户名"
                                          id="myuser"></el-input>
                            </el-form-item>
                            <el-form-item label="新用户名" prop="newuser">
                                <el-input v-model="ruleForm.newuser" name="userNewname" placeholder="请输入新用户名"
                                          id="myuser2">
                                </el-input>
                            </el-form-item>
                            <el-form-item label="年龄" prop="age">
                                <el-input v-model="ruleForm.age" placeholder="请输入年龄" name="age">
                                </el-input>
                            </el-form-item>
                            <el-form-item label="性别" prop="sex">
                                <el-radio-group v-model="ruleForm.sex" name="sex">
                                    <el-radio label="man" value="man" name="sex"></el-radio>
                                    <el-radio label="woman" value="woman" name="sex"></el-radio>
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item>
                                <el-button native-type="submit" @click="submitForm('ruleForm')" onclick="check2()">修改
                                </el-button>
                                <el-button @click="resetForm('ruleForm')">重置</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </div>
                <!-- 修改个人信息   结束 -->


                <!-- 修改密码   开始 -->
                <div id="main_show3">
                    <div class="show3_center">
                        <el-form :model="ruleForm2" :rules="rules2" ref="ruleForm2" label-width="100px"
                                 class="demo-ruleForm" mathod="post" action="/changePass">
                            <el-form-item label="用户名" prop="user">
                                <el-input v-model="ruleForm2.user" name="username" placeholder="请输入用户名"></el-input>
                            </el-form-item>
                            <el-form-item label="旧密码" prop="password">
                                <el-input type="password" v-model="ruleForm2.password" placeholder="请输入密码"
                                          id="upass" name="oldpass">
                                    <el-button slot="suffix" class="el-input__icon el-icon-view" onclick="onLook()">
                                    </el-button>
                                </el-input>
                            </el-form-item>
                            <el-form-item label="新密码" prop="password2">
                                <el-input type="password" v-model="ruleForm2.password2" placeholder="请输入密码"
                                          id="upass2" name="newpass">
                                    <el-button slot="suffix" class="el-input__icon el-icon-view"
                                               onclick="onLook2()">
                                    </el-button>
                                </el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button native-type="submit" onclick="check()">修改
                                </el-button>
                                <el-button @click="resetForm('ruleForm')">重置</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </div>
                <!-- 修改密码   结束 -->

            </el-main>


        </el-container>
    </el-container>


</div>
</body>
<script src="../JS/change.js" type="text/javascript" charset="utf-8"></script>

</html>