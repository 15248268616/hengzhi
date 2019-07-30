<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/21
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>管理员注册</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="CSS/managerregister.css">
</head>

<body class="bg">
<div id="app" class="container_body">
    <div class="container">
        <div class="title">
            <p>注册</p>
        </div>
        <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm"
                 method="post" action="/addManager">
            <el-form-item label="账号" prop="user">
                <el-input v-model="ruleForm.user" name="username" type="text"></el-input>
            </el-form-item>
            <el-form-item label="密码" prop="password">
                <el-input type="password" v-model="ruleForm.password" placeholder="请输入密码" id="upass" name="password">
                    <el-button slot="suffix" class="el-input__icon el-icon-view" onclick="onLook()">
                    </el-button>
                </el-input>
            </el-form-item>
            <el-form-item label="确认密码" prop="password2">
                <el-input type="password" v-model="ruleForm.password2" placeholder="请输入密码" id="upass2" name="upass2">
                    <el-button slot="suffix" class="el-input__icon el-icon-view" onclick="onLook2()">
                    </el-button>
                </el-input>
            </el-form-item>
            <el-form-item label="年龄" prop="age">
                <el-input v-model="ruleForm.age" placeholder="请输入年龄" type="text" name="age">
                </el-input>
            </el-form-item>
            <el-form-item label="性别" prop="sex">
                <el-radio-group v-model="ruleForm.sex" name="sex">
                    <el-radio label="man" value="man" name="sex"></el-radio>
                    <el-radio label="woman" value="woman" name="sex"></el-radio>
                </el-radio-group>
            </el-form-item>
            <el-form-item>
                <el-button native-type="submit" onclick="check()">立即注册</el-button>
                <el-button @click="resetForm('ruleForm')">重置</el-button>
            </el-form-item>
        </el-form>
    </div>
</div>
</body>
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script src="js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="JS/managerregister.js"></script>

</html>