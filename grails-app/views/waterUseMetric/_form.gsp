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
<%@ page import="gov.doe.seed.WaterUseMetric" %>



<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'pmMeterId', 'error')} ">
	<label for="pmMeterId">
		<g:message code="waterUseMetric.pmMeterId.label" default="Pm Meter Id" />
		
	</label>
	<g:textField name="pmMeterId" maxlength="45" value="${waterUseMetricInstance?.pmMeterId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'espMeterId', 'error')} ">
	<label for="espMeterId">
		<g:message code="waterUseMetric.espMeterId.label" default="Esp Meter Id" />
		
	</label>
	<g:textField name="espMeterId" maxlength="45" value="${waterUseMetricInstance?.espMeterId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'meterName', 'error')} ">
	<label for="meterName">
		<g:message code="waterUseMetric.meterName.label" default="Meter Name" />
		
	</label>
	<g:textField name="meterName" maxlength="45" value="${waterUseMetricInstance?.meterName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'utilityCompany', 'error')} ">
	<label for="utilityCompany">
		<g:message code="waterUseMetric.utilityCompany.label" default="Utility Company" />
		
	</label>
	<g:textField name="utilityCompany" maxlength="45" value="${waterUseMetricInstance?.utilityCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'pmWaterMeterId', 'error')} ">
	<label for="pmWaterMeterId">
		<g:message code="waterUseMetric.pmWaterMeterId.label" default="Pm Water Meter Id" />
		
	</label>
	<g:textField name="pmWaterMeterId" maxlength="45" value="${waterUseMetricInstance?.pmWaterMeterId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'espWaterMeterId', 'error')} ">
	<label for="espWaterMeterId">
		<g:message code="waterUseMetric.espWaterMeterId.label" default="Esp Water Meter Id" />
		
	</label>
	<g:textField name="espWaterMeterId" maxlength="45" value="${waterUseMetricInstance?.espWaterMeterId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'indoorWaterCost', 'error')} ">
	<label for="indoorWaterCost">
		<g:message code="waterUseMetric.indoorWaterCost.label" default="Indoor Water Cost" />
		
	</label>
	<g:textField name="indoorWaterCost" maxlength="45" value="${waterUseMetricInstance?.indoorWaterCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'indoorWaterUse', 'error')} ">
	<label for="indoorWaterUse">
		<g:message code="waterUseMetric.indoorWaterUse.label" default="Indoor Water Use" />
		
	</label>
	<g:textField name="indoorWaterUse" maxlength="45" value="${waterUseMetricInstance?.indoorWaterUse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'indoorWaterUsePerSqft', 'error')} ">
	<label for="indoorWaterUsePerSqft">
		<g:message code="waterUseMetric.indoorWaterUsePerSqft.label" default="Indoor Water Use Per Sqft" />
		
	</label>
	<g:textField name="indoorWaterUsePerSqft" maxlength="45" value="${waterUseMetricInstance?.indoorWaterUsePerSqft}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'otherWaterCost', 'error')} ">
	<label for="otherWaterCost">
		<g:message code="waterUseMetric.otherWaterCost.label" default="Other Water Cost" />
		
	</label>
	<g:textField name="otherWaterCost" maxlength="45" value="${waterUseMetricInstance?.otherWaterCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'otherWaterUse', 'error')} ">
	<label for="otherWaterUse">
		<g:message code="waterUseMetric.otherWaterUse.label" default="Other Water Use" />
		
	</label>
	<g:textField name="otherWaterUse" maxlength="45" value="${waterUseMetricInstance?.otherWaterUse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'totIndoorOutdoorWaterCost', 'error')} ">
	<label for="totIndoorOutdoorWaterCost">
		<g:message code="waterUseMetric.totIndoorOutdoorWaterCost.label" default="Tot Indoor Outdoor Water Cost" />
		
	</label>
	<g:textField name="totIndoorOutdoorWaterCost" maxlength="45" value="${waterUseMetricInstance?.totIndoorOutdoorWaterCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'totIndoorOutdoorWaterUse', 'error')} ">
	<label for="totIndoorOutdoorWaterUse">
		<g:message code="waterUseMetric.totIndoorOutdoorWaterUse.label" default="Tot Indoor Outdoor Water Use" />
		
	</label>
	<g:textField name="totIndoorOutdoorWaterUse" maxlength="45" value="${waterUseMetricInstance?.totIndoorOutdoorWaterUse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'wasteWaterSewerCost', 'error')} ">
	<label for="wasteWaterSewerCost">
		<g:message code="waterUseMetric.wasteWaterSewerCost.label" default="Waste Water Sewer Cost" />
		
	</label>
	<g:textField name="wasteWaterSewerCost" maxlength="45" value="${waterUseMetricInstance?.wasteWaterSewerCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'wasteWaterSewerUse', 'error')} ">
	<label for="wasteWaterSewerUse">
		<g:message code="waterUseMetric.wasteWaterSewerUse.label" default="Waste Water Sewer Use" />
		
	</label>
	<g:textField name="wasteWaterSewerUse" maxlength="45" value="${waterUseMetricInstance?.wasteWaterSewerUse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'waterUseAlerts', 'error')} ">
	<label for="waterUseAlerts">
		<g:message code="waterUseMetric.waterUseAlerts.label" default="Water Use Alerts" />
		
	</label>
	<g:checkBox name="waterUseAlerts" value="${waterUseMetricInstance?.waterUseAlerts}" />
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="waterUseMetric.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${waterUseMetricInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="waterUseMetric.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${waterUseMetricInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="waterUseMetric.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${waterUseMetricInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="waterUseMetric.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${waterUseMetricInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'metricTypeLookup', 'error')} required">
	<label for="metricTypeLookup">
		<g:message code="waterUseMetric.metricTypeLookup.label" default="Metric Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="metricTypeLookup" name="metricTypeLookup.id" from="${gov.doe.seed.MetricTypeLookup.list()}" optionKey="id" required="" value="${waterUseMetricInstance?.metricTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'unitTypeLookup', 'error')} required">
	<label for="unitTypeLookup">
		<g:message code="waterUseMetric.unitTypeLookup.label" default="Unit Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitTypeLookup" name="unitTypeLookup.id" from="${gov.doe.seed.UnitTypeLookup.list()}" optionKey="id" required="" value="${waterUseMetricInstance?.unitTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="waterUseMetric.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${waterUseMetricInstance?.updatedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'waterTimeSerieses', 'error')} ">
	<label for="waterTimeSerieses">
		<g:message code="waterUseMetric.waterTimeSerieses.label" default="Water Time Serieses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${waterUseMetricInstance?.waterTimeSerieses?}" var="w">
    <li><g:link controller="waterTimeSeries" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="waterTimeSeries" action="create" params="['waterUseMetric.id': waterUseMetricInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'waterTimeSeries.label', default: 'WaterTimeSeries')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: waterUseMetricInstance, field: 'waterUseMetricValue', 'error')} required">
	<label for="waterUseMetricValue">
		<g:message code="waterUseMetric.waterUseMetricValue.label" default="Water Use Metric Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="waterUseMetricValue" value="${fieldValue(bean: waterUseMetricInstance, field: 'waterUseMetricValue')}" required=""/>
</div>

