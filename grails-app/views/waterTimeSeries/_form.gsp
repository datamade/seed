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
<%@ page import="gov.doe.seed.WaterTimeSeries" %>



<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'readingNumber', 'error')} ">
	<label for="readingNumber">
		<g:message code="waterTimeSeries.readingNumber.label" default="Reading Number" />
		
	</label>
	<g:field name="readingNumber" type="number" value="${waterTimeSeriesInstance.readingNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'intervalPeak', 'error')} ">
	<label for="intervalPeak">
		<g:message code="waterTimeSeries.intervalPeak.label" default="Interval Peak" />
		
	</label>
	<g:textField name="intervalPeak" maxlength="45" value="${waterTimeSeriesInstance?.intervalPeak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'intervalMinimum', 'error')} ">
	<label for="intervalMinimum">
		<g:message code="waterTimeSeries.intervalMinimum.label" default="Interval Minimum" />
		
	</label>
	<g:textField name="intervalMinimum" maxlength="45" value="${waterTimeSeriesInstance?.intervalMinimum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="waterTimeSeries.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${waterTimeSeriesInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="waterTimeSeries.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${waterTimeSeriesInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="waterTimeSeries.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${waterTimeSeriesInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="waterTimeSeries.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${waterTimeSeriesInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="waterTimeSeries.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${waterTimeSeriesInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="waterTimeSeries.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${waterTimeSeriesInstance?.updatedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterTimeSeriesInstance, field: 'waterUseMetric', 'error')} required">
	<label for="waterUseMetric">
		<g:message code="waterTimeSeries.waterUseMetric.label" default="Water Use Metric" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="waterUseMetric" name="waterUseMetric.id" from="${gov.doe.seed.WaterUseMetric.list()}" optionKey="id" required="" value="${waterTimeSeriesInstance?.waterUseMetric?.id}" class="many-to-one"/>
</div>

