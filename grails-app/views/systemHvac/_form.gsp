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
<%@ page import="gov.doe.seed.SystemHvac" %>



<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'systemIdFk', 'error')} ">
	<label for="systemIdFk">
		<g:message code="systemHvac.systemIdFk.label" default="System Id Fk" />
		
	</label>
	<g:field name="systemIdFk" type="number" value="${systemHvacInstance.systemIdFk}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'quantityHvac', 'error')} ">
	<label for="quantityHvac">
		<g:message code="systemHvac.quantityHvac.label" default="Quantity Hvac" />
		
	</label>
	<g:field name="quantityHvac" type="number" value="${systemHvacInstance.quantityHvac}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'capacityHvac', 'error')} ">
	<label for="capacityHvac">
		<g:message code="systemHvac.capacityHvac.label" default="Capacity Hvac" />
		
	</label>
	<g:field name="capacityHvac" value="${fieldValue(bean: systemHvacInstance, field: 'capacityHvac')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'percTotInstalledCapacityHvac', 'error')} ">
	<label for="percTotInstalledCapacityHvac">
		<g:message code="systemHvac.percTotInstalledCapacityHvac.label" default="Perc Tot Installed Capacity Hvac" />
		
	</label>
	<g:field name="percTotInstalledCapacityHvac" value="${fieldValue(bean: systemHvacInstance, field: 'percTotInstalledCapacityHvac')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'percFloorAreaServedHvac', 'error')} ">
	<label for="percFloorAreaServedHvac">
		<g:message code="systemHvac.percFloorAreaServedHvac.label" default="Perc Floor Area Served Hvac" />
		
	</label>
	<g:field name="percFloorAreaServedHvac" value="${fieldValue(bean: systemHvacInstance, field: 'percFloorAreaServedHvac')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'yearOfManufactureHvac', 'error')} ">
	<label for="yearOfManufactureHvac">
		<g:message code="systemHvac.yearOfManufactureHvac.label" default="Year Of Manufacture Hvac" />
		
	</label>
	<g:field name="yearOfManufactureHvac" type="number" value="${systemHvacInstance.yearOfManufactureHvac}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'zoneCountHvac', 'error')} ">
	<label for="zoneCountHvac">
		<g:message code="systemHvac.zoneCountHvac.label" default="Zone Count Hvac" />
		
	</label>
	<g:field name="zoneCountHvac" type="number" value="${systemHvacInstance.zoneCountHvac}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemHvac.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemHvacInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemHvac.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemHvacInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'otherHvacTypeLookup', 'error')} required">
	<label for="otherHvacTypeLookup">
		<g:message code="systemHvac.otherHvacTypeLookup.label" default="Other Hvac Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="otherHvacTypeLookup" name="otherHvacTypeLookup.id" from="${gov.doe.seed.OtherHvacTypeLookup.list()}" optionKey="id" required="" value="${systemHvacInstance?.otherHvacTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacInstance, field: 'systemHvacLocationLookup', 'error')} required">
	<label for="systemHvacLocationLookup">
		<g:message code="systemHvac.systemHvacLocationLookup.label" default="System Hvac Location Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemHvacLocationLookup" name="systemHvacLocationLookup.id" from="${gov.doe.seed.SystemHvacLocationLookup.list()}" optionKey="id" required="" value="${systemHvacInstance?.systemHvacLocationLookup?.id}" class="many-to-one"/>
</div>

