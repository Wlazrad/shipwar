<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-23
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
    <title>Oczekiwanie na innego gracza</title>
</head>
<body class="main_body">

<table width="100%" border="0" cellpadding="8" cellspacing="4" class="tableMenuBg" bgcolor="transparent">
    <tr>
        <td  align="right" width="1500">
            <sec:authorize access="isAuthenticated()">
                <a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/logout"><s:message code="menu.logout"/></a>&nbsp;&nbsp;
            </sec:authorize>
        </td>
    </tr>
</table>
<script type="text/javascript">
    function Redirect(){
        window.location.href = ('${pageContext.request.contextPath}/play');
    }

    setTimeout('Redirect()',10000 );
</script>
<h1 class="header">Oczekiwanie na innego gracza...</h1>
</body>
</html>
