<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->

    <link  type="text/css" href="/resources/css/style.css" rel="stylesheet">


    <%--<!-- css custom styling-->--%>






<body class="main_body">
<div class="index_container">
<h1 class="index_header">Staki - gra dla dwóch graczy </h1>
</div>
<div class="index_container">

    <div class="tableback">
        <p><s:message code="info.description2"/></p>
    </div>
    <div style="display: inline-block">
    <sec:authorize access="hasRole('ANONYMOUS')">
        <input type="button"  class="main_page_btn" onclick="window.location.href='${pageContext.request.contextPath}/login'" value=<s:message code="menu.login"/>><br>
        <input type="button"  class="main_page_btn" onclick="window.location.href='${pageContext.request.contextPath}/register'" value=<s:message code="menu.register"/>><br>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <input type="button"  class="main_page_btn" onclick="window.location.href='${pageContext.request.contextPath}/profil'" value=<s:message code="menu.profil"/>><br>
        <input type="button"  class="main_page_btn" onclick="window.location.href='${pageContext.request.contextPath}/logout'" value=<s:message code="menu.logout"/>><br>
        <input type="button"  class="main_page_btn" onclick="window.location.href='${pageContext.request.contextPath}/shipwar'" value=<s:message code="menu.play"/>><br>
    </sec:authorize>
    </div>
</div>
<%--<div class="container-fluid" style="background-color:#e6c943">--%>


</div>
</body>
</html>