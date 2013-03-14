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
<%@ page import="gov.doe.seed.IntervalTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'intervalType', 'error')} ">
	<label for="intervalType">
		<g:message code="intervalTypeLookup.intervalType.label" default="Interval Type" />
		
	</label>
	<g:textField name="intervalType" maxlength="100" value="${intervalTypeLookupInstance?.intervalType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'intervalTypeDescription', 'error')} ">
	<label for="intervalTypeDescription">
		<g:message code="intervalTypeLookup.intervalTypeDescription.label" default="Interval Type Description" />
		
	</label>
	<g:textField name="intervalTypeDescription" maxlength="75" value="${intervalTypeLookupInstance?.intervalTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="intervalTypeLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${intervalTypeLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="intervalTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${intervalTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="intervalTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${intervalTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="intervalTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${intervalTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'energyUseMetrics', 'error')} ">
	<label for="energyUseMetrics">
		<g:message code="intervalTypeLookup.energyUseMetrics.label" default="Energy Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${intervalTypeLookupInstance?.energyUseMetrics?}" var="e">
    <li><g:link controller="energyUseMetric" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyUseMetric" action="create" params="['intervalTypeLookup.id': intervalTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyUseMetric.label', default: 'EnergyUseMetric')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: intervalTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="intervalTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${intervalTypeLookupInstance?.updatedDate}"  />
</div>

