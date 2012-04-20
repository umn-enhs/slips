<%@ page import="edu.umn.enhs.OutSlip" %>



<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'staffFor', 'error')} required">
	<label for="staffFor">
		<g:message code="outSlip.staffFor.label" default="Staff For" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="staffFor" name="staffFor.id" from="${edu.umn.enhs.Staff.list()}" optionKey="id" required="" value="${outSlipInstance?.staffFor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'usernameTakenBy', 'error')} ">
	<label for="usernameTakenBy">
		<g:message code="outSlip.usernameTakenBy.label" default="Username Taken By" />
		
	</label>
	<g:textField name="usernameTakenBy" value="${outSlipInstance?.usernameTakenBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'dateTaken', 'error')} required">
	<label for="dateTaken">
		<g:message code="outSlip.dateTaken.label" default="Date Taken" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateTaken" precision="day"  value="${outSlipInstance?.dateTaken}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="outSlip.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${outSlipInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'endDate', 'error')} ">
	<label for="endDate">
		<g:message code="outSlip.endDate.label" default="End Date" />
		
	</label>
	<g:datePicker name="endDate" precision="day"  value="${outSlipInstance?.endDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'dateReturned', 'error')} ">
	<label for="dateReturned">
		<g:message code="outSlip.dateReturned.label" default="Date Returned" />
		
	</label>
	<g:datePicker name="dateReturned" precision="day"  value="${outSlipInstance?.dateReturned}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'vacation', 'error')} ">
	<label for="vacation">
		<g:message code="outSlip.vacation.label" default="Vacation" />
		
	</label>
	<g:checkBox name="vacation" value="${outSlipInstance?.vacation}" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'sick', 'error')} ">
	<label for="sick">
		<g:message code="outSlip.sick.label" default="Sick" />
		
	</label>
	<g:checkBox name="sick" value="${outSlipInstance?.sick}" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'other', 'error')} ">
	<label for="other">
		<g:message code="outSlip.other.label" default="Other" />
		
	</label>
	<g:checkBox name="other" value="${outSlipInstance?.other}" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="outSlip.comments.label" default="Comments" />
		
	</label>
	<g:textField name="comments" value="${outSlipInstance?.comments}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'voicemail', 'error')} ">
	<label for="voicemail">
		<g:message code="outSlip.voicemail.label" default="Voicemail" />
		
	</label>
	<g:checkBox name="voicemail" value="${outSlipInstance?.voicemail}" />
</div>

<div class="fieldcontain ${hasErrors(bean: outSlipInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="outSlip.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${edu.umn.enhs.OutSlipType.list()}" optionKey="id" required="" value="${outSlipInstance?.type?.id}" class="many-to-one"/>
</div>

