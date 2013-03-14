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
<%@ page import="gov.doe.seed.SystemTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'systemType', 'error')} ">
	<label for="systemType">
		<g:message code="systemTypeLookup.systemType.label" default="System Type" />
		
	</label>
	<g:textField name="systemType" maxlength="100" value="${systemTypeLookupInstance?.systemType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="systemTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${systemTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="systemTypeLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${systemTypeLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="systemTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${systemTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="systemTypeLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${systemTypeLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'controlTypeSystemLookups', 'error')} ">
	<label for="controlTypeSystemLookups">
		<g:message code="systemTypeLookup.controlTypeSystemLookups.label" default="Control Type System Lookups" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemTypeLookupInstance?.controlTypeSystemLookups?}" var="c">
    <li><g:link controller="controlTypeSystemLookup" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="controlTypeSystemLookup" action="create" params="['systemTypeLookup.id': systemTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'controlTypeSystemLookup.label', default: 'ControlTypeSystemLookup')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'efficiencyUnitSystemLookups', 'error')} ">
	<label for="efficiencyUnitSystemLookups">
		<g:message code="systemTypeLookup.efficiencyUnitSystemLookups.label" default="Efficiency Unit System Lookups" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemTypeLookupInstance?.efficiencyUnitSystemLookups?}" var="e">
    <li><g:link controller="efficiencyUnitSystemLookup" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="efficiencyUnitSystemLookup" action="create" params="['systemTypeLookup.id': systemTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'efficiencyUnitSystemLookup.label', default: 'EfficiencyUnitSystemLookup')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemTypeLookupInstance, field: 'systems', 'error')} ">
	<label for="systems">
		<g:message code="systemTypeLookup.systems.label" default="Systems" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemTypeLookupInstance?.systems?}" var="s">
    <li><g:link controller="system" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="system" action="create" params="['systemTypeLookup.id': systemTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'system.label', default: 'System')])}</g:link>
</li>
</ul>

</div>

