<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
    <form action="insertconfirm" method="POST">
        名前:
        <% if(session.getAttribute("name") == null){%>
            <input type="text" name="name" value="">
        <%}else{%>
            <input type="text" name="name" value="<%= session.getAttribute("name") %>">
        <% } %>
        <br><br>


        生年月日:
        
        <% String year = (String)session.getAttribute("year");%><!-- yearフォーム -->
        
　　<!-- すでに入力済みであれば、セッションで表示 -->
        <select name="year">
            <% if(year == null ){ %>
            <option value="">----</option>
            <%}else{%>
            <option value="<%= year %>"><%= year %></option>
            <%}%>
            
            <%
            for(int i=1950; i<=2010; i++){ %>
            <option value="<%=i%>"> <%=i%> </option>
            <% } %>
        </select>年
        
        <% String month = (String)session.getAttribute("month");%><!-- monthフォーム -->

　　<!-- すでに入力済みであれば、セッションで表示 -->
        <select name="month">
            <% if(month == null ){ %><!-- 月が入力されていなければ -->
            <option value="">--</option>
            <%}else{%><!--月が入力されていれば-->
            <option value="<%= month %>"><%= month %></option>
            <%}%>
            <%
            for(int i = 1; i<=12; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>月

        
        <% String day = (String)session.getAttribute("day");%><!-- dayフォーム -->
        
　　<!-- すでに入力済みであれば、セッションで表示 -->
        <select name="day">
            <% if(day == null ){ %><!-- 日が入力されていなければ -->
            <option value="">--</option>
            <%}else{%><!--日が入力されていれば-->
            <option value="<%= day %>"><%= day %></option>
            <%}%>
            <%
            for(int i = 1; i<=31; i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>日
        <br><br>
        
        
        種別:
        <br>
           <% if(session.getAttribute("type") != null){ %>
            <% if(session.getAttribute("type").equals("") ){ %>
            <input type="radio" name="type" value="1"　checked>エンジニア<br>
            <input type="radio" name="type" value="2">営業<br>
            <input type="radio" name="type" value="3">その他<br>
            <%}%>
            <% if(session.getAttribute("type").equals("1")) {%>
                <input type="radio" name="type" value="1" checked="checked">エンジニア<br>
                <input type="radio" name="type" value="2">営業<br>
                <input type="radio" name="type" value="3">その他<br>
            <% } %>
            <% if(session.getAttribute("type").equals("2")) {%>
                <input type="radio" name="type" value="1">エンジニア<br>
                <input type="radio" name="type" value="2"  checked="checked">営業<br>
                <input type="radio" name="type" value="3">その他<br>
            <% } %>
            <% if(session.getAttribute("type").equals("3")) {%>
                <input type="radio" name="type" value="1">エンジニア<br>
                <input type="radio" name="type" value="2">営業<br>
                <input type="radio" name="type" value="3" checked="checked">その他<br>
            <% } %>
           <%}else{%>
            <input type="radio" name="type" value="1"　checked>エンジニア<br>
            <input type="radio" name="type" value="2">営業<br>
            <input type="radio" name="type" value="3">その他<br>
           <%}%>

        <br>

        電話番号:
        <% if(session.getAttribute("tell") != null) {%>
            <% if(session.getAttribute("tell").equals("")) {%>
            <input type="text" name="tell" value="">
            <%}else{%>
            <input type="text" name="tell" value="<%= session.getAttribute("tell") %>">
            <%}%>
        <%}else{%>
             <input type="text" name="tell" value="">
        <%}%>
        <br><br>

        自己紹介文
        <br>
        <% if (session.getAttribute("comment") != null ) {%>
            <% if (session.getAttribute("comment").equals("") ) {%>
             <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"></textarea><br><br>
            <%}else{%>
             <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard" value="<% session.getAttribute("comment"); %>"><%= session.getAttribute("comment") %></textarea><br><br>
            <%}%>
       <%}else{%>
             <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard"></textarea><br><br>
       <% } %>
        
        <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
        <input type="submit" name="btnSubmit" value="確認画面へ">
    </form>
        <br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
