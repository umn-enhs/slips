
<%@ page import="edu.umn.enhs.OutSlip" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'outSlip.label', default: 'OutSlip')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-outSlip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-outSlip" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="outSlip.type.label" default="Type" /></th>
					
						<th><g:message code="outSlip.staffFor.label" default="Staff For" /></th>
					
						<th><g:message code="outSlip.staffTakenBy.label" default="Staff Taken By" /></th>
					
						<g:sortableColumn property="dateTaken" title="${message(code: 'outSlip.dateTaken.label', default: 'Date Taken')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'outSlip.startDate.label', default: 'Start Date')}" />
					
						<g:sortableColumn property="endDate" title="${message(code: 'outSlip.endDate.label', default: 'End Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${outSlipInstanceList}" status="i" var="outSlipInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${outSlipInstance.id}">${fieldValue(bean: outSlipInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: outSlipInstance, field: "staffFor")}</td>
					
						<td>${fieldValue(bean: outSlipInstance, field: "staffTakenBy")}</td>
					
						<td><g:formatDate date="${outSlipInstance.dateTaken}" /></td>
					
						<td><g:formatDate date="${outSlipInstance.startDate}" /></td>
					
						<td><g:formatDate date="${outSlipInstance.endDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${outSlipInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
