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
<%@ page import="gov.doe.seed.MetricTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'metricType', 'error')} ">
	<label for="metricType">
		<g:message code="metricTypeLookup.metricType.label" default="Metric Type" />
		
	</label>
	<g:textField name="metricType" maxlength="100" value="${metricTypeLookupInstance?.metricType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'metricTypeDescription', 'error')} ">
	<label for="metricTypeDescription">
		<g:message code="metricTypeLookup.metricTypeDescription.label" default="Metric Type Description" />
		
	</label>
	<g:textField name="metricTypeDescription" maxlength="100" value="${metricTypeLookupInstance?.metricTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="metricTypeLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${metricTypeLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="metricTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${metricTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="metricTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${metricTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="metricTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${metricTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="metricTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${metricTypeLookupInstance?.updatedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: metricTypeLookupInstance, field: 'waterUseMetrics', 'error')} ">
	<label for="waterUseMetrics">
		<g:message code="metricTypeLookup.waterUseMetrics.label" default="Water Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${metricTypeLookupInstance?.waterUseMetrics?}" var="w">
    <li><g:link controller="waterUseMetric" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="waterUseMetric" action="create" params="['metricTypeLookup.id': metricTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'waterUseMetric.label', default: 'WaterUseMetric')])}</g:link>
</li>
</ul>

</div>

