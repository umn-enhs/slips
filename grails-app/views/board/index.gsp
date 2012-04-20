<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>EnHS Out Of Office</title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'slip.css')}" type="text/css">
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" controller="outSlip" action="ooo"><g:message code="outSlip.new.office" /></g:link></li>
				<li><g:link class="create" controller="outSlip" action="lunch"><g:message code="outSlip.new.lunch" /></g:link></li>
			</ul>
		</div>
		<div id="slips">
<g:render template="slip" collection="${outSlipInstanceList}" />
		</div>
	</body>
</html>
