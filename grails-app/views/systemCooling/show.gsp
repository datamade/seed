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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemCooling.label', default: 'SystemCooling')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemCooling" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemCooling" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemCooling">
			
				<g:if test="${systemCoolingInstance?.quantityCooling}">
				<li class="fieldcontain">
					<span id="quantityCooling-label" class="property-label"><g:message code="systemCooling.quantityCooling.label" default="Quantity Cooling" /></span>
					
						<span class="property-value" aria-labelledby="quantityCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="quantityCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.capacityCooling}">
				<li class="fieldcontain">
					<span id="capacityCooling-label" class="property-label"><g:message code="systemCooling.capacityCooling.label" default="Capacity Cooling" /></span>
					
						<span class="property-value" aria-labelledby="capacityCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="capacityCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.efficiencyCooling}">
				<li class="fieldcontain">
					<span id="efficiencyCooling-label" class="property-label"><g:message code="systemCooling.efficiencyCooling.label" default="Efficiency Cooling" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="efficiencyCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.yearOfManufactureCooling}">
				<li class="fieldcontain">
					<span id="yearOfManufactureCooling-label" class="property-label"><g:message code="systemCooling.yearOfManufactureCooling.label" default="Year Of Manufacture Cooling" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="yearOfManufactureCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.primaryCooling}">
				<li class="fieldcontain">
					<span id="primaryCooling-label" class="property-label"><g:message code="systemCooling.primaryCooling.label" default="Primary Cooling" /></span>
					
						<span class="property-value" aria-labelledby="primaryCooling-label"><g:formatBoolean boolean="${systemCoolingInstance?.primaryCooling}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.energyStarCooling}">
				<li class="fieldcontain">
					<span id="energyStarCooling-label" class="property-label"><g:message code="systemCooling.energyStarCooling.label" default="Energy Star Cooling" /></span>
					
						<span class="property-value" aria-labelledby="energyStarCooling-label"><g:formatBoolean boolean="${systemCoolingInstance?.energyStarCooling}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.percTotInstalledCapacityCooling}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapacityCooling-label" class="property-label"><g:message code="systemCooling.percTotInstalledCapacityCooling.label" default="Perc Tot Installed Capacity Cooling" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapacityCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="percTotInstalledCapacityCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.percFloorAreaServedCooling}">
				<li class="fieldcontain">
					<span id="percFloorAreaServedCooling-label" class="property-label"><g:message code="systemCooling.percFloorAreaServedCooling.label" default="Perc Floor Area Served Cooling" /></span>
					
						<span class="property-value" aria-labelledby="percFloorAreaServedCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="percFloorAreaServedCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.waterEconomizer}">
				<li class="fieldcontain">
					<span id="waterEconomizer-label" class="property-label"><g:message code="systemCooling.waterEconomizer.label" default="Water Economizer" /></span>
					
						<span class="property-value" aria-labelledby="waterEconomizer-label"><g:formatBoolean boolean="${systemCoolingInstance?.waterEconomizer}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.zoneCountCooling}">
				<li class="fieldcontain">
					<span id="zoneCountCooling-label" class="property-label"><g:message code="systemCooling.zoneCountCooling.label" default="Zone Count Cooling" /></span>
					
						<span class="property-value" aria-labelledby="zoneCountCooling-label"><g:fieldValue bean="${systemCoolingInstance}" field="zoneCountCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.coolingEquipRedundancy}">
				<li class="fieldcontain">
					<span id="coolingEquipRedundancy-label" class="property-label"><g:message code="systemCooling.coolingEquipRedundancy.label" default="Cooling Equip Redundancy" /></span>
					
						<span class="property-value" aria-labelledby="coolingEquipRedundancy-label"><g:formatBoolean boolean="${systemCoolingInstance?.coolingEquipRedundancy}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.chilledWaterResetLookup}">
				<li class="fieldcontain">
					<span id="chilledWaterResetLookup-label" class="property-label"><g:message code="systemCooling.chilledWaterResetLookup.label" default="Chilled Water Reset Lookup" /></span>
					
						<span class="property-value" aria-labelledby="chilledWaterResetLookup-label"><g:link controller="chilledWaterResetLookup" action="show" id="${systemCoolingInstance?.chilledWaterResetLookup?.id}">${systemCoolingInstance?.chilledWaterResetLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.chillerCompTypeLookup}">
				<li class="fieldcontain">
					<span id="chillerCompTypeLookup-label" class="property-label"><g:message code="systemCooling.chillerCompTypeLookup.label" default="Chiller Comp Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="chillerCompTypeLookup-label"><g:link controller="chillerCompTypeLookup" action="show" id="${systemCoolingInstance?.chillerCompTypeLookup?.id}">${systemCoolingInstance?.chillerCompTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.chillerCoolingTypeLookup}">
				<li class="fieldcontain">
					<span id="chillerCoolingTypeLookup-label" class="property-label"><g:message code="systemCooling.chillerCoolingTypeLookup.label" default="Chiller Cooling Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="chillerCoolingTypeLookup-label"><g:link controller="chillerCoolingTypeLookup" action="show" id="${systemCoolingInstance?.chillerCoolingTypeLookup?.id}">${systemCoolingInstance?.chillerCoolingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemCooling.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemCoolingInstance?.controlTypeSystemLookup?.id}">${systemCoolingInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.coolingTowerControlLookup}">
				<li class="fieldcontain">
					<span id="coolingTowerControlLookup-label" class="property-label"><g:message code="systemCooling.coolingTowerControlLookup.label" default="Cooling Tower Control Lookup" /></span>
					
						<span class="property-value" aria-labelledby="coolingTowerControlLookup-label"><g:link controller="coolingTowerControlLookup" action="show" id="${systemCoolingInstance?.coolingTowerControlLookup?.id}">${systemCoolingInstance?.coolingTowerControlLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.coolingTypeLookup}">
				<li class="fieldcontain">
					<span id="coolingTypeLookup-label" class="property-label"><g:message code="systemCooling.coolingTypeLookup.label" default="Cooling Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="coolingTypeLookup-label"><g:link controller="coolingTypeLookup" action="show" id="${systemCoolingInstance?.coolingTypeLookup?.id}">${systemCoolingInstance?.coolingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.efficiencyUnitSystemLookup}">
				<li class="fieldcontain">
					<span id="efficiencyUnitSystemLookup-label" class="property-label"><g:message code="systemCooling.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyUnitSystemLookup-label"><g:link controller="efficiencyUnitSystemLookup" action="show" id="${systemCoolingInstance?.efficiencyUnitSystemLookup?.id}">${systemCoolingInstance?.efficiencyUnitSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemCooling.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemCoolingInstance?.fuelTypeLookup?.id}">${systemCoolingInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemCooling.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemCoolingInstance?.system?.id}">${systemCoolingInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCoolingInstance?.systemCoolingLocationLookup}">
				<li class="fieldcontain">
					<span id="systemCoolingLocationLookup-label" class="property-label"><g:message code="systemCooling.systemCoolingLocationLookup.label" default="System Cooling Location Lookup" /></span>
					
						<span class="property-value" aria-labelledby="systemCoolingLocationLookup-label"><g:link controller="systemCoolingLocationLookup" action="show" id="${systemCoolingInstance?.systemCoolingLocationLookup?.id}">${systemCoolingInstance?.systemCoolingLocationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemCoolingInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemCoolingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
