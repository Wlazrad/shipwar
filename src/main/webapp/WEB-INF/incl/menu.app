<table width="100%" border="0" cellpadding="8" cellspacing="4" class="tableMenuBg" bgcolor="transparent">
	<tr>
		<td align="left" width="600">
			<a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/index"><s:message code="menu.mainPage"/></a>&nbsp;&nbsp;
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a href="/admin"><s:message code="menu.adminPage"/></a>
			</sec:authorize>
		</td>
		<td  align="right" width="1500">
		<sec:authorize access="hasRole('ANONYMOUS')">
<a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/login"><s:message code="menu.login"/></a>&nbsp;&nbsp;
<a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/register"><s:message code="menu.register"/></a>&nbsp;&nbsp;
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/profil"><s:message code="menu.profil"/></a>&nbsp;&nbsp;
			<a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/logout"><s:message code="menu.logout"/></a>&nbsp;&nbsp;
            <a class="btn btn-primary mb1 bg-olive" role="button" href="${pageContext.request.contextPath}/shipwar"><s:message code="menu.play"/></a>&nbsp;&nbsp;
		</sec:authorize>
		</td>
	</tr>
</table>

