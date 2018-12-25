<!-- JSP指令 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isThreadSafe="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<!-- 此处使用JSP，也可以写在servlet中，但是输出的你好，world2！你好，world3！没有
换行，只是写入的html的浏览器源代码进行换行了，要使两个html输出换行需要在你好，world2！
之后加入<br>才会使输出的网友文字换行 -->
<% out.println("<font color='red'>你好，world2！<br></font>"); %>
<% out.write("<font color='green'>你好，world3！<br></font>"); %>
<%@ page import="java.util.Date"%>
现在的时间是:<%=new Date() %><br>
<!-- !表示声明自己的变量或方法 -->
<!-- 不加!会报错，因为不加!表示JAVA代码嵌入在service方法内 -->
<%!
    int count = 0;
    int count1=0;
    public void jspInit(){
        System.out.println("Init……");
    }
    public void jspDestroy(){
        System.out.println("Destroy……");
    }
    public int getglobalcount(){
        return count;
    }
%>
<%int count = 1; %>
全局count的值是<%=getglobalcount()%>
局部count的值是<%=count%>
count1的值是<%=count1%>


<table>
    <tr><th>column1</th><th>colomn2</th></tr>
    <%for(int i=0;i<100;i++){%>
    <tr><td>value1</td><td>value2</td></tr>
    <%}%>
</table>


<table>
    <tr><th>Column1</th><th>Column2</th></tr>
    <tr><th>value1</th><th>value2</th></tr>
</table>
</body>
</html>

