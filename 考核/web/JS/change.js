var vm = new Vue({
    el: '#app',
    data: {
        imageUrl: './headimg/3.jpg',
        ruleForm: {
            olduser: '',
            newuser: '',
            age: '',
            sex: '',
        },
        ruleForm2: {
            user: '',
            password: '',
            password2: '',
        },
        rules: {
            olduser: [{
                required: true,
                message: '请输入原用户名',
                trigger: 'blur'
            },
                {
                    min: 4,
                    max: 20,
                    message: '用户名长度在4到20位',
                    trigger: 'blur'
                }
            ],
            newuser: [{
                required: true,
                message: '请输入新用户名',
                trigger: 'blur'
            },
                {
                    min: 4,
                    max: 20,
                    message: '用户名长度在4到20位',
                    trigger: 'blur'
                }
            ],
            age: [{
                required: true,
                message: '请输入年龄',
                trigger: 'blur'
            },
                {
                    min: 1,
                    max: 2,
                    message: '你还想是啥年龄',
                    trigger: 'blur'
                }
            ],
            sex: [{
                required: true,
                message: '请选择你的性别',
                trigger: 'change'
            }],
        },
        rules2: {
            user: [{
                required: true,
                message: '请输入用户名',
                trigger: 'blur'
            },
                {
                    min: 4,
                    max: 20,
                    message: '用户名长度在4到20位',
                    trigger: 'blur'
                }
            ],
            password: [{
                required: true,
                message: '请输入密码',
                trigger: 'blur'
            },
                {
                    min: 6,
                    max: 20,
                    message: '密码由6到20位字符组成',
                    trigger: 'blur'
                }
            ],
            password2: [{
                required: true,
                message: '请输入密码',
                trigger: 'blur'
            },
                {
                    min: 6,
                    max: 20,
                    message: '密码由6到20位字符组成',
                    trigger: 'blur'
                }
            ],
        }
    },
    methods: {
        handleAvatarSuccess(res, file) { //上传图片
            this.imageUrl = URL.createObjectURL(file.raw);
        },
        beforeAvatarUpload(file) { //上传图片
            const isJPG = file.type === 'image/jpeg';
            const isLt2M = file.size / 1024 / 1024 < 2;

            if (!isJPG) {
                this.$message.error('上传头像图片只能是 JPG 格式!');
            }
            if (!isLt2M) {
                this.$message.error('上传头像图片大小不能超过 2MB!');
            }
            return isJPG && isLt2M;
        },
        submitForm(formName) { //错误提示
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.success_not();
                } else {
                    this.error_mes();
                    return false;
                }
            });
        },
        submitForm2(formName) { //错误提示
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    // this.success_not();
                } else {
                    this.error_mes();
                    return false;
                }
            });
        },
        resetForm(formName) { //错误提示
            this.$refs[formName].resetFields();
        },
        error_mes() { //头部的错误提示
            this.$message.error('检查一下错误小老弟');
        },
        success_not() { //成功提示
            this.$notify({
                title: '成功',
                message: '修改成功',
                type: 'success'
            });
        },
    }
})


var max = 3;
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


function onLook() {
    var oUlook = document.getElementById("upass")
    if (oUlook.type == "password") {
        oUlook.type = "text";
    } else {
        oUlook.type = "password";
    }
}

function onLook2() {
    var oUlook = document.getElementById("upass2")
    if (oUlook.type == "password") {
        oUlook.type = "text";
    } else {
        oUlook.type = "password";
    }
}

function check() {
    var oUpass = document.getElementById("upass")
    var oUpass2 = document.getElementById("upass2")
    if (oUpass.value == oUpass2.value) {
        alert("新旧密码不能相同");
    }
}

$("#upass").blur(function () {
    check();
});

$("#upass2").blur(function () {
    check();
});

function check2() {
    var myuser = document.getElementById("myuser")
    var myuser2 = document.getElementById("myuser2")
    if (myuser.value == myuser2.value) {
        alert("新旧用户名不能相同");
        vm.error_mes();
    }
}

$("#myuser").blur(function () {
    check2();
});

$("#myuser2").blur(function () {
    check2();
});