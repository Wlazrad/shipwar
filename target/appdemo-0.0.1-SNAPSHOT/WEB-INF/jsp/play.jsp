<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-22
  Time: 11:32
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
    <title>Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/resources/css/style.css" />


</head>
<body>


<%@include file="/WEB-INF/incl/menu.app" %>


<div class="maingrid">
        <h1 class="header">
            Gra rozpoczęta !
        </h1>
    <p class="playername"> <em>Gracz: ${user}</em></p><p class="enemyname"><em>Przeciwnik: ${enemy}</em></p>
        <div class="wrapper mybattle">

    <button type="button" class="box r" disabled></button>
    <button type="button" class="box r" disabled>1</button>
    <button type="button" class="box r" disabled>2</button>
    <button type="button" class="box r" disabled>3</button>
    <button type="button" class="box r" disabled>4</button>
    <button type="button" class="box r" disabled>5</button>
    <button type="button" class="box r" disabled>6</button>
    <button type="button" class="box r" disabled>7</button>
    <button type="button" class="box r" disabled>8</button>

    <button type="button" class="box r" disabled>A</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos0=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos1=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos2=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos3=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos4=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos5=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos6=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos7=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>B</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos8=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos9=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos10=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos11=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos12=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos13=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos14=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos15=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>C</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos16=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos17=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos18=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos19=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos20=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos21=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos22=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos23=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>D</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos24=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos25=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos26=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos27=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos28=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos29=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos30=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos31=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>E</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos32=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos33=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos34=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos35=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos36=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos37=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos38=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos39=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>F</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos40=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos41=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos42=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos43=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos44=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos45=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos46=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos47=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>G</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos48=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos49=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos50=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos51=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos52=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos53=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos54=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos55=='1'}">ship"</c:when></c:choose>"</button>

    <button type="button" class="box r" disabled>H</button>

    <button type="button" class="box <c:choose><c:when test="${shipPos56=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos57=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos58=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos59=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos60=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos61=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos62=='1'}">ship"</c:when></c:choose>"</button>
    <button type="button" class="box <c:choose><c:when test="${shipPos63=='1'}">ship"</c:when></c:choose>"</button>

</div>


<div class="wrapper enemybattle">

    <button type="button" class="box r" disabled></button>
    <button type="button" class="box r" disabled>1</button>
    <button type="button" class="box r" disabled>2</button>
    <button type="button" class="box r" disabled>3</button>
    <button type="button" class="box r" disabled>4</button>
    <button type="button" class="box r" disabled>5</button>
    <button type="button" class="box r" disabled>6</button>
    <button type="button" class="box r" disabled>7</button>
    <button type="button" class="box r" disabled>8</button>

    <button type="button" class="box r" disabled>A</button>


    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos0=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos0=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos0=='0'}">a"</c:when>
            <c:when test="${enemyshipPos0=='1'}">a"</c:when>
        </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos1=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos1=='3'}">missed"</c:when>
    <c:when test="${enemyshipPos1=='0'}">a"</c:when>
    <c:when test="${enemyshipPos1=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos2=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos2=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos2=='0'}">a"</c:when>
            <c:when test="${enemyshipPos2=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos3=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos3=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos3=='0'}">a"</c:when>
            <c:when test="${enemyshipPos3=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos4=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos4=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos4=='0'}">a"</c:when>
            <c:when test="${enemyshipPos4=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos5=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos5=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos5=='0'}">a"</c:when>
            <c:when test="${enemyshipPos5=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos6=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos6=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos6=='0'}">a"</c:when>
            <c:when test="${enemyshipPos6=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos7=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos7=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos7=='0'}">a"</c:when>
            <c:when test="${enemyshipPos7=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=A8'"
    </button>

    <!-- ROW B ############################################-->

    <button type="button" class="box r" disabled>B</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos8=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos8=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos8=='0'}">a"</c:when>
            <c:when test="${enemyshipPos8=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos9=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos9=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos9=='0'}">a"</c:when>
            <c:when test="${enemyshipPos9=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos10=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos10=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos10=='0'}">a"</c:when>
            <c:when test="${enemyshipPos10=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos11=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos11=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos11=='0'}">a"</c:when>
            <c:when test="${enemyshipPos11=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos12=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos12=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos12=='0'}">a"</c:when>
            <c:when test="${enemyshipPos12=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos13=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos13=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos13=='0'}">a"</c:when>
            <c:when test="${enemyshipPos13=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos14=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos14=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos14=='0'}">a"</c:when>
            <c:when test="${enemyshipPos14=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos15=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos15=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos15=='0'}">a"</c:when>
            <c:when test="${enemyshipPos15=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=B8'"
    </button>

    <!--ROW C #############################################-->

    <button type="button" class="box r" disabled>C</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos16=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos16=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos16=='0'}">a"</c:when>
            <c:when test="${enemyshipPos16=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos17=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos17=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos17=='0'}">a"</c:when>
            <c:when test="${enemyshipPos17=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos18=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos18=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos18=='0'}">a"</c:when>
            <c:when test="${enemyshipPos18=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos19=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos19=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos19=='0'}">a"</c:when>
            <c:when test="${enemyshipPos19=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos20=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos20=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos20=='0'}">a"</c:when>
            <c:when test="${enemyshipPos20=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos21=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos21=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos21=='0'}">a"</c:when>
            <c:when test="${enemyshipPos21=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos22=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos22=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos22=='0'}">a"</c:when>
            <c:when test="${enemyshipPos22=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos23=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos23=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos23=='0'}">a"</c:when>
            <c:when test="${enemyshipPos23=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=C8'"
    </button>

    <!--ROW D #############################################-->

    <button type="button" class="box r" disabled>D</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos24=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos24=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos24=='0'}">a"</c:when>
            <c:when test="${enemyshipPos24=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos25=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos25=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos25=='0'}">a"</c:when>
            <c:when test="${enemyshipPos25=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos26=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos26=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos26=='0'}">a"</c:when>
            <c:when test="${enemyshipPos26=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos27=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos27=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos27=='0'}">a"</c:when>
            <c:when test="${enemyshipPos27=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos28=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos28=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos28=='0'}">a"</c:when>
            <c:when test="${enemyshipPos28=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos29=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos29=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos29=='0'}">a"</c:when>
            <c:when test="${enemyshipPos29=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos30=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos30=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos30=='0'}">a"</c:when>
            <c:when test="${enemyshipPos30=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos31=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos31=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos31=='0'}">a"</c:when>
            <c:when test="${enemyshipPos31=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=D8'"
    </button>

    <!-- ROW E #############################################-->

    <button type="button" class="box r" disabled>E</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos32=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos32=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos32=='0'}">a"</c:when>
            <c:when test="${enemyshipPos32=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos33=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos33=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos33=='0'}">a"</c:when>
            <c:when test="${enemyshipPos33=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos34=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos34=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos34=='0'}">a"</c:when>
            <c:when test="${enemyshipPos34=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos35=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos35=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos35=='0'}">a"</c:when>
            <c:when test="${enemyshipPos35=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos36=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos36=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos36=='0'}">a"</c:when>
            <c:when test="${enemyshipPos36=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos37=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos37=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos37=='0'}">a"</c:when>
            <c:when test="${enemyshipPos37=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos38=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos38=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos38=='0'}">a"</c:when>
            <c:when test="${enemyshipPos38=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos39=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos39=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos39=='0'}">a"</c:when>
            <c:when test="${enemyshipPos39=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=E8'"
    </button>

    <!-- ROW F ###########################################-->

    <button type="button" class="box r" disabled>F</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos40=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos40=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos40=='0'}">a"</c:when>
            <c:when test="${enemyshipPos40=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos41=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos41=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos41=='0'}">a"</c:when>
            <c:when test="${enemyshipPos41=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos42=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos42=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos42=='0'}">a"</c:when>
            <c:when test="${enemyshipPos42=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos43=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos43=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos43=='0'}">a"</c:when>
            <c:when test="${enemyshipPos43=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos44=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos44=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos44=='0'}">a"</c:when>
            <c:when test="${enemyshipPos44=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos45=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos45=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos45=='0'}">a"</c:when>
            <c:when test="${enemyshipPos45=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos46=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos46=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos46=='0'}">a"</c:when>
            <c:when test="${enemyshipPos46=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos47=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos47=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos47=='0'}">a"</c:when>
            <c:when test="${enemyshipPos47=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=F8'"
    </button>

    <!-- ROW G ############################################-->

    <button type="button" class="box r" disabled>G</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos48=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos48=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos48=='0'}">a"</c:when>
            <c:when test="${enemyshipPos48=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos49=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos49=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos49=='0'}">a"</c:when>
            <c:when test="${enemyshipPos49=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos50=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos50=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos50=='0'}">a"</c:when>
            <c:when test="${enemyshipPos50=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos51=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos51=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos51=='0'}">a"</c:when>
            <c:when test="${enemyshipPos51=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos52=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos52=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos52=='0'}">a"</c:when>
            <c:when test="${enemyshipPos52=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos53=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos53=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos53=='0'}">a"</c:when>
            <c:when test="${enemyshipPos53=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos54=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos54=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos54=='0'}">a"</c:when>
            <c:when test="${enemyshipPos54=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos55=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos55=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos55=='0'}">a"</c:when>
            <c:when test="${enemyshipPos55=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=G8'"
    </button>

    <!-- ROW H ############################################-->

    <button type="button" class="box r" disabled>H</button>

    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos56=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos56=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos56=='0'}">a"</c:when>
            <c:when test="${enemyshipPos56=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H1'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos57=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos57=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos57=='0'}">a"</c:when>
            <c:when test="${enemyshipPos57=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H2'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos58=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos58=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos58=='0'}">a"</c:when>
            <c:when test="${enemyshipPos58=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H3'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos59=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos59=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos59=='0'}">a"</c:when>
            <c:when test="${enemyshipPos59=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H4'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos60=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos60=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos60=='0'}">a"</c:when>
            <c:when test="${enemyshipPos60=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H5'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos61=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos61=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos61=='0'}">a"</c:when>
            <c:when test="${enemyshipPos61=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H6'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos62=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos62=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos62=='0'}">a"</c:when>
            <c:when test="${enemyshipPos62=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H7'"
    </button>
    <button type="button" class="box
        <c:choose>
            <c:when test="${enemyshipPos63=='2'}">destroy"</c:when>
            <c:when test="${enemyshipPos63=='3'}">missed"</c:when>
            <c:when test="${enemyshipPos63=='0'}">a"</c:when>
            <c:when test="${enemyshipPos63=='1'}">a"</c:when>
    </c:choose>
    onclick="window.location.href='${pageContext.request.contextPath}/shot?id=H8'"
    </button>
    <h1>${shipPos}</h1>

</div>
</div>
<input type="button" id="confirm" class="btn" value="Gotowy do gry"
       onclick="window.location.href='${pageContext.request.contextPath}/play'" />
</body>
</html>
