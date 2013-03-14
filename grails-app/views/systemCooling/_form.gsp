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
<%@ page import="gov.doe.seed.SystemCooling" %>



<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'quantityCooling', 'error')} ">
	<label for="quantityCooling">
		<g:message code="systemCooling.quantityCooling.label" default="Quantity Cooling" />
		
	</label>
	<g:field name="quantityCooling" type="number" value="${systemCoolingInstance.quantityCooling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'capacityCooling', 'error')} ">
	<label for="capacityCooling">
		<g:message code="systemCooling.capacityCooling.label" default="Capacity Cooling" />
		
	</label>
	<g:field name="capacityCooling" value="${fieldValue(bean: systemCoolingInstance, field: 'capacityCooling')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'efficiencyCooling', 'error')} ">
	<label for="efficiencyCooling">
		<g:message code="systemCooling.efficiencyCooling.label" default="Efficiency Cooling" />
		
	</label>
	<g:field name="efficiencyCooling" value="${fieldValue(bean: systemCoolingInstance, field: 'efficiencyCooling')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'yearOfManufactureCooling', 'error')} ">
	<label for="yearOfManufactureCooling">
		<g:message code="systemCooling.yearOfManufactureCooling.label" default="Year Of Manufacture Cooling" />
		
	</label>
	<g:field name="yearOfManufactureCooling" type="number" value="${systemCoolingInstance.yearOfManufactureCooling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'primaryCooling', 'error')} ">
	<label for="primaryCooling">
		<g:message code="systemCooling.primaryCooling.label" default="Primary Cooling" />
		
	</label>
	<g:checkBox name="primaryCooling" value="${systemCoolingInstance?.primaryCooling}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'energyStarCooling', 'error')} ">
	<label for="energyStarCooling">
		<g:message code="systemCooling.energyStarCooling.label" default="Energy Star Cooling" />
		
	</label>
	<g:checkBox name="energyStarCooling" value="${systemCoolingInstance?.energyStarCooling}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'percTotInstalledCapacityCooling', 'error')} ">
	<label for="percTotInstalledCapacityCooling">
		<g:message code="systemCooling.percTotInstalledCapacityCooling.label" default="Perc Tot Installed Capacity Cooling" />
		
	</label>
	<g:field name="percTotInstalledCapacityCooling" value="${fieldValue(bean: systemCoolingInstance, field: 'percTotInstalledCapacityCooling')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'percFloorAreaServedCooling', 'error')} ">
	<label for="percFloorAreaServedCooling">
		<g:message code="systemCooling.percFloorAreaServedCooling.label" default="Perc Floor Area Served Cooling" />
		
	</label>
	<g:field name="percFloorAreaServedCooling" value="${fieldValue(bean: systemCoolingInstance, field: 'percFloorAreaServedCooling')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'waterEconomizer', 'error')} ">
	<label for="waterEconomizer">
		<g:message code="systemCooling.waterEconomizer.label" default="Water Economizer" />
		
	</label>
	<g:checkBox name="waterEconomizer" value="${systemCoolingInstance?.waterEconomizer}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'zoneCountCooling', 'error')} ">
	<label for="zoneCountCooling">
		<g:message code="systemCooling.zoneCountCooling.label" default="Zone Count Cooling" />
		
	</label>
	<g:field name="zoneCountCooling" type="number" value="${systemCoolingInstance.zoneCountCooling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'coolingEquipRedundancy', 'error')} ">
	<label for="coolingEquipRedundancy">
		<g:message code="systemCooling.coolingEquipRedundancy.label" default="Cooling Equip Redundancy" />
		
	</label>
	<g:checkBox name="coolingEquipRedundancy" value="${systemCoolingInstance?.coolingEquipRedundancy}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'chilledWaterResetLookup', 'error')} required">
	<label for="chilledWaterResetLookup">
		<g:message code="systemCooling.chilledWaterResetLookup.label" default="Chilled Water Reset Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="chilledWaterResetLookup" name="chilledWaterResetLookup.id" from="${gov.doe.seed.ChilledWaterResetLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.chilledWaterResetLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'chillerCompTypeLookup', 'error')} required">
	<label for="chillerCompTypeLookup">
		<g:message code="systemCooling.chillerCompTypeLookup.label" default="Chiller Comp Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="chillerCompTypeLookup" name="chillerCompTypeLookup.id" from="${gov.doe.seed.ChillerCompTypeLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.chillerCompTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'chillerCoolingTypeLookup', 'error')} required">
	<label for="chillerCoolingTypeLookup">
		<g:message code="systemCooling.chillerCoolingTypeLookup.label" default="Chiller Cooling Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="chillerCoolingTypeLookup" name="chillerCoolingTypeLookup.id" from="${gov.doe.seed.ChillerCoolingTypeLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.chillerCoolingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemCooling.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'coolingTowerControlLookup', 'error')} required">
	<label for="coolingTowerControlLookup">
		<g:message code="systemCooling.coolingTowerControlLookup.label" default="Cooling Tower Control Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coolingTowerControlLookup" name="coolingTowerControlLookup.id" from="${gov.doe.seed.CoolingTowerControlLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.coolingTowerControlLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'coolingTypeLookup', 'error')} required">
	<label for="coolingTypeLookup">
		<g:message code="systemCooling.coolingTypeLookup.label" default="Cooling Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coolingTypeLookup" name="coolingTypeLookup.id" from="${gov.doe.seed.CoolingTypeLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.coolingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'efficiencyUnitSystemLookup', 'error')} required">
	<label for="efficiencyUnitSystemLookup">
		<g:message code="systemCooling.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="efficiencyUnitSystemLookup" name="efficiencyUnitSystemLookup.id" from="${gov.doe.seed.EfficiencyUnitSystemLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.efficiencyUnitSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemCooling.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemCooling.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemCoolingInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCoolingInstance, field: 'systemCoolingLocationLookup', 'error')} required">
	<label for="systemCoolingLocationLookup">
		<g:message code="systemCooling.systemCoolingLocationLookup.label" default="System Cooling Location Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemCoolingLocationLookup" name="systemCoolingLocationLookup.id" from="${gov.doe.seed.SystemCoolingLocationLookup.list()}" optionKey="id" required="" value="${systemCoolingInstance?.systemCoolingLocationLookup?.id}" class="many-to-one"/>
</div>

