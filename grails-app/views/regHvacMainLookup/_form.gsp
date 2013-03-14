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
<%@ page import="gov.doe.seed.RegHvacMainLookup" %>



<div class="fieldcontain ${hasErrors(bean: regHvacMainLookupInstance, field: 'regularHvacMaintenance', 'error')} ">
	<label for="regularHvacMaintenance">
		<g:message code="regHvacMainLookup.regularHvacMaintenance.label" default="Regular Hvac Maintenance" />
		
	</label>
	<g:textField name="regularHvacMaintenance" maxlength="100" value="${regHvacMainLookupInstance?.regularHvacMaintenance}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regHvacMainLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="regHvacMainLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${regHvacMainLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regHvacMainLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="regHvacMainLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${regHvacMainLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regHvacMainLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="regHvacMainLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${regHvacMainLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: regHvacMainLookupInstance, field: 'systemGenerals', 'error')} ">
	<label for="systemGenerals">
		<g:message code="regHvacMainLookup.systemGenerals.label" default="System Generals" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regHvacMainLookupInstance?.systemGenerals?}" var="s">
    <li><g:link controller="systemGeneral" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemGeneral" action="create" params="['regHvacMainLookup.id': regHvacMainLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemGeneral.label', default: 'SystemGeneral')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regHvacMainLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="regHvacMainLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${regHvacMainLookupInstance?.updatedDate}"  />
</div>

