<%--
  Created by IntelliJ IDEA.
  User: 62347
  Date: 2019/7/23
  Time: 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加新闻</title>
    <script type ="text/JavaScript" src="utf8-jsp/ueditor.config.js"></script>
    <script type ="text/javascript" src="utf8-jsp/ueditor.all.js"></script>
<%--    <link rel =stylesheet href="/admin/ueditor/themes/default/css/ueditor.css">--%>

</head>
<body>
<form action ="/ueditor" method="post"> 类别：
    <textarea name ="content" id="myEditor">这里写你的初始化内容</textarea>
    <script type="text/javascript">
    // 设置UEditor根路径

    UE.getEditor('myEditor',{
        // 这里可以选择自己需要的工具按钮名称
        toolbars:[['fullscreen', ...]],

        // 默认的编辑区域高度和宽度
        initialFrameHeight:500,
        initialFrameWidth:1100,

        //关闭elementPath
        elementPathEnabled:false

    })
</script>
    <input type="submit" value="提交" />
</form>

</body>
</html>
