<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>
   <jsp:useBean id="userdata"  scope="request" class="jums.UserDataBeans"/>
 
   <!-- Beansのデータを変数へ格納 -->
   <% String name = userdata.getName();%>
   <% String birthday = userdata.getBirthday();%>
   <% String type = userdata.getType();%>
   <% String tell = userdata.getTell();%>
   <% String comment = userdata.getComment();%>
   
   
   <!-- 未入力処理 -->
   <% if( name != null && birthday != "年"+"月"+"日" && type != null 
            && tell != null && comment != null ){ %><!-- 直リンク防止  -->
        <h1>登録確認</h1>
                <form action="insertresult" method="POST">
         名前： <%= name%><br><br>
         <input type="hidden" name="name" value="<%= name %>">
         生年月日：<%= birthday %><br><br>
         <input type="hidden" name="birthday" value="<%= birthday %>">
         種別：<%= type %><br><br>
         <input type="hidden" name="type" value="<%= type %>">
         電話番号：<%= tell %> <br><br>
         <input type="hidden" name="tell" value="<%= tell %>">
        自己紹介：<%= comment %><br><br>
         <input type="hidden" name="comment" value="<%= comment %>">
        上記の内容で登録します。よろしいですか？<br><br>
            <input type="submit" name="yes" value="はい">
        </form>
    <% }else{ %>
   <% if( name== null){%><br>
   <%= "名前が未記入です。" %>
   <%} %>
   <% if( birthday == "年"+"月"+"日" ){%><br>
   <%= "生年月日が未記入です。" %>
   <%} %>
   <% if( type == null){%><br>
   <%= "種別が未記入です。" %>
   <%} %>
   <% if( tell == null){%><br>
   <%= "電話番号が未記入です。" %>
   <%} %>
   <% if( comment == null){%><br>
   <%= "自己紹介が未記入です。" %>
   <%} %>
  
    <% } %>
   
   <!-- 変数をsessionに格納 -->
   <% session.setAttribute("name", name); %>
   <% session.setAttribute("birthday", birthday); %>
   <% session.setAttribute("type", type); %>
   <% session.setAttribute("tell", tell); %>
   <% session.setAttribute("comment", comment); %>
   
        <form action="insert" method="POST">
        <input type="submit" name="no" value="登録画面に戻る">
        </form><br><br>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
