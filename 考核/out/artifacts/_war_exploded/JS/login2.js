// $("#uname").blur(function () {
//     // fnLogin();
//     alert("test");
// });

// $("input").blur(function () {
//     alert("test");
// });

function fnLogin() {
    var oUname = document.getElementById("uname")
    var oUpass = document.getElementById("upass")
    var oUpass2 = document.getElementById("upass2")
    var oError = document.getElementById("error_box")
    var isError = true;
    if (oUname.value.length > 20 || oUname.value.length < 6) {
        oError.innerHTML = "用户名请输入6-20位字符";
        isError = false;
        return;
    } else if (oUpass.value != oUpass2.value) {
        oError.innerHTML = "两次输入的密码不相同";
        return;
    } else if ((oUname.value.charCodeAt(0) >= 48) && (oUname.value.charCodeAt(0) <= 57)) {
        oError.innerHTML = "首字符必须为字母";
        return;
    } else
        for (var i = 0; i < oUname.value.charCodeAt(i); i++) {
            if ((oUname.value.charCodeAt(i) < 48) || (oUname.value.charCodeAt(i) > 57) && (oUname.value
                .charCodeAt(i) < 97) || (oUname.value.charCodeAt(i) > 122)) {
                oError.innerHTML = "必须为字母跟数字组成";
                return;
            }
        }

    if (oUpass.value.length > 20 || oUpass.value.length < 6) {
        oError.innerHTML = "密码请输入6-20位字符"
        isError = false;
        return;
    }
    if (isError == true) {
        oError.innerHTML = "<br>"
    }
    window.alert("登录成功")
}