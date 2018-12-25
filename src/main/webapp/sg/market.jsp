<%@page import="com.mingsoft.cms.dao.DataOperation" %>
<%@page import="com.mingsoft.cms.bean.CoinArticleBean" %>
<%@ page import="java.util.List" %>

<!-- JSP指令 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isThreadSafe="false" errorPage="" %>

<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<%
    List<CoinArticleBean> list = DataOperation.queryData();

    try {
%>


<table>
    <tr>
        <th>Symbol</th>
        <th>Price</th>
        <th>Open</th>

        <th>Open</th>
        <th>Max</th>
        <th>Low</th>
        <th>Close</th>
        <th>Volume</th>
        <th>marketcap</th>
    </tr>
    <%for (int i = 0; i < 20; i++) {%>
    <tr>
        <td><% out.write(list.get(i).getFsymbol()); %></td>
        <td><% out.write(list.get(i).getFprice().toString()); %></td>
        <td><% out.write(list.get(i).getFopen().toString()); %></td>
        <td><% out.write(list.get(i).getFmax().toString()); %></td>
        <td><% out.write(list.get(i).getFlow().toString()); %></td>
        <td><% out.write(list.get(i).getFclose().toString()); %></td>
        <td><% out.write(DataOperation.isNullConvert(list.get(i).getFvol())); %></td>
        <td><% out.write(DataOperation.isNullConvert(list.get(i).getFmarketcap())); %></td>
    </tr>
    <%}%>
</table>

<%
    } catch (Exception ex) {
        out.write(ex.toString());
    }
%>
</body>
</html>

