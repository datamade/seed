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
<%@ page import="gov.doe.seed.UnitTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'unitType', 'error')} ">
	<label for="unitType">
		<g:message code="unitTypeLookup.unitType.label" default="Unit Type" />
		
	</label>
	<g:textField name="unitType" maxlength="100" value="${unitTypeLookupInstance?.unitType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'unitTypeDescription', 'error')} ">
	<label for="unitTypeDescription">
		<g:message code="unitTypeLookup.unitTypeDescription.label" default="Unit Type Description" />
		
	</label>
	<g:textField name="unitTypeDescription" maxlength="100" value="${unitTypeLookupInstance?.unitTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="unitTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${unitTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="unitTypeLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${unitTypeLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="unitTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${unitTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="unitTypeLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${unitTypeLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="unitTypeLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${unitTypeLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'energyUseMetrics', 'error')} ">
	<label for="energyUseMetrics">
		<g:message code="unitTypeLookup.energyUseMetrics.label" default="Energy Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitTypeLookupInstance?.energyUseMetrics?}" var="e">
    <li><g:link controller="energyUseMetric" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyUseMetric" action="create" params="['unitTypeLookup.id': unitTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyUseMetric.label', default: 'EnergyUseMetric')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'systemOnsites', 'error')} ">
	<label for="systemOnsites">
		<g:message code="unitTypeLookup.systemOnsites.label" default="System Onsites" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitTypeLookupInstance?.systemOnsites?}" var="s">
    <li><g:link controller="systemOnsite" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemOnsite" action="create" params="['unitTypeLookup.id': unitTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemOnsite.label', default: 'SystemOnsite')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: unitTypeLookupInstance, field: 'waterUseMetrics', 'error')} ">
	<label for="waterUseMetrics">
		<g:message code="unitTypeLookup.waterUseMetrics.label" default="Water Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${unitTypeLookupInstance?.waterUseMetrics?}" var="w">
    <li><g:link controller="waterUseMetric" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="waterUseMetric" action="create" params="['unitTypeLookup.id': unitTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'waterUseMetric.label', default: 'WaterUseMetric')])}</g:link>
</li>
</ul>

</div>

