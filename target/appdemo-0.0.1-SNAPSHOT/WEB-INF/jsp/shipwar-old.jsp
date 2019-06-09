<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta http-equiv="refresh" content="5">
    <title><s:message code="profil.userDane"/></title>

   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!-- css custom styling-->
   <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />-->

  <!--  <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />-->


</head>
<body>
<%@include file="/WEB-INF/incl/menu.app" %>
<form modelAttribute="user">
    <label>${user.email}</label>
    <label>${enemy.email}</label>
    <label>${enemy.name}</label>
    <c:choose>
    <c:when test="${user.warTable[0] == '1'}">
        <input type="checkbox" checked>
    </c:when>
        <c:otherwise>
            <input type="checkbox" on>
        </c:otherwise>
    </c:choose>
    <form:form modelAttribute="user" action="updateShip" method="get" >
        <form:input path="warTable[1]"></form:input>
    </form:form>
    <c:choose>
        <c:when test="${user.warTable[1] == '3'}">
            <input type="checkbox" checked>
        </c:when>
        <c:otherwise>
            <input type="checkbox" >
        </c:otherwise>
    </c:choose>

</form>
<div class="container">
    <div class="row">
        <div class="col-12">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th scope="col">Select Day</th>
                    <th scope="col">Article Name</th>
                    <th scope="col">Author</th>
                    <th scope="col">Words</th>
                    <th scope="col">Shares</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck1" checked>
                            <label class="custom-control-label" for="customCheck1">1</label>
                        </div>
                    </td>
                    <td>Bootstrap 4 CDN and Starter Template</td>
                    <td>Cristina</td>
                    <td>913</td>
                    <td>2.846</td>
                </tr>
                <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck2">
                            <label class="custom-control-label" for="customCheck2">2</label>
                        </div>
                    </td>
                    <td>Bootstrap Grid 4 Tutorial and Examples</td>
                    <td>Cristina</td>
                    <td>1.434</td>
                    <td>3.417</td>
                </tr>
                <tr>
                    <td>
                        <div class="custom-control custom-checkbox">
                            <input type="checkbox" class="custom-control-input" id="customCheck3">
                            <label class="custom-control-label" for="customCheck3">3</label>
                        </div>
                    </td>
                    <td>Bootstrap Flexbox Tutorial and Examples</td>
                    <td>Cristina</td>
                    <td>1.877</td>
                    <td>1.234</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>


<table width="500" border="0" cellpadding="4" cellspacing="1" align="center">

    <tr>
        <td align="center">
            <input type="button" id="A1" class="btn btn-secondary" value="<s:message code="button.edycjaProfilu"/>"
                   onclick="window.location.href='${pageContext.request.contextPath}/editprofil'"/>
        </td>
        <td align="center">
            <input type="button" class="btn" value="Gotowy do gry" onclick="window.location.href='${pageContext.request.contextPath}/shipwar'" />
        </td>
        <td align="center">
            <input type="button" id="A2" class="btn" value="Gotowy do gry" onclick="window.location.href='${pageContext.request.contextPath}/setShip'" />
        </td>
    </tr>
</table>


</body>
</html>