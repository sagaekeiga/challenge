<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録結果画面</title>
    </head>
    <body>
      <jsp:useBean id="userdata"  scope="request" class="jums.UserDataDTO"/>
        <% if( userdata.getName() != null && request.getAttribute("birthday") != "年"+"月"+"日" &&  userdata.getType() != 0 
         && userdata.getTell() != null && userdata.getComment() != null ){ %><!-- 直リンク防止  -->
        <h1>登録結果</h1><br>
         名前：<%= userdata.getName()%><br><br>
         生年月日：<%= request.getAttribute("birthday") %><br><br>
         種別： <%= userdata.getType()%><br><br>
         電話番号： <%= userdata.getTell()%><br><br>
        自己紹介：<%= userdata.getComment()%><br><br>
        以上の内容で登録しました。<br><br>
        <% } %>

        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
