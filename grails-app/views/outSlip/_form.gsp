<%@ page import="edu.umn.enhs.OutSlip" %>



<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="outSlip.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${edu.umn.enhs.OutSlipType.list()}" optionKey="id" required="" value="${outSlipInstance?.type?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'staffFor', 'error')} required">
	<label for="staffFor">
		<g:message code="outSlip.staffFor.label" default="Staff For" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="staffFor" name="staffFor.id" from="${edu.umn.enhs.Staff.list()}" optionKey="id" required="" value="${outSlipInstance?.staffFor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="outSlip.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="minute"  value="${outSlipInstance?.startDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="outSlip.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="minute"  value="${outSlipInstance?.endDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'why', 'error')} ">
	<label for="why">
		<g:message code="outSlip.why.label" default="Why" />
		
	</label>
	<g:select id="why" name="why.id" from="${edu.umn.enhs.OutSlipWhy.list()}" optionKey="id" value="${outSlipInstance?.why?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="outSlip.comments.label" default="Comments" />
		
	</label>
	<g:textArea name="comments" value="${outSlipInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'voicemail', 'error')} ">
	<label for="voicemail">
		<g:message code="outSlip.voicemail.label" default="Voicemail" />
		
	</label>
	<g:checkBox name="voicemail" value="${outSlipInstance?.voicemail}" />
</div>

