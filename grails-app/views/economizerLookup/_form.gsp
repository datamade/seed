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
<%@ page import="gov.doe.seed.EconomizerLookup" %>



<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'economizer', 'error')} ">
	<label for="economizer">
		<g:message code="economizerLookup.economizer.label" default="Economizer" />
		
	</label>
	<g:textField name="economizer" maxlength="45" value="${economizerLookupInstance?.economizer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="economizerLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${economizerLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="economizerLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${economizerLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="economizerLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${economizerLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="economizerLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${economizerLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="economizerLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${economizerLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: economizerLookupInstance, field: 'systemAirs', 'error')} ">
	<label for="systemAirs">
		<g:message code="economizerLookup.systemAirs.label" default="System Airs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${economizerLookupInstance?.systemAirs?}" var="s">
    <li><g:link controller="systemAir" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemAir" action="create" params="['economizerLookup.id': economizerLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemAir.label', default: 'SystemAir')])}</g:link>
</li>
</ul>

</div>

