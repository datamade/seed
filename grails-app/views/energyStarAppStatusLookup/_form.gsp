<!--
   Copyright (c) 2013, U.S. Department of Energy
   All rights reserved.
   
   Redistribution and use in source and binary forms, with or without 
   modification, are permitted provided that the following conditions are met:
   
   - Redistributions of source code must retain the above copyright notice, this
     list of conditions and the following disclaimer.
   - Redistributions in binary form must reproduce the above copyright notice, 
     this list of conditions and the following disclaimer in the documentation 
     and/or other materials provided with the distribution.
   - Neither the name of the U.S. Department of Energy nor the names of its 
     contributors may be used to endorse or promote products derived from this 
     software without specific prior written permission.
   
   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE 
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
   POSSIBILITY OF SUCH DAMAGE.
-->
<%@ page import="gov.doe.seed.EnergyStarAppStatusLookup" %>



<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'energyStarAppStatus', 'error')} ">
	<label for="energyStarAppStatus">
		<g:message code="energyStarAppStatusLookup.energyStarAppStatus.label" default="Energy Star App Status" />
		
	</label>
	<g:textField name="energyStarAppStatus" maxlength="45" value="${energyStarAppStatusLookupInstance?.energyStarAppStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="energyStarAppStatusLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${energyStarAppStatusLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="energyStarAppStatusLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${energyStarAppStatusLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="energyStarAppStatusLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${energyStarAppStatusLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="energyStarAppStatusLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${energyStarAppStatusLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="energyStarAppStatusLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${energyStarAppStatusLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarAppStatusLookupInstance, field: 'energyStarApplications', 'error')} ">
	<label for="energyStarApplications">
		<g:message code="energyStarAppStatusLookup.energyStarApplications.label" default="Energy Star Applications" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${energyStarAppStatusLookupInstance?.energyStarApplications?}" var="e">
    <li><g:link controller="energyStarApplication" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyStarApplication" action="create" params="['energyStarAppStatusLookup.id': energyStarAppStatusLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyStarApplication.label', default: 'EnergyStarApplication')])}</g:link>
</li>
</ul>

</div>

