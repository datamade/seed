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
<%@ page import="gov.doe.seed.SystemHotwater" %>



<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'quantityHotWater', 'error')} ">
	<label for="quantityHotWater">
		<g:message code="systemHotwater.quantityHotWater.label" default="Quantity Hot Water" />
		
	</label>
	<g:field name="quantityHotWater" type="number" value="${systemHotwaterInstance.quantityHotWater}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'sizeHotWater', 'error')} ">
	<label for="sizeHotWater">
		<g:message code="systemHotwater.sizeHotWater.label" default="Size Hot Water" />
		
	</label>
	<g:field name="sizeHotWater" value="${fieldValue(bean: systemHotwaterInstance, field: 'sizeHotWater')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'capacityHotWater', 'error')} ">
	<label for="capacityHotWater">
		<g:message code="systemHotwater.capacityHotWater.label" default="Capacity Hot Water" />
		
	</label>
	<g:field name="capacityHotWater" value="${fieldValue(bean: systemHotwaterInstance, field: 'capacityHotWater')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'yearOfManufactureHotWater', 'error')} ">
	<label for="yearOfManufactureHotWater">
		<g:message code="systemHotwater.yearOfManufactureHotWater.label" default="Year Of Manufacture Hot Water" />
		
	</label>
	<g:field name="yearOfManufactureHotWater" type="number" value="${systemHotwaterInstance.yearOfManufactureHotWater}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'efficiencyHotWater', 'error')} ">
	<label for="efficiencyHotWater">
		<g:message code="systemHotwater.efficiencyHotWater.label" default="Efficiency Hot Water" />
		
	</label>
	<g:field name="efficiencyHotWater" value="${fieldValue(bean: systemHotwaterInstance, field: 'efficiencyHotWater')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'energyStarHotWater', 'error')} ">
	<label for="energyStarHotWater">
		<g:message code="systemHotwater.energyStarHotWater.label" default="Energy Star Hot Water" />
		
	</label>
	<g:checkBox name="energyStarHotWater" value="${systemHotwaterInstance?.energyStarHotWater}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'storageTankInsulationRValue', 'error')} ">
	<label for="storageTankInsulationRValue">
		<g:message code="systemHotwater.storageTankInsulationRValue.label" default="Storage Tank Insulation RV alue" />
		
	</label>
	<g:field name="storageTankInsulationRValue" type="number" value="${systemHotwaterInstance.storageTankInsulationRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'storageTankInsulationThickness', 'error')} ">
	<label for="storageTankInsulationThickness">
		<g:message code="systemHotwater.storageTankInsulationThickness.label" default="Storage Tank Insulation Thickness" />
		
	</label>
	<g:field name="storageTankInsulationThickness" value="${fieldValue(bean: systemHotwaterInstance, field: 'storageTankInsulationThickness')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'percTotInstalledCapHotWater', 'error')} ">
	<label for="percTotInstalledCapHotWater">
		<g:message code="systemHotwater.percTotInstalledCapHotWater.label" default="Perc Tot Installed Cap Hot Water" />
		
	</label>
	<g:field name="percTotInstalledCapHotWater" value="${fieldValue(bean: systemHotwaterInstance, field: 'percTotInstalledCapHotWater')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'setpointTemp', 'error')} ">
	<label for="setpointTemp">
		<g:message code="systemHotwater.setpointTemp.label" default="Setpoint Temp" />
		
	</label>
	<g:field name="setpointTemp" value="${fieldValue(bean: systemHotwaterInstance, field: 'setpointTemp')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemHotwater.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'efficiencyUnitSystemLookup', 'error')} required">
	<label for="efficiencyUnitSystemLookup">
		<g:message code="systemHotwater.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="efficiencyUnitSystemLookup" name="efficiencyUnitSystemLookup.id" from="${gov.doe.seed.EfficiencyUnitSystemLookup.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.efficiencyUnitSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemHotwater.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'resTempLookup', 'error')} required">
	<label for="resTempLookup">
		<g:message code="systemHotwater.resTempLookup.label" default="Res Temp Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resTempLookup" name="resTempLookup.id" from="${gov.doe.seed.ResTempLookup.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.resTempLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'serviceHotwaterLookup', 'error')} required">
	<label for="serviceHotwaterLookup">
		<g:message code="systemHotwater.serviceHotwaterLookup.label" default="Service Hotwater Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="serviceHotwaterLookup" name="serviceHotwaterLookup.id" from="${gov.doe.seed.ServiceHotwaterLookup.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.serviceHotwaterLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemHotwater.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHotwaterInstance, field: 'systemHotwaterLocationLookup', 'error')} required">
	<label for="systemHotwaterLocationLookup">
		<g:message code="systemHotwater.systemHotwaterLocationLookup.label" default="System Hotwater Location Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemHotwaterLocationLookup" name="systemHotwaterLocationLookup.id" from="${gov.doe.seed.SystemHotwaterLocationLookup.list()}" optionKey="id" required="" value="${systemHotwaterInstance?.systemHotwaterLocationLookup?.id}" class="many-to-one"/>
</div>

