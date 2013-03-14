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
<%@ page import="gov.doe.seed.SystemZonalHeating" %>



<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'quantityZheating', 'error')} ">
	<label for="quantityZheating">
		<g:message code="systemZonalHeating.quantityZheating.label" default="Quantity Zheating" />
		
	</label>
	<g:field name="quantityZheating" type="number" value="${systemZonalHeatingInstance.quantityZheating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'yearOfManufactureZheating', 'error')} ">
	<label for="yearOfManufactureZheating">
		<g:message code="systemZonalHeating.yearOfManufactureZheating.label" default="Year Of Manufacture Zheating" />
		
	</label>
	<g:field name="yearOfManufactureZheating" type="number" value="${systemZonalHeatingInstance.yearOfManufactureZheating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'percTotInstalledCapZheating', 'error')} ">
	<label for="percTotInstalledCapZheating">
		<g:message code="systemZonalHeating.percTotInstalledCapZheating.label" default="Perc Tot Installed Cap Zheating" />
		
	</label>
	<g:field name="percTotInstalledCapZheating" value="${fieldValue(bean: systemZonalHeatingInstance, field: 'percTotInstalledCapZheating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'percFloorAreaServedZheating', 'error')} ">
	<label for="percFloorAreaServedZheating">
		<g:message code="systemZonalHeating.percFloorAreaServedZheating.label" default="Perc Floor Area Served Zheating" />
		
	</label>
	<g:field name="percFloorAreaServedZheating" value="${fieldValue(bean: systemZonalHeatingInstance, field: 'percFloorAreaServedZheating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'waterEconomizer', 'error')} ">
	<label for="waterEconomizer">
		<g:message code="systemZonalHeating.waterEconomizer.label" default="Water Economizer" />
		
	</label>
	<g:checkBox name="waterEconomizer" value="${systemZonalHeatingInstance?.waterEconomizer}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'zoneCountCooling', 'error')} ">
	<label for="zoneCountCooling">
		<g:message code="systemZonalHeating.zoneCountCooling.label" default="Zone Count Cooling" />
		
	</label>
	<g:field name="zoneCountCooling" type="number" value="${systemZonalHeatingInstance.zoneCountCooling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'coolingEquipRedundancy', 'error')} ">
	<label for="coolingEquipRedundancy">
		<g:message code="systemZonalHeating.coolingEquipRedundancy.label" default="Cooling Equip Redundancy" />
		
	</label>
	<g:checkBox name="coolingEquipRedundancy" value="${systemZonalHeatingInstance?.coolingEquipRedundancy}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemZonalHeating.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemZonalHeatingInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemZonalHeating.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemZonalHeatingInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemZonalHeating.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemZonalHeatingInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalHeatingInstance, field: 'zonalHeatingTypeLookup', 'error')} required">
	<label for="zonalHeatingTypeLookup">
		<g:message code="systemZonalHeating.zonalHeatingTypeLookup.label" default="Zonal Heating Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="zonalHeatingTypeLookup" name="zonalHeatingTypeLookup.id" from="${gov.doe.seed.ZonalHeatingTypeLookup.list()}" optionKey="id" required="" value="${systemZonalHeatingInstance?.zonalHeatingTypeLookup?.id}" class="many-to-one"/>
</div>

