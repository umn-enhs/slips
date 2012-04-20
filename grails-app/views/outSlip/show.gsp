
<%@ page import="edu.umn.enhs.OutSlip" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'outSlip.label', default: 'OutSlip')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-outSlip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-outSlip" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list outSlip">
			
				<g:if test="${outSlipInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="outSlip.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="outSlipType" action="show" id="${outSlipInstance?.type?.id}">${outSlipInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.staffFor}">
				<li class="fieldcontain">
					<span id="staffFor-label" class="property-label"><g:message code="outSlip.staffFor.label" default="Staff For" /></span>
					
						<span class="property-value" aria-labelledby="staffFor-label"><g:link controller="staff" action="show" id="${outSlipInstance?.staffFor?.id}">${outSlipInstance?.staffFor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.staffTakenBy}">
				<li class="fieldcontain">
					<span id="staffTakenBy-label" class="property-label"><g:message code="outSlip.staffTakenBy.label" default="Staff Taken By" /></span>
					
						<span class="property-value" aria-labelledby="staffTakenBy-label"><g:link controller="staff" action="show" id="${outSlipInstance?.staffTakenBy?.id}">${outSlipInstance?.staffTakenBy?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.dateTaken}">
				<li class="fieldcontain">
					<span id="dateTaken-label" class="property-label"><g:message code="outSlip.dateTaken.label" default="Date Taken" /></span>
					
						<span class="property-value" aria-labelledby="dateTaken-label"><g:formatDate date="${outSlipInstance?.dateTaken}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="outSlip.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${outSlipInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="outSlip.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${outSlipInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.dateReturned}">
				<li class="fieldcontain">
					<span id="dateReturned-label" class="property-label"><g:message code="outSlip.dateReturned.label" default="Date Returned" /></span>
					
						<span class="property-value" aria-labelledby="dateReturned-label"><g:formatDate date="${outSlipInstance?.dateReturned}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.why}">
				<li class="fieldcontain">
					<span id="why-label" class="property-label"><g:message code="outSlip.why.label" default="Why" /></span>
					
						<span class="property-value" aria-labelledby="why-label"><g:link controller="outSlipWhy" action="show" id="${outSlipInstance?.why?.id}">${outSlipInstance?.why?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.comments}">
				<li class="fieldcontain">
					<span id="comments-label" class="property-label"><g:message code="outSlip.comments.label" default="Comments" /></span>
					
						<span class="property-value" aria-labelledby="comments-label"><g:fieldValue bean="${outSlipInstance}" field="comments"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${outSlipInstance?.voicemail}">
				<li class="fieldcontain">
					<span id="voicemail-label" class="property-label"><g:message code="outSlip.voicemail.label" default="Voicemail" /></span>
					
						<span class="property-value" aria-labelledby="voicemail-label"><g:formatBoolean boolean="${outSlipInstance?.voicemail}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${outSlipInstance?.id}" />
					<g:link class="edit" action="edit" id="${outSlipInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
