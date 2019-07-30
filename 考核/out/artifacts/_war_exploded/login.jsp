<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/21
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <meta charset="UTF-8">
    <script src="https://cdn.bootcss.com/jquery/3.0.0/jquery.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
    <link rel="stylesheet" href="CSS/login2.css" type="text/css">

</head>

<body>
<div class="bg">
    <div id="app" class="container_body">
        <div class="container">
            <div class="title">
                <p>登录</p>
            </div>
            <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm"
            method="post" action="/login">
                <el-form-item label="账号" prop="user" >
                    <el-input v-model="ruleForm.user" placeholder="请输入账号" type="text" name="username"
                    id="username">
                    </el-input>

                </el-form-item>
                <el-form-item label="密码" prop="password">
                    <el-input type="password" v-model="ruleForm.password" placeholder="请输入密码" id="password"
                    name="password" >
                        <el-button slot="suffix" class="el-input__icon el-icon-view" onclick="onLook()"></el-button>
                    </el-input>
                </el-form-item>
                <el-form-item label="验证码" prop="code">
                    <el-input v-model="ruleForm.code" placeholder="请输入验证码" id="code" name="code">
                        <template slot="append"><img src="${pageContext.request.contextPath}/ArtiCode"  id="code"></template>
                    </el-input>
                </el-form-item>
                <el-form-item>
                    <el-button native-type="submit"  >登录</el-button>
                    <el-button navite-type="reset"  @click="resetForm('ruleForm')"  >重置</el-button>
                </el-form-item>
            </el-form>
        </div>
    </div>
</div>
</body>
<script src="https://unpkg.com/vue/dist/vue.js"></script>
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script src="../JS/login.js"></script>
<script>
    function onLook() {
        var oUlook = document.getElementById("password")
        if (oUlook.type == "password") {
            oUlook.type = "text";
        } else {
            oUlook.type = "password";
        }
    }
</script>
</html>