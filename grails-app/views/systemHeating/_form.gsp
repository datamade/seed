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
<%@ page import="gov.doe.seed.SystemHeating" %>



<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'systemIdFk', 'error')} ">
	<label for="systemIdFk">
		<g:message code="systemHeating.systemIdFk.label" default="System Id Fk" />
		
	</label>
	<g:field name="systemIdFk" type="number" value="${systemHeatingInstance.systemIdFk}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'quantityHeating', 'error')} ">
	<label for="quantityHeating">
		<g:message code="systemHeating.quantityHeating.label" default="Quantity Heating" />
		
	</label>
	<g:field name="quantityHeating" type="number" value="${systemHeatingInstance.quantityHeating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'capacityHeating', 'error')} ">
	<label for="capacityHeating">
		<g:message code="systemHeating.capacityHeating.label" default="Capacity Heating" />
		
	</label>
	<g:field name="capacityHeating" value="${fieldValue(bean: systemHeatingInstance, field: 'capacityHeating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'yearOfManufactureHeating', 'error')} ">
	<label for="yearOfManufactureHeating">
		<g:message code="systemHeating.yearOfManufactureHeating.label" default="Year Of Manufacture Heating" />
		
	</label>
	<g:field name="yearOfManufactureHeating" type="number" value="${systemHeatingInstance.yearOfManufactureHeating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'primaryHeating', 'error')} ">
	<label for="primaryHeating">
		<g:message code="systemHeating.primaryHeating.label" default="Primary Heating" />
		
	</label>
	<g:checkBox name="primaryHeating" value="${systemHeatingInstance?.primaryHeating}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'efficiencyHeating', 'error')} ">
	<label for="efficiencyHeating">
		<g:message code="systemHeating.efficiencyHeating.label" default="Efficiency Heating" />
		
	</label>
	<g:field name="efficiencyHeating" value="${fieldValue(bean: systemHeatingInstance, field: 'efficiencyHeating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'percTotInstalledCapHeating', 'error')} ">
	<label for="percTotInstalledCapHeating">
		<g:message code="systemHeating.percTotInstalledCapHeating.label" default="Perc Tot Installed Cap Heating" />
		
	</label>
	<g:field name="percTotInstalledCapHeating" value="${fieldValue(bean: systemHeatingInstance, field: 'percTotInstalledCapHeating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'percFloorAreaServedHeating', 'error')} ">
	<label for="percFloorAreaServedHeating">
		<g:message code="systemHeating.percFloorAreaServedHeating.label" default="Perc Floor Area Served Heating" />
		
	</label>
	<g:field name="percFloorAreaServedHeating" value="${fieldValue(bean: systemHeatingInstance, field: 'percFloorAreaServedHeating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'vacuumReturnSystem', 'error')} ">
	<label for="vacuumReturnSystem">
		<g:message code="systemHeating.vacuumReturnSystem.label" default="Vacuum Return System" />
		
	</label>
	<g:checkBox name="vacuumReturnSystem" value="${systemHeatingInstance?.vacuumReturnSystem}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'inputCapacity', 'error')} ">
	<label for="inputCapacity">
		<g:message code="systemHeating.inputCapacity.label" default="Input Capacity" />
		
	</label>
	<g:field name="inputCapacity" value="${fieldValue(bean: systemHeatingInstance, field: 'inputCapacity')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'outputCapacity', 'error')} ">
	<label for="outputCapacity">
		<g:message code="systemHeating.outputCapacity.label" default="Output Capacity" />
		
	</label>
	<g:field name="outputCapacity" value="${fieldValue(bean: systemHeatingInstance, field: 'outputCapacity')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'zoneCountHeating', 'error')} ">
	<label for="zoneCountHeating">
		<g:message code="systemHeating.zoneCountHeating.label" default="Zone Count Heating" />
		
	</label>
	<g:field name="zoneCountHeating" type="number" value="${systemHeatingInstance.zoneCountHeating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'exclusiveFacility', 'error')} ">
	<label for="exclusiveFacility">
		<g:message code="systemHeating.exclusiveFacility.label" default="Exclusive Facility" />
		
	</label>
	<g:checkBox name="exclusiveFacility" value="${systemHeatingInstance?.exclusiveFacility}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'burnerTypeLookup', 'error')} required">
	<label for="burnerTypeLookup">
		<g:message code="systemHeating.burnerTypeLookup.label" default="Burner Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="burnerTypeLookup" name="burnerTypeLookup.id" from="${gov.doe.seed.BurnerTypeLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.burnerTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemHeating.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'draftTypeLookup', 'error')} required">
	<label for="draftTypeLookup">
		<g:message code="systemHeating.draftTypeLookup.label" default="Draft Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="draftTypeLookup" name="draftTypeLookup.id" from="${gov.doe.seed.DraftTypeLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.draftTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'efficiencyUnitSystemLookup', 'error')} required">
	<label for="efficiencyUnitSystemLookup">
		<g:message code="systemHeating.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="efficiencyUnitSystemLookup" name="efficiencyUnitSystemLookup.id" from="${gov.doe.seed.EfficiencyUnitSystemLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.efficiencyUnitSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemHeating.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'heatingDistributionTypes', 'error')} ">
	<label for="heatingDistributionTypes">
		<g:message code="systemHeating.heatingDistributionTypes.label" default="Heating Distribution Types" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemHeatingInstance?.heatingDistributionTypes?}" var="h">
    <li><g:link controller="heatingDistributionType" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="heatingDistributionType" action="create" params="['systemHeating.id': systemHeatingInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'heatingDistributionType.label', default: 'HeatingDistributionType')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'heatingTypeLookup', 'error')} required">
	<label for="heatingTypeLookup">
		<g:message code="systemHeating.heatingTypeLookup.label" default="Heating Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="heatingTypeLookup" name="heatingTypeLookup.id" from="${gov.doe.seed.HeatingTypeLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.heatingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'hotWaterResetLookup', 'error')} required">
	<label for="hotWaterResetLookup">
		<g:message code="systemHeating.hotWaterResetLookup.label" default="Hot Water Reset Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hotWaterResetLookup" name="hotWaterResetLookup.id" from="${gov.doe.seed.HotWaterResetLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.hotWaterResetLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHeatingInstance, field: 'systemHeatingLocationLookup', 'error')} required">
	<label for="systemHeatingLocationLookup">
		<g:message code="systemHeating.systemHeatingLocationLookup.label" default="System Heating Location Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemHeatingLocationLookup" name="systemHeatingLocationLookup.id" from="${gov.doe.seed.SystemHeatingLocationLookup.list()}" optionKey="id" required="" value="${systemHeatingInstance?.systemHeatingLocationLookup?.id}" class="many-to-one"/>
</div>

