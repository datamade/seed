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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemHotwater.label', default: 'SystemHotwater')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemHotwater" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemHotwater" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemHotwater">
			
				<g:if test="${systemHotwaterInstance?.quantityHotWater}">
				<li class="fieldcontain">
					<span id="quantityHotWater-label" class="property-label"><g:message code="systemHotwater.quantityHotWater.label" default="Quantity Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="quantityHotWater-label"><g:fieldValue bean="${systemHotwaterInstance}" field="quantityHotWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.sizeHotWater}">
				<li class="fieldcontain">
					<span id="sizeHotWater-label" class="property-label"><g:message code="systemHotwater.sizeHotWater.label" default="Size Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="sizeHotWater-label"><g:fieldValue bean="${systemHotwaterInstance}" field="sizeHotWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.capacityHotWater}">
				<li class="fieldcontain">
					<span id="capacityHotWater-label" class="property-label"><g:message code="systemHotwater.capacityHotWater.label" default="Capacity Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="capacityHotWater-label"><g:fieldValue bean="${systemHotwaterInstance}" field="capacityHotWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.yearOfManufactureHotWater}">
				<li class="fieldcontain">
					<span id="yearOfManufactureHotWater-label" class="property-label"><g:message code="systemHotwater.yearOfManufactureHotWater.label" default="Year Of Manufacture Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureHotWater-label"><g:fieldValue bean="${systemHotwaterInstance}" field="yearOfManufactureHotWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.efficiencyHotWater}">
				<li class="fieldcontain">
					<span id="efficiencyHotWater-label" class="property-label"><g:message code="systemHotwater.efficiencyHotWater.label" default="Efficiency Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyHotWater-label"><g:fieldValue bean="${systemHotwaterInstance}" field="efficiencyHotWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.energyStarHotWater}">
				<li class="fieldcontain">
					<span id="energyStarHotWater-label" class="property-label"><g:message code="systemHotwater.energyStarHotWater.label" default="Energy Star Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="energyStarHotWater-label"><g:formatBoolean boolean="${systemHotwaterInstance?.energyStarHotWater}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.storageTankInsulationRValue}">
				<li class="fieldcontain">
					<span id="storageTankInsulationRValue-label" class="property-label"><g:message code="systemHotwater.storageTankInsulationRValue.label" default="Storage Tank Insulation RV alue" /></span>
					
						<span class="property-value" aria-labelledby="storageTankInsulationRValue-label"><g:fieldValue bean="${systemHotwaterInstance}" field="storageTankInsulationRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.storageTankInsulationThickness}">
				<li class="fieldcontain">
					<span id="storageTankInsulationThickness-label" class="property-label"><g:message code="systemHotwater.storageTankInsulationThickness.label" default="Storage Tank Insulation Thickness" /></span>
					
						<span class="property-value" aria-labelledby="storageTankInsulationThickness-label"><g:fieldValue bean="${systemHotwaterInstance}" field="storageTankInsulationThickness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.percTotInstalledCapHotWater}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapHotWater-label" class="property-label"><g:message code="systemHotwater.percTotInstalledCapHotWater.label" default="Perc Tot Installed Cap Hot Water" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapHotWater-label"><g:fieldValue bean="${systemHotwaterInstance}" field="percTotInstalledCapHotWater"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.setpointTemp}">
				<li class="fieldcontain">
					<span id="setpointTemp-label" class="property-label"><g:message code="systemHotwater.setpointTemp.label" default="Setpoint Temp" /></span>
					
						<span class="property-value" aria-labelledby="setpointTemp-label"><g:fieldValue bean="${systemHotwaterInstance}" field="setpointTemp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemHotwater.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemHotwaterInstance?.controlTypeSystemLookup?.id}">${systemHotwaterInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.efficiencyUnitSystemLookup}">
				<li class="fieldcontain">
					<span id="efficiencyUnitSystemLookup-label" class="property-label"><g:message code="systemHotwater.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyUnitSystemLookup-label"><g:link controller="efficiencyUnitSystemLookup" action="show" id="${systemHotwaterInstance?.efficiencyUnitSystemLookup?.id}">${systemHotwaterInstance?.efficiencyUnitSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemHotwater.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemHotwaterInstance?.fuelTypeLookup?.id}">${systemHotwaterInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.resTempLookup}">
				<li class="fieldcontain">
					<span id="resTempLookup-label" class="property-label"><g:message code="systemHotwater.resTempLookup.label" default="Res Temp Lookup" /></span>
					
						<span class="property-value" aria-labelledby="resTempLookup-label"><g:link controller="resTempLookup" action="show" id="${systemHotwaterInstance?.resTempLookup?.id}">${systemHotwaterInstance?.resTempLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.serviceHotwaterLookup}">
				<li class="fieldcontain">
					<span id="serviceHotwaterLookup-label" class="property-label"><g:message code="systemHotwater.serviceHotwaterLookup.label" default="Service Hotwater Lookup" /></span>
					
						<span class="property-value" aria-labelledby="serviceHotwaterLookup-label"><g:link controller="serviceHotwaterLookup" action="show" id="${systemHotwaterInstance?.serviceHotwaterLookup?.id}">${systemHotwaterInstance?.serviceHotwaterLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemHotwater.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemHotwaterInstance?.system?.id}">${systemHotwaterInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHotwaterInstance?.systemHotwaterLocationLookup}">
				<li class="fieldcontain">
					<span id="systemHotwaterLocationLookup-label" class="property-label"><g:message code="systemHotwater.systemHotwaterLocationLookup.label" default="System Hotwater Location Lookup" /></span>
					
						<span class="property-value" aria-labelledby="systemHotwaterLocationLookup-label"><g:link controller="systemHotwaterLocationLookup" action="show" id="${systemHotwaterInstance?.systemHotwaterLocationLookup?.id}">${systemHotwaterInstance?.systemHotwaterLocationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemHotwaterInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemHotwaterInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
