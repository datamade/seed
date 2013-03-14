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
<%@ page import="gov.doe.seed.EfficiencyUnitLookup" %>



<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'systemTypeIdFk', 'error')} ">
	<label for="systemTypeIdFk">
		<g:message code="efficiencyUnitLookup.systemTypeIdFk.label" default="System Type Id Fk" />
		
	</label>
	<g:field name="systemTypeIdFk" type="number" value="${efficiencyUnitLookupInstance.systemTypeIdFk}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'efficiencyUnit', 'error')} ">
	<label for="efficiencyUnit">
		<g:message code="efficiencyUnitLookup.efficiencyUnit.label" default="Efficiency Unit" />
		
	</label>
	<g:textField name="efficiencyUnit" maxlength="45" value="${efficiencyUnitLookupInstance?.efficiencyUnit}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="efficiencyUnitLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${efficiencyUnitLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="efficiencyUnitLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${efficiencyUnitLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="efficiencyUnitLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${efficiencyUnitLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="efficiencyUnitLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${efficiencyUnitLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="efficiencyUnitLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${efficiencyUnitLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitLookupInstance, field: 'efficiencyUnitSystemLookups', 'error')} ">
	<label for="efficiencyUnitSystemLookups">
		<g:message code="efficiencyUnitLookup.efficiencyUnitSystemLookups.label" default="Efficiency Unit System Lookups" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${efficiencyUnitLookupInstance?.efficiencyUnitSystemLookups?}" var="e">
    <li><g:link controller="efficiencyUnitSystemLookup" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="efficiencyUnitSystemLookup" action="create" params="['efficiencyUnitLookup.id': efficiencyUnitLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'efficiencyUnitSystemLookup.label', default: 'EfficiencyUnitSystemLookup')])}</g:link>
</li>
</ul>

</div>

