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
<%@ page import="gov.doe.seed.ActivityAreaTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'activityAreaType', 'error')} ">
	<label for="activityAreaType">
		<g:message code="activityAreaTypeLookup.activityAreaType.label" default="Activity Area Type" />
		
	</label>
	<g:textField name="activityAreaType" maxlength="100" value="${activityAreaTypeLookupInstance?.activityAreaType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'activityAreaTypeDescription', 'error')} ">
	<label for="activityAreaTypeDescription">
		<g:message code="activityAreaTypeLookup.activityAreaTypeDescription.label" default="Activity Area Type Description" />
		
	</label>
	<g:textField name="activityAreaTypeDescription" maxlength="100" value="${activityAreaTypeLookupInstance?.activityAreaTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="activityAreaTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${activityAreaTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="activityAreaTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${activityAreaTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'activityAreas', 'error')} ">
	<label for="activityAreas">
		<g:message code="activityAreaTypeLookup.activityAreas.label" default="Activity Areas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${activityAreaTypeLookupInstance?.activityAreas?}" var="a">
    <li><g:link controller="activityArea" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="activityArea" action="create" params="['activityAreaTypeLookup.id': activityAreaTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'activityArea.label', default: 'ActivityArea')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="activityAreaTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${activityAreaTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="activityAreaTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${activityAreaTypeLookupInstance?.updatedDate}"  />
</div>

