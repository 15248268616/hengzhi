var vm = new Vue({
    el: '#app',
    data: {
        ruleForm: {
            user: '',
            password: '',
            code: '',
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
                    message: '账号长度在4到20位',
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
            code: [{
                required: true,
                message: '请输入验证码',
                trigger: 'blur'
            },
                {
                    min: 0,
                    max: 4,
                    message: '请输入右侧4位验证码',
                    trigger: 'blur'
                }
            ],
        },

    },
    methods: {
        submitForm(formName) {
            this.$refs[formName].validate((valid) => {

                if (valid) {
                    this.success_not();
                } else {
                    console.log('error submit!!');
                    this.error_mes();
                    return false;
                }
            });
        },
        resetForm(formName) {
            this.$refs[formName].resetFields();
        },
        error_mes() {
            this.$message.error('检查一下错误小老弟');
        },
        success_not() {
            this.$notify({
                title: '成功',
                message: '登录成功',
                type: 'success'
            });
        },
    }
})

function open4() {
    this.$message.error('错了哦，这是一条错误消息');
}

function onLook() {
    var oUlook = document.getElementById("upass")
    if (oUlook.type == "password") {
        oUlook.type = "text";
    } else {
        oUlook.type = "password";
    }
}
