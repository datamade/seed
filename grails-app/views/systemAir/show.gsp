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

<%@ page import="gov.doe.seed.SystemAir" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemAir.label', default: 'SystemAir')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemAir" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemAir" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemAir">
			
				<g:if test="${systemAirInstance?.airDistributionSize}">
				<li class="fieldcontain">
					<span id="airDistributionSize-label" class="property-label"><g:message code="systemAir.airDistributionSize.label" default="Air Distribution Size" /></span>
					
						<span class="property-value" aria-labelledby="airDistributionSize-label"><g:fieldValue bean="${systemAirInstance}" field="airDistributionSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.airDistributionPower}">
				<li class="fieldcontain">
					<span id="airDistributionPower-label" class="property-label"><g:message code="systemAir.airDistributionPower.label" default="Air Distribution Power" /></span>
					
						<span class="property-value" aria-labelledby="airDistributionPower-label"><g:fieldValue bean="${systemAirInstance}" field="airDistributionPower"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.airDistributionPrimary}">
				<li class="fieldcontain">
					<span id="airDistributionPrimary-label" class="property-label"><g:message code="systemAir.airDistributionPrimary.label" default="Air Distribution Primary" /></span>
					
						<span class="property-value" aria-labelledby="airDistributionPrimary-label"><g:formatBoolean boolean="${systemAirInstance?.airDistributionPrimary}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.percTotInstalledCapacityAir}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapacityAir-label" class="property-label"><g:message code="systemAir.percTotInstalledCapacityAir.label" default="Perc Tot Installed Capacity Air" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapacityAir-label"><g:fieldValue bean="${systemAirInstance}" field="percTotInstalledCapacityAir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.percOfFloorAreaServedAir}">
				<li class="fieldcontain">
					<span id="percOfFloorAreaServedAir-label" class="property-label"><g:message code="systemAir.percOfFloorAreaServedAir.label" default="Perc Of Floor Area Served Air" /></span>
					
						<span class="property-value" aria-labelledby="percOfFloorAreaServedAir-label"><g:fieldValue bean="${systemAirInstance}" field="percOfFloorAreaServedAir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.staticPressureResetControl}">
				<li class="fieldcontain">
					<span id="staticPressureResetControl-label" class="property-label"><g:message code="systemAir.staticPressureResetControl.label" default="Static Pressure Reset Control" /></span>
					
						<span class="property-value" aria-labelledby="staticPressureResetControl-label"><g:formatBoolean boolean="${systemAirInstance?.staticPressureResetControl}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.supplyAirTempResetControl}">
				<li class="fieldcontain">
					<span id="supplyAirTempResetControl-label" class="property-label"><g:message code="systemAir.supplyAirTempResetControl.label" default="Supply Air Temp Reset Control" /></span>
					
						<span class="property-value" aria-labelledby="supplyAirTempResetControl-label"><g:formatBoolean boolean="${systemAirInstance?.supplyAirTempResetControl}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.efficiencyAirDistribution}">
				<li class="fieldcontain">
					<span id="efficiencyAirDistribution-label" class="property-label"><g:message code="systemAir.efficiencyAirDistribution.label" default="Efficiency Air Distribution" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyAirDistribution-label"><g:fieldValue bean="${systemAirInstance}" field="efficiencyAirDistribution"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.fanMotorEfficiency}">
				<li class="fieldcontain">
					<span id="fanMotorEfficiency-label" class="property-label"><g:message code="systemAir.fanMotorEfficiency.label" default="Fan Motor Efficiency" /></span>
					
						<span class="property-value" aria-labelledby="fanMotorEfficiency-label"><g:fieldValue bean="${systemAirInstance}" field="fanMotorEfficiency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.minimumOutsideAirPerc}">
				<li class="fieldcontain">
					<span id="minimumOutsideAirPerc-label" class="property-label"><g:message code="systemAir.minimumOutsideAirPerc.label" default="Minimum Outside Air Perc" /></span>
					
						<span class="property-value" aria-labelledby="minimumOutsideAirPerc-label"><g:fieldValue bean="${systemAirInstance}" field="minimumOutsideAirPerc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.heatRecoveryEfficiency}">
				<li class="fieldcontain">
					<span id="heatRecoveryEfficiency-label" class="property-label"><g:message code="systemAir.heatRecoveryEfficiency.label" default="Heat Recovery Efficiency" /></span>
					
						<span class="property-value" aria-labelledby="heatRecoveryEfficiency-label"><g:fieldValue bean="${systemAirInstance}" field="heatRecoveryEfficiency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductInsulationRValue}">
				<li class="fieldcontain">
					<span id="ductInsulationRValue-label" class="property-label"><g:message code="systemAir.ductInsulationRValue.label" default="Duct Insulation RV alue" /></span>
					
						<span class="property-value" aria-labelledby="ductInsulationRValue-label"><g:fieldValue bean="${systemAirInstance}" field="ductInsulationRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.quantityAirDistribution}">
				<li class="fieldcontain">
					<span id="quantityAirDistribution-label" class="property-label"><g:message code="systemAir.quantityAirDistribution.label" default="Quantity Air Distribution" /></span>
					
						<span class="property-value" aria-labelledby="quantityAirDistribution-label"><g:fieldValue bean="${systemAirInstance}" field="quantityAirDistribution"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.staticPressure}">
				<li class="fieldcontain">
					<span id="staticPressure-label" class="property-label"><g:message code="systemAir.staticPressure.label" default="Static Pressure" /></span>
					
						<span class="property-value" aria-labelledby="staticPressure-label"><g:fieldValue bean="${systemAirInstance}" field="staticPressure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.zoneCount}">
				<li class="fieldcontain">
					<span id="zoneCount-label" class="property-label"><g:message code="systemAir.zoneCount.label" default="Zone Count" /></span>
					
						<span class="property-value" aria-labelledby="zoneCount-label"><g:fieldValue bean="${systemAirInstance}" field="zoneCount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductPressureLeakage}">
				<li class="fieldcontain">
					<span id="ductPressureLeakage-label" class="property-label"><g:message code="systemAir.ductPressureLeakage.label" default="Duct Pressure Leakage" /></span>
					
						<span class="property-value" aria-labelledby="ductPressureLeakage-label"><g:fieldValue bean="${systemAirInstance}" field="ductPressureLeakage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductPressureLeakagePerc}">
				<li class="fieldcontain">
					<span id="ductPressureLeakagePerc-label" class="property-label"><g:message code="systemAir.ductPressureLeakagePerc.label" default="Duct Pressure Leakage Perc" /></span>
					
						<span class="property-value" aria-labelledby="ductPressureLeakagePerc-label"><g:fieldValue bean="${systemAirInstance}" field="ductPressureLeakagePerc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.airYearOfManufacture}">
				<li class="fieldcontain">
					<span id="airYearOfManufacture-label" class="property-label"><g:message code="systemAir.airYearOfManufacture.label" default="Air Year Of Manufacture" /></span>
					
						<span class="property-value" aria-labelledby="airYearOfManufacture-label"><g:fieldValue bean="${systemAirInstance}" field="airYearOfManufacture"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.bucketTypeLookup}">
				<li class="fieldcontain">
					<span id="bucketTypeLookup-label" class="property-label"><g:message code="systemAir.bucketTypeLookup.label" default="Bucket Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="bucketTypeLookup-label"><g:link controller="bucketTypeLookup" action="show" id="${systemAirInstance?.bucketTypeLookup?.id}">${systemAirInstance?.bucketTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.configurationLookup}">
				<li class="fieldcontain">
					<span id="configurationLookup-label" class="property-label"><g:message code="systemAir.configurationLookup.label" default="Configuration Lookup" /></span>
					
						<span class="property-value" aria-labelledby="configurationLookup-label"><g:link controller="configurationLookup" action="show" id="${systemAirInstance?.configurationLookup?.id}">${systemAirInstance?.configurationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.coolingSourceLookup}">
				<li class="fieldcontain">
					<span id="coolingSourceLookup-label" class="property-label"><g:message code="systemAir.coolingSourceLookup.label" default="Cooling Source Lookup" /></span>
					
						<span class="property-value" aria-labelledby="coolingSourceLookup-label"><g:link controller="coolingSourceLookup" action="show" id="${systemAirInstance?.coolingSourceLookup?.id}">${systemAirInstance?.coolingSourceLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.dehumidificationLookup}">
				<li class="fieldcontain">
					<span id="dehumidificationLookup-label" class="property-label"><g:message code="systemAir.dehumidificationLookup.label" default="Dehumidification Lookup" /></span>
					
						<span class="property-value" aria-labelledby="dehumidificationLookup-label"><g:link controller="dehumidificationLookup" action="show" id="${systemAirInstance?.dehumidificationLookup?.id}">${systemAirInstance?.dehumidificationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductConfigurationLookup}">
				<li class="fieldcontain">
					<span id="ductConfigurationLookup-label" class="property-label"><g:message code="systemAir.ductConfigurationLookup.label" default="Duct Configuration Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ductConfigurationLookup-label"><g:link controller="ductConfigurationLookup" action="show" id="${systemAirInstance?.ductConfigurationLookup?.id}">${systemAirInstance?.ductConfigurationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductInsulationLookup}">
				<li class="fieldcontain">
					<span id="ductInsulationLookup-label" class="property-label"><g:message code="systemAir.ductInsulationLookup.label" default="Duct Insulation Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ductInsulationLookup-label"><g:link controller="ductInsulationLookup" action="show" id="${systemAirInstance?.ductInsulationLookup?.id}">${systemAirInstance?.ductInsulationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductLocationLookup}">
				<li class="fieldcontain">
					<span id="ductLocationLookup-label" class="property-label"><g:message code="systemAir.ductLocationLookup.label" default="Duct Location Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ductLocationLookup-label"><g:link controller="ductLocationLookup" action="show" id="${systemAirInstance?.ductLocationLookup?.id}">${systemAirInstance?.ductLocationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductSealingLookup}">
				<li class="fieldcontain">
					<span id="ductSealingLookup-label" class="property-label"><g:message code="systemAir.ductSealingLookup.label" default="Duct Sealing Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ductSealingLookup-label"><g:link controller="ductSealingLookup" action="show" id="${systemAirInstance?.ductSealingLookup?.id}">${systemAirInstance?.ductSealingLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.ductTypeLookup}">
				<li class="fieldcontain">
					<span id="ductTypeLookup-label" class="property-label"><g:message code="systemAir.ductTypeLookup.label" default="Duct Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ductTypeLookup-label"><g:link controller="ductTypeLookup" action="show" id="${systemAirInstance?.ductTypeLookup?.id}">${systemAirInstance?.ductTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.economizerLookup}">
				<li class="fieldcontain">
					<span id="economizerLookup-label" class="property-label"><g:message code="systemAir.economizerLookup.label" default="Economizer Lookup" /></span>
					
						<span class="property-value" aria-labelledby="economizerLookup-label"><g:link controller="economizerLookup" action="show" id="${systemAirInstance?.economizerLookup?.id}">${systemAirInstance?.economizerLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.efficiencyUnitSystemLookup}">
				<li class="fieldcontain">
					<span id="efficiencyUnitSystemLookup-label" class="property-label"><g:message code="systemAir.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="efficiencyUnitSystemLookup-label"><g:link controller="efficiencyUnitSystemLookup" action="show" id="${systemAirInstance?.efficiencyUnitSystemLookup?.id}">${systemAirInstance?.efficiencyUnitSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.fanControlTypeLookup}">
				<li class="fieldcontain">
					<span id="fanControlTypeLookup-label" class="property-label"><g:message code="systemAir.fanControlTypeLookup.label" default="Fan Control Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fanControlTypeLookup-label"><g:link controller="fanControlTypeLookup" action="show" id="${systemAirInstance?.fanControlTypeLookup?.id}">${systemAirInstance?.fanControlTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.fanPlacementLookup}">
				<li class="fieldcontain">
					<span id="fanPlacementLookup-label" class="property-label"><g:message code="systemAir.fanPlacementLookup.label" default="Fan Placement Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fanPlacementLookup-label"><g:link controller="fanPlacementLookup" action="show" id="${systemAirInstance?.fanPlacementLookup?.id}">${systemAirInstance?.fanPlacementLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.flowConfigurationLookup}">
				<li class="fieldcontain">
					<span id="flowConfigurationLookup-label" class="property-label"><g:message code="systemAir.flowConfigurationLookup.label" default="Flow Configuration Lookup" /></span>
					
						<span class="property-value" aria-labelledby="flowConfigurationLookup-label"><g:link controller="flowConfigurationLookup" action="show" id="${systemAirInstance?.flowConfigurationLookup?.id}">${systemAirInstance?.flowConfigurationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.flowControlLookup}">
				<li class="fieldcontain">
					<span id="flowControlLookup-label" class="property-label"><g:message code="systemAir.flowControlLookup.label" default="Flow Control Lookup" /></span>
					
						<span class="property-value" aria-labelledby="flowControlLookup-label"><g:link controller="flowControlLookup" action="show" id="${systemAirInstance?.flowControlLookup?.id}">${systemAirInstance?.flowControlLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.heatRecoveryLookup}">
				<li class="fieldcontain">
					<span id="heatRecoveryLookup-label" class="property-label"><g:message code="systemAir.heatRecoveryLookup.label" default="Heat Recovery Lookup" /></span>
					
						<span class="property-value" aria-labelledby="heatRecoveryLookup-label"><g:link controller="heatRecoveryLookup" action="show" id="${systemAirInstance?.heatRecoveryLookup?.id}">${systemAirInstance?.heatRecoveryLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.heatingSourceLookup}">
				<li class="fieldcontain">
					<span id="heatingSourceLookup-label" class="property-label"><g:message code="systemAir.heatingSourceLookup.label" default="Heating Source Lookup" /></span>
					
						<span class="property-value" aria-labelledby="heatingSourceLookup-label"><g:link controller="heatingSourceLookup" action="show" id="${systemAirInstance?.heatingSourceLookup?.id}">${systemAirInstance?.heatingSourceLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.humidificationLookup}">
				<li class="fieldcontain">
					<span id="humidificationLookup-label" class="property-label"><g:message code="systemAir.humidificationLookup.label" default="Humidification Lookup" /></span>
					
						<span class="property-value" aria-labelledby="humidificationLookup-label"><g:link controller="humidificationLookup" action="show" id="${systemAirInstance?.humidificationLookup?.id}">${systemAirInstance?.humidificationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.preheatSourceLookup}">
				<li class="fieldcontain">
					<span id="preheatSourceLookup-label" class="property-label"><g:message code="systemAir.preheatSourceLookup.label" default="Preheat Source Lookup" /></span>
					
						<span class="property-value" aria-labelledby="preheatSourceLookup-label"><g:link controller="preheatSourceLookup" action="show" id="${systemAirInstance?.preheatSourceLookup?.id}">${systemAirInstance?.preheatSourceLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemAirInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemAir.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemAirInstance?.system?.id}">${systemAirInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemAirInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemAirInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
