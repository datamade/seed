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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemHeating.label', default: 'SystemHeating')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemHeating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemHeating" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemHeating">
			
				<g:if test="${systemHeatingInstance?.systemIdFk}">
				<li class="fieldcontain">
					<span id="systemIdFk-label" class="property-label"><g:message code="systemHeating.systemIdFk.label" default="System Id Fk" /></span>
					
						<span class="property-value" aria-labelledby="systemIdFk-label"><g:fieldValue bean="${systemHeatingInstance}" field="systemIdFk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.quantityHeating}">
				<li class="fieldcontain">
					<span id="quantityHeating-label" class="property-label"><g:message code="systemHeating.quantityHeating.label" default="Quantity Heating" /></span>
					
						<span class="property-value" aria-labelledby="quantityHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="quantityHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.capacityHeating}">
				<li class="fieldcontain">
					<span id="capacityHeating-label" class="property-label"><g:message code="systemHeating.capacityHeating.label" default="Capacity Heating" /></span>
					
						<span class="property-value" aria-labelledby="capacityHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="capacityHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.yearOfManufactureHeating}">
				<li class="fieldcontain">
					<span id="yearOfManufactureHeating-label" class="property-label"><g:message code="systemHeating.yearOfManufactureHeating.label" default="Year Of Manufacture Heating" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="yearOfManufactureHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.primaryHeating}">
				<li class="fieldcontain">
					<span id="primaryHeating-label" class="property-label"><g:message code="systemHeating.primaryHeating.label" default="Primary Heating" /></span>
					
						<span class="property-value" aria-labelledby="primaryHeating-label"><g:formatBoolean boolean="${systemHeatingInstance?.primaryHeating}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.efficiencyHeating}">
				<li class="fieldcontain">
					<span id="efficiencyHeating-label" class="property-label"><g:message code="systemHeating.efficiencyHeating.label" default="Efficiency Heating" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="efficiencyHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.percTotInstalledCapHeating}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapHeating-label" class="property-label"><g:message code="systemHeating.percTotInstalledCapHeating.label" default="Perc Tot Installed Cap Heating" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="percTotInstalledCapHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.percFloorAreaServedHeating}">
				<li class="fieldcontain">
					<span id="percFloorAreaServedHeating-label" class="property-label"><g:message code="systemHeating.percFloorAreaServedHeating.label" default="Perc Floor Area Served Heating" /></span>
					
						<span class="property-value" aria-labelledby="percFloorAreaServedHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="percFloorAreaServedHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.vacuumReturnSystem}">
				<li class="fieldcontain">
					<span id="vacuumReturnSystem-label" class="property-label"><g:message code="systemHeating.vacuumReturnSystem.label" default="Vacuum Return System" /></span>
					
						<span class="property-value" aria-labelledby="vacuumReturnSystem-label"><g:formatBoolean boolean="${systemHeatingInstance?.vacuumReturnSystem}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.inputCapacity}">
				<li class="fieldcontain">
					<span id="inputCapacity-label" class="property-label"><g:message code="systemHeating.inputCapacity.label" default="Input Capacity" /></span>
					
						<span class="property-value" aria-labelledby="inputCapacity-label"><g:fieldValue bean="${systemHeatingInstance}" field="inputCapacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.outputCapacity}">
				<li class="fieldcontain">
					<span id="outputCapacity-label" class="property-label"><g:message code="systemHeating.outputCapacity.label" default="Output Capacity" /></span>
					
						<span class="property-value" aria-labelledby="outputCapacity-label"><g:fieldValue bean="${systemHeatingInstance}" field="outputCapacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.zoneCountHeating}">
				<li class="fieldcontain">
					<span id="zoneCountHeating-label" class="property-label"><g:message code="systemHeating.zoneCountHeating.label" default="Zone Count Heating" /></span>
					
						<span class="property-value" aria-labelledby="zoneCountHeating-label"><g:fieldValue bean="${systemHeatingInstance}" field="zoneCountHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.exclusiveFacility}">
				<li class="fieldcontain">
					<span id="exclusiveFacility-label" class="property-label"><g:message code="systemHeating.exclusiveFacility.label" default="Exclusive Facility" /></span>
					
						<span class="property-value" aria-labelledby="exclusiveFacility-label"><g:formatBoolean boolean="${systemHeatingInstance?.exclusiveFacility}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.burnerTypeLookup}">
				<li class="fieldcontain">
					<span id="burnerTypeLookup-label" class="property-label"><g:message code="systemHeating.burnerTypeLookup.label" default="Burner Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="burnerTypeLookup-label"><g:link controller="burnerTypeLookup" action="show" id="${systemHeatingInstance?.burnerTypeLookup?.id}">${systemHeatingInstance?.burnerTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemHeating.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemHeatingInstance?.controlTypeSystemLookup?.id}">${systemHeatingInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.draftTypeLookup}">
				<li class="fieldcontain">
					<span id="draftTypeLookup-label" class="property-label"><g:message code="systemHeating.draftTypeLookup.label" default="Draft Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="draftTypeLookup-label"><g:link controller="draftTypeLookup" action="show" id="${systemHeatingInstance?.draftTypeLookup?.id}">${systemHeatingInstance?.draftTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.efficiencyUnitSystemLookup}">
				<li class="fieldcontain">
					<span id="efficiencyUnitSystemLookup-label" class="property-label"><g:message code="systemHeating.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyUnitSystemLookup-label"><g:link controller="efficiencyUnitSystemLookup" action="show" id="${systemHeatingInstance?.efficiencyUnitSystemLookup?.id}">${systemHeatingInstance?.efficiencyUnitSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemHeating.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemHeatingInstance?.fuelTypeLookup?.id}">${systemHeatingInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.heatingDistributionTypes}">
				<li class="fieldcontain">
					<span id="heatingDistributionTypes-label" class="property-label"><g:message code="systemHeating.heatingDistributionTypes.label" default="Heating Distribution Types" /></span>
					
						<g:each in="${systemHeatingInstance.heatingDistributionTypes}" var="h">
						<span class="property-value" aria-labelledby="heatingDistributionTypes-label"><g:link controller="heatingDistributionType" action="show" id="${h.id}">${h?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.heatingTypeLookup}">
				<li class="fieldcontain">
					<span id="heatingTypeLookup-label" class="property-label"><g:message code="systemHeating.heatingTypeLookup.label" default="Heating Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="heatingTypeLookup-label"><g:link controller="heatingTypeLookup" action="show" id="${systemHeatingInstance?.heatingTypeLookup?.id}">${systemHeatingInstance?.heatingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.hotWaterResetLookup}">
				<li class="fieldcontain">
					<span id="hotWaterResetLookup-label" class="property-label"><g:message code="systemHeating.hotWaterResetLookup.label" default="Hot Water Reset Lookup" /></span>
					
						<span class="property-value" aria-labelledby="hotWaterResetLookup-label"><g:link controller="hotWaterResetLookup" action="show" id="${systemHeatingInstance?.hotWaterResetLookup?.id}">${systemHeatingInstance?.hotWaterResetLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHeatingInstance?.systemHeatingLocationLookup}">
				<li class="fieldcontain">
					<span id="systemHeatingLocationLookup-label" class="property-label"><g:message code="systemHeating.systemHeatingLocationLookup.label" default="System Heating Location Lookup" /></span>
					
						<span class="property-value" aria-labelledby="systemHeatingLocationLookup-label"><g:link controller="systemHeatingLocationLookup" action="show" id="${systemHeatingInstance?.systemHeatingLocationLookup?.id}">${systemHeatingInstance?.systemHeatingLocationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemHeatingInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemHeatingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
