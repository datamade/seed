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
<%@ page import="gov.doe.seed.EnergyUseMetric" %>



<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'identifier', 'error')} ">
	<label for="identifier">
		<g:message code="energyUseMetric.identifier.label" default="Identifier" />
		
	</label>
	<g:field name="identifier" type="number" value="${energyUseMetricInstance.identifier}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'completeFuelInd', 'error')} ">
	<label for="completeFuelInd">
		<g:message code="energyUseMetric.completeFuelInd.label" default="Complete Fuel Ind" />
		
	</label>
	<g:checkBox name="completeFuelInd" value="${energyUseMetricInstance?.completeFuelInd}" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'completeEndUse', 'error')} ">
	<label for="completeEndUse">
		<g:message code="energyUseMetric.completeEndUse.label" default="Complete End Use" />
		
	</label>
	<g:checkBox name="completeEndUse" value="${energyUseMetricInstance?.completeEndUse}" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'readingTimeZone', 'error')} ">
	<label for="readingTimeZone">
		<g:message code="energyUseMetric.readingTimeZone.label" default="Reading Time Zone" />
		
	</label>
	<g:textField name="readingTimeZone" maxlength="3" value="${energyUseMetricInstance?.readingTimeZone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'summerPeak', 'error')} ">
	<label for="summerPeak">
		<g:message code="energyUseMetric.summerPeak.label" default="Summer Peak" />
		
	</label>
	<g:textField name="summerPeak" maxlength="45" value="${energyUseMetricInstance?.summerPeak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'winterPeak', 'error')} ">
	<label for="winterPeak">
		<g:message code="energyUseMetric.winterPeak.label" default="Winter Peak" />
		
	</label>
	<g:textField name="winterPeak" maxlength="45" value="${energyUseMetricInstance?.winterPeak}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'rateStructure', 'error')} ">
	<label for="rateStructure">
		<g:message code="energyUseMetric.rateStructure.label" default="Rate Structure" />
		
	</label>
	<g:textField name="rateStructure" maxlength="45" value="${energyUseMetricInstance?.rateStructure}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'utilityCompany', 'error')} ">
	<label for="utilityCompany">
		<g:message code="energyUseMetric.utilityCompany.label" default="Utility Company" />
		
	</label>
	<g:textField name="utilityCompany" maxlength="45" value="${energyUseMetricInstance?.utilityCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'powerPlant', 'error')} ">
	<label for="powerPlant">
		<g:message code="energyUseMetric.powerPlant.label" default="Power Plant" />
		
	</label>
	<g:textField name="powerPlant" maxlength="45" value="${energyUseMetricInstance?.powerPlant}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'energyUseAlert', 'error')} ">
	<label for="energyUseAlert">
		<g:message code="energyUseMetric.energyUseAlert.label" default="Energy Use Alert" />
		
	</label>
	<g:textField name="energyUseAlert" maxlength="5" value="${energyUseMetricInstance?.energyUseAlert}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'emissionsFactor', 'error')} ">
	<label for="emissionsFactor">
		<g:message code="energyUseMetric.emissionsFactor.label" default="Emissions Factor" />
		
	</label>
	<g:field name="emissionsFactor" value="${fieldValue(bean: energyUseMetricInstance, field: 'emissionsFactor')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'waterUseAlert', 'error')} ">
	<label for="waterUseAlert">
		<g:message code="energyUseMetric.waterUseAlert.label" default="Water Use Alert" />
		
	</label>
	<g:textField name="waterUseAlert" maxlength="45" value="${energyUseMetricInstance?.waterUseAlert}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="energyUseMetric.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${energyUseMetricInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="energyUseMetric.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${energyUseMetricInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="energyUseMetric.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${energyUseMetricInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'endUseTypeLookup', 'error')} required">
	<label for="endUseTypeLookup">
		<g:message code="energyUseMetric.endUseTypeLookup.label" default="End Use Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endUseTypeLookup" name="endUseTypeLookup.id" from="${gov.doe.seed.EndUseTypeLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.endUseTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'energyTimeSerieses', 'error')} ">
	<label for="energyTimeSerieses">
		<g:message code="energyUseMetric.energyTimeSerieses.label" default="Energy Time Serieses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${energyUseMetricInstance?.energyTimeSerieses?}" var="e">
    <li><g:link controller="energyTimeSeries" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyTimeSeries" action="create" params="['energyUseMetric.id': energyUseMetricInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyTimeSeries.label', default: 'EnergyTimeSeries')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="energyUseMetric.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'fuelInterruptLookup', 'error')} required">
	<label for="fuelInterruptLookup">
		<g:message code="energyUseMetric.fuelInterruptLookup.label" default="Fuel Interrupt Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelInterruptLookup" name="fuelInterruptLookup.id" from="${gov.doe.seed.FuelInterruptLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.fuelInterruptLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="energyUseMetric.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'intervalTypeLookup', 'error')} required">
	<label for="intervalTypeLookup">
		<g:message code="energyUseMetric.intervalTypeLookup.label" default="Interval Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="intervalTypeLookup" name="intervalTypeLookup.id" from="${gov.doe.seed.IntervalTypeLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.intervalTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'meterConfigLookup', 'error')} required">
	<label for="meterConfigLookup">
		<g:message code="energyUseMetric.meterConfigLookup.label" default="Meter Config Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="meterConfigLookup" name="meterConfigLookup.id" from="${gov.doe.seed.MeterConfigLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.meterConfigLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'readingTypeLookup', 'error')} required">
	<label for="readingTypeLookup">
		<g:message code="energyUseMetric.readingTypeLookup.label" default="Reading Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="readingTypeLookup" name="readingTypeLookup.id" from="${gov.doe.seed.ReadingTypeLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.readingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'sharedEnergyLookup', 'error')} required">
	<label for="sharedEnergyLookup">
		<g:message code="energyUseMetric.sharedEnergyLookup.label" default="Shared Energy Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sharedEnergyLookup" name="sharedEnergyLookup.id" from="${gov.doe.seed.SharedEnergyLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.sharedEnergyLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'unitTypeLookup', 'error')} required">
	<label for="unitTypeLookup">
		<g:message code="energyUseMetric.unitTypeLookup.label" default="Unit Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitTypeLookup" name="unitTypeLookup.id" from="${gov.doe.seed.UnitTypeLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.unitTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="energyUseMetric.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${energyUseMetricInstance?.updatedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyUseMetricInstance, field: 'waterUseTypeLookup', 'error')} required">
	<label for="waterUseTypeLookup">
		<g:message code="energyUseMetric.waterUseTypeLookup.label" default="Water Use Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="waterUseTypeLookup" name="waterUseTypeLookup.id" from="${gov.doe.seed.WaterUseTypeLookup.list()}" optionKey="id" required="" value="${energyUseMetricInstance?.waterUseTypeLookup?.id}" class="many-to-one"/>
</div>

