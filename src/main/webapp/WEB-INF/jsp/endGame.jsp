<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-05-03
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />
</head>
<body class="<c:choose>
    <c:when test="${userLose.compareTo('Twoja flota została zatopiona, przegrałeś bitwę !')==0}">looser_background</c:when>
      <c:when test="${userLose.compareTo('Zatopiłeś foltę przeciwnika, bitwa wygrana !')==0}">winner_background</c:when></c:choose>" style="color: dodgerblue">
<%@include file="/WEB-INF/incl/menu.app" %>
<h1 class="endgame"> ${userLose} </h1>
</body>
</html>
