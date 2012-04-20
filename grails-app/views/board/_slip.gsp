<div class="slip" style="background-color: ${it.type.backgroundColor};">
	<h2>Health Studies</h2>
	<h3>${it.type}</h3>
	<ul>
		<li>Name: ${it.staffFor}</li>
		<li>Leaving: 
			<g:formatDate date="${it.startDate}" format="MMM dd, h:mm a" />
		</li>
		<li>Due Back:
			<g:formatDate date="${it.endDate}" format="MMM dd, h:mm a" />
		</li>
		<g:if test="${it.why}">
		<li>Why: ${it.why}</li>
		</g:if>

		<li><span class="comments">${it.comments}</span></li>
	</ul>
	<div class="takenBy">Taken by: ${it.staffTakenBy} on 
		<g:formatDate date="${it.dateTaken}" format="MMM dd, h:mm a" />
	</div>
	<g:if test="${it.voicemail}">
	<input type="checkbox" checked="checked" disabled="disabled" />
	Voicemail</g:if>
</div>
