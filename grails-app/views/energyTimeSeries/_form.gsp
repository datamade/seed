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
<%@ page import="gov.doe.seed.EnergyTimeSeries" %>



<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'readingNumber', 'error')} ">
	<label for="readingNumber">
		<g:message code="energyTimeSeries.readingNumber.label" default="Reading Number" />
		
	</label>
	<g:field name="readingNumber" type="number" value="${energyTimeSeriesInstance.readingNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'intervalPeak', 'error')} ">
	<label for="intervalPeak">
		<g:message code="energyTimeSeries.intervalPeak.label" default="Interval Peak" />
		
	</label>
	<g:textField name="intervalPeak" maxlength="45" value="${energyTimeSeriesInstance?.intervalPeak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'intervalMinimum', 'error')} ">
	<label for="intervalMinimum">
		<g:message code="energyTimeSeries.intervalMinimum.label" default="Interval Minimum" />
		
	</label>
	<g:textField name="intervalMinimum" maxlength="45" value="${energyTimeSeriesInstance?.intervalMinimum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="energyTimeSeries.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${energyTimeSeriesInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="energyTimeSeries.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${energyTimeSeriesInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="energyTimeSeries.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${energyTimeSeriesInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="energyTimeSeries.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${energyTimeSeriesInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'energyUseMetric', 'error')} required">
	<label for="energyUseMetric">
		<g:message code="energyTimeSeries.energyUseMetric.label" default="Energy Use Metric" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="energyUseMetric" name="energyUseMetric.id" from="${gov.doe.seed.EnergyUseMetric.list()}" optionKey="id" required="" value="${energyTimeSeriesInstance?.energyUseMetric?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="energyTimeSeries.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${energyTimeSeriesInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyTimeSeriesInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="energyTimeSeries.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${energyTimeSeriesInstance?.updatedDate}"  />
</div>

