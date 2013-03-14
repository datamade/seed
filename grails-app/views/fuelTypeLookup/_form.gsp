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
<%@ page import="gov.doe.seed.FuelTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'fuelType', 'error')} ">
	<label for="fuelType">
		<g:message code="fuelTypeLookup.fuelType.label" default="Fuel Type" />
		
	</label>
	<g:textField name="fuelType" maxlength="100" value="${fuelTypeLookupInstance?.fuelType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'fuelTypeDescription', 'error')} ">
	<label for="fuelTypeDescription">
		<g:message code="fuelTypeLookup.fuelTypeDescription.label" default="Fuel Type Description" />
		
	</label>
	<g:textField name="fuelTypeDescription" maxlength="100" value="${fuelTypeLookupInstance?.fuelTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="fuelTypeLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${fuelTypeLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="fuelTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${fuelTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="fuelTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${fuelTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="fuelTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${fuelTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'energyUseMetrics', 'error')} ">
	<label for="energyUseMetrics">
		<g:message code="fuelTypeLookup.energyUseMetrics.label" default="Energy Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.energyUseMetrics?}" var="e">
    <li><g:link controller="energyUseMetric" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyUseMetric" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyUseMetric.label', default: 'EnergyUseMetric')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemCookings', 'error')} ">
	<label for="systemCookings">
		<g:message code="fuelTypeLookup.systemCookings.label" default="System Cookings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemCookings?}" var="s">
    <li><g:link controller="systemCooking" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemCooking" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemCooking.label', default: 'SystemCooking')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemCoolings', 'error')} ">
	<label for="systemCoolings">
		<g:message code="fuelTypeLookup.systemCoolings.label" default="System Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemCoolings?}" var="s">
    <li><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemCooling" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemCooling.label', default: 'SystemCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemDishwashers', 'error')} ">
	<label for="systemDishwashers">
		<g:message code="fuelTypeLookup.systemDishwashers.label" default="System Dishwashers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemDishwashers?}" var="s">
    <li><g:link controller="systemDishwasher" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemDishwasher" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemDishwasher.label', default: 'SystemDishwasher')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemHeatings', 'error')} ">
	<label for="systemHeatings">
		<g:message code="fuelTypeLookup.systemHeatings.label" default="System Heatings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemHeatings?}" var="s">
    <li><g:link controller="systemHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHeating" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHeating.label', default: 'SystemHeating')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemHotwaters', 'error')} ">
	<label for="systemHotwaters">
		<g:message code="fuelTypeLookup.systemHotwaters.label" default="System Hotwaters" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemHotwaters?}" var="s">
    <li><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHotwater" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHotwater.label', default: 'SystemHotwater')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemHvacs', 'error')} ">
	<label for="systemHvacs">
		<g:message code="fuelTypeLookup.systemHvacs.label" default="System Hvacs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemHvacs?}" var="s">
    <li><g:link controller="systemHvac" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHvac" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHvac.label', default: 'SystemHvac')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemLaundries', 'error')} ">
	<label for="systemLaundries">
		<g:message code="fuelTypeLookup.systemLaundries.label" default="System Laundries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemLaundries?}" var="s">
    <li><g:link controller="systemLaundry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemLaundry" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemLaundry.label', default: 'SystemLaundry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemOnsites', 'error')} ">
	<label for="systemOnsites">
		<g:message code="fuelTypeLookup.systemOnsites.label" default="System Onsites" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemOnsites?}" var="s">
    <li><g:link controller="systemOnsite" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemOnsite" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemOnsite.label', default: 'SystemOnsite')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemPools', 'error')} ">
	<label for="systemPools">
		<g:message code="fuelTypeLookup.systemPools.label" default="System Pools" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemPools?}" var="s">
    <li><g:link controller="systemPool" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemPool" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemPool.label', default: 'SystemPool')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemProcessLoads', 'error')} ">
	<label for="systemProcessLoads">
		<g:message code="fuelTypeLookup.systemProcessLoads.label" default="System Process Loads" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemProcessLoads?}" var="s">
    <li><g:link controller="systemProcessLoad" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemProcessLoad" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemProcessLoad.label', default: 'SystemProcessLoad')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemZonalCoolings', 'error')} ">
	<label for="systemZonalCoolings">
		<g:message code="fuelTypeLookup.systemZonalCoolings.label" default="System Zonal Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemZonalCoolings?}" var="s">
    <li><g:link controller="systemZonalCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemZonalCooling" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemZonalCooling.label', default: 'SystemZonalCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'systemZonalHeatings', 'error')} ">
	<label for="systemZonalHeatings">
		<g:message code="fuelTypeLookup.systemZonalHeatings.label" default="System Zonal Heatings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${fuelTypeLookupInstance?.systemZonalHeatings?}" var="s">
    <li><g:link controller="systemZonalHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemZonalHeating" action="create" params="['fuelTypeLookup.id': fuelTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemZonalHeating.label', default: 'SystemZonalHeating')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: fuelTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="fuelTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${fuelTypeLookupInstance?.updatedDate}"  />
</div>

