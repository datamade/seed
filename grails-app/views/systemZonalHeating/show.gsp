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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemZonalHeating.label', default: 'SystemZonalHeating')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemZonalHeating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemZonalHeating" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemZonalHeating">
			
				<g:if test="${systemZonalHeatingInstance?.quantityZheating}">
				<li class="fieldcontain">
					<span id="quantityZheating-label" class="property-label"><g:message code="systemZonalHeating.quantityZheating.label" default="Quantity Zheating" /></span>
					
						<span class="property-value" aria-labelledby="quantityZheating-label"><g:fieldValue bean="${systemZonalHeatingInstance}" field="quantityZheating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.yearOfManufactureZheating}">
				<li class="fieldcontain">
					<span id="yearOfManufactureZheating-label" class="property-label"><g:message code="systemZonalHeating.yearOfManufactureZheating.label" default="Year Of Manufacture Zheating" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureZheating-label"><g:fieldValue bean="${systemZonalHeatingInstance}" field="yearOfManufactureZheating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.percTotInstalledCapZheating}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapZheating-label" class="property-label"><g:message code="systemZonalHeating.percTotInstalledCapZheating.label" default="Perc Tot Installed Cap Zheating" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapZheating-label"><g:fieldValue bean="${systemZonalHeatingInstance}" field="percTotInstalledCapZheating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.percFloorAreaServedZheating}">
				<li class="fieldcontain">
					<span id="percFloorAreaServedZheating-label" class="property-label"><g:message code="systemZonalHeating.percFloorAreaServedZheating.label" default="Perc Floor Area Served Zheating" /></span>
					
						<span class="property-value" aria-labelledby="percFloorAreaServedZheating-label"><g:fieldValue bean="${systemZonalHeatingInstance}" field="percFloorAreaServedZheating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.waterEconomizer}">
				<li class="fieldcontain">
					<span id="waterEconomizer-label" class="property-label"><g:message code="systemZonalHeating.waterEconomizer.label" default="Water Economizer" /></span>
					
						<span class="property-value" aria-labelledby="waterEconomizer-label"><g:formatBoolean boolean="${systemZonalHeatingInstance?.waterEconomizer}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.zoneCountCooling}">
				<li class="fieldcontain">
					<span id="zoneCountCooling-label" class="property-label"><g:message code="systemZonalHeating.zoneCountCooling.label" default="Zone Count Cooling" /></span>
					
						<span class="property-value" aria-labelledby="zoneCountCooling-label"><g:fieldValue bean="${systemZonalHeatingInstance}" field="zoneCountCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.coolingEquipRedundancy}">
				<li class="fieldcontain">
					<span id="coolingEquipRedundancy-label" class="property-label"><g:message code="systemZonalHeating.coolingEquipRedundancy.label" default="Cooling Equip Redundancy" /></span>
					
						<span class="property-value" aria-labelledby="coolingEquipRedundancy-label"><g:formatBoolean boolean="${systemZonalHeatingInstance?.coolingEquipRedundancy}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemZonalHeating.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemZonalHeatingInstance?.controlTypeSystemLookup?.id}">${systemZonalHeatingInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemZonalHeating.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemZonalHeatingInstance?.fuelTypeLookup?.id}">${systemZonalHeatingInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemZonalHeating.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemZonalHeatingInstance?.system?.id}">${systemZonalHeatingInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalHeatingInstance?.zonalHeatingTypeLookup}">
				<li class="fieldcontain">
					<span id="zonalHeatingTypeLookup-label" class="property-label"><g:message code="systemZonalHeating.zonalHeatingTypeLookup.label" default="Zonal Heating Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="zonalHeatingTypeLookup-label"><g:link controller="zonalHeatingTypeLookup" action="show" id="${systemZonalHeatingInstance?.zonalHeatingTypeLookup?.id}">${systemZonalHeatingInstance?.zonalHeatingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemZonalHeatingInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemZonalHeatingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
