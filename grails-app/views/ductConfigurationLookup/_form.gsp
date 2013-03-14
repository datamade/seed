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
<%@ page import="gov.doe.seed.DuctConfigurationLookup" %>



<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'ductConfiguration', 'error')} ">
	<label for="ductConfiguration">
		<g:message code="ductConfigurationLookup.ductConfiguration.label" default="Duct Configuration" />
		
	</label>
	<g:textField name="ductConfiguration" maxlength="45" value="${ductConfigurationLookupInstance?.ductConfiguration}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="ductConfigurationLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${ductConfigurationLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="ductConfigurationLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${ductConfigurationLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="ductConfigurationLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${ductConfigurationLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="ductConfigurationLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${ductConfigurationLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="ductConfigurationLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${ductConfigurationLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ductConfigurationLookupInstance, field: 'systemAirs', 'error')} ">
	<label for="systemAirs">
		<g:message code="ductConfigurationLookup.systemAirs.label" default="System Airs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ductConfigurationLookupInstance?.systemAirs?}" var="s">
    <li><g:link controller="systemAir" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemAir" action="create" params="['ductConfigurationLookup.id': ductConfigurationLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemAir.label', default: 'SystemAir')])}</g:link>
</li>
</ul>

</div>

