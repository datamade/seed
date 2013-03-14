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
<%@ page import="gov.doe.seed.ProcessLoadLookup" %>



<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'processLoadType', 'error')} ">
	<label for="processLoadType">
		<g:message code="processLoadLookup.processLoadType.label" default="Process Load Type" />
		
	</label>
	<g:textField name="processLoadType" maxlength="100" value="${processLoadLookupInstance?.processLoadType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="processLoadLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${processLoadLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="processLoadLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${processLoadLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="processLoadLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${processLoadLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="processLoadLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${processLoadLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="processLoadLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${processLoadLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: processLoadLookupInstance, field: 'systemProcessLoads', 'error')} ">
	<label for="systemProcessLoads">
		<g:message code="processLoadLookup.systemProcessLoads.label" default="System Process Loads" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${processLoadLookupInstance?.systemProcessLoads?}" var="s">
    <li><g:link controller="systemProcessLoad" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemProcessLoad" action="create" params="['processLoadLookup.id': processLoadLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemProcessLoad.label', default: 'SystemProcessLoad')])}</g:link>
</li>
</ul>

</div>

