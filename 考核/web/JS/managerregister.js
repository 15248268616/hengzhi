var vm = new Vue({
    el: '#app',
    data: {
        ruleForm: {
            user: '',
            age: '',
            password: '',
            password2: '',
            sex: '',
        },
        rules: {
            user: [{
                required: true,
                message: '请输入账号',
                trigger: 'blur'
            },
                {
                    min: 4,
                    max: 20,
                    message: '账号长度在6到20位',
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
        }

    },
    methods: {
        submitForm(formName) {
            this.$refs[formName].validate((valid) => {
                if (valid) {
                    alert('submit!');
                } else {
                    console.log('error submit!!');
                    return false;
                }
            });
        },
        resetForm(formName) {
            this.$refs[formName].resetFields();
        },
    }
})

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
    if (oUpass.value != oUpass2.value){
        alert("两次密码不相同");
    }
}

$("#upass").blur(function () {
    check();
});

$("#upass2").blur(function () {
    check();
});