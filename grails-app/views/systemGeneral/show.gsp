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

<%@ page import="gov.doe.seed.SystemGeneral" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemGeneral.label', default: 'SystemGeneral')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemGeneral" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemGeneral" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemGeneral">
			
				<g:if test="${systemGeneralInstance?.programmableThermostatsUsed}">
				<li class="fieldcontain">
					<span id="programmableThermostatsUsed-label" class="property-label"><g:message code="systemGeneral.programmableThermostatsUsed.label" default="Programmable Thermostats Used" /></span>
					
						<span class="property-value" aria-labelledby="programmableThermostatsUsed-label"><g:formatBoolean boolean="${systemGeneralInstance?.programmableThermostatsUsed}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.standardThermostats}">
				<li class="fieldcontain">
					<span id="standardThermostats-label" class="property-label"><g:message code="systemGeneral.standardThermostats.label" default="Standard Thermostats" /></span>
					
						<span class="property-value" aria-labelledby="standardThermostats-label"><g:formatBoolean boolean="${systemGeneralInstance?.standardThermostats}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.occupiedDaySetting}">
				<li class="fieldcontain">
					<span id="occupiedDaySetting-label" class="property-label"><g:message code="systemGeneral.occupiedDaySetting.label" default="Occupied Day Setting" /></span>
					
						<span class="property-value" aria-labelledby="occupiedDaySetting-label"><g:fieldValue bean="${systemGeneralInstance}" field="occupiedDaySetting"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.unoccupiedDaySetting}">
				<li class="fieldcontain">
					<span id="unoccupiedDaySetting-label" class="property-label"><g:message code="systemGeneral.unoccupiedDaySetting.label" default="Unoccupied Day Setting" /></span>
					
						<span class="property-value" aria-labelledby="unoccupiedDaySetting-label"><g:fieldValue bean="${systemGeneralInstance}" field="unoccupiedDaySetting"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.sleepingHoursSetting}">
				<li class="fieldcontain">
					<span id="sleepingHoursSetting-label" class="property-label"><g:message code="systemGeneral.sleepingHoursSetting.label" default="Sleeping Hours Setting" /></span>
					
						<span class="property-value" aria-labelledby="sleepingHoursSetting-label"><g:fieldValue bean="${systemGeneralInstance}" field="sleepingHoursSetting"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.taskLigtingInUse}">
				<li class="fieldcontain">
					<span id="taskLigtingInUse-label" class="property-label"><g:message code="systemGeneral.taskLigtingInUse.label" default="Task Ligting In Use" /></span>
					
						<span class="property-value" aria-labelledby="taskLigtingInUse-label"><g:fieldValue bean="${systemGeneralInstance}" field="taskLigtingInUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percContEmcs}">
				<li class="fieldcontain">
					<span id="percContEmcs-label" class="property-label"><g:message code="systemGeneral.percContEmcs.label" default="Perc Cont Emcs" /></span>
					
						<span class="property-value" aria-labelledby="percContEmcs-label"><g:fieldValue bean="${systemGeneralInstance}" field="percContEmcs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percTempSensors}">
				<li class="fieldcontain">
					<span id="percTempSensors-label" class="property-label"><g:message code="systemGeneral.percTempSensors.label" default="Perc Temp Sensors" /></span>
					
						<span class="property-value" aria-labelledby="percTempSensors-label"><g:fieldValue bean="${systemGeneralInstance}" field="percTempSensors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percCtrlVentilation}">
				<li class="fieldcontain">
					<span id="percCtrlVentilation-label" class="property-label"><g:message code="systemGeneral.percCtrlVentilation.label" default="Perc Ctrl Ventilation" /></span>
					
						<span class="property-value" aria-labelledby="percCtrlVentilation-label"><g:fieldValue bean="${systemGeneralInstance}" field="percCtrlVentilation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.lightingRedOffHrs}">
				<li class="fieldcontain">
					<span id="lightingRedOffHrs-label" class="property-label"><g:message code="systemGeneral.lightingRedOffHrs.label" default="Lighting Red Off Hrs" /></span>
					
						<span class="property-value" aria-labelledby="lightingRedOffHrs-label"><g:formatBoolean boolean="${systemGeneralInstance?.lightingRedOffHrs}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percOccuSensors}">
				<li class="fieldcontain">
					<span id="percOccuSensors-label" class="property-label"><g:message code="systemGeneral.percOccuSensors.label" default="Perc Occu Sensors" /></span>
					
						<span class="property-value" aria-labelledby="percOccuSensors-label"><g:fieldValue bean="${systemGeneralInstance}" field="percOccuSensors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.perceVacantSensors}">
				<li class="fieldcontain">
					<span id="perceVacantSensors-label" class="property-label"><g:message code="systemGeneral.perceVacantSensors.label" default="Perce Vacant Sensors" /></span>
					
						<span class="property-value" aria-labelledby="perceVacantSensors-label"><g:fieldValue bean="${systemGeneralInstance}" field="perceVacantSensors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percPhotoSensors}">
				<li class="fieldcontain">
					<span id="percPhotoSensors-label" class="property-label"><g:message code="systemGeneral.percPhotoSensors.label" default="Perc Photo Sensors" /></span>
					
						<span class="property-value" aria-labelledby="percPhotoSensors-label"><g:fieldValue bean="${systemGeneralInstance}" field="percPhotoSensors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percentTimers}">
				<li class="fieldcontain">
					<span id="percentTimers-label" class="property-label"><g:message code="systemGeneral.percentTimers.label" default="Percent Timers" /></span>
					
						<span class="property-value" aria-labelledby="percentTimers-label"><g:fieldValue bean="${systemGeneralInstance}" field="percentTimers"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.percentAdvCtrls}">
				<li class="fieldcontain">
					<span id="percentAdvCtrls-label" class="property-label"><g:message code="systemGeneral.percentAdvCtrls.label" default="Percent Adv Ctrls" /></span>
					
						<span class="property-value" aria-labelledby="percentAdvCtrls-label"><g:fieldValue bean="${systemGeneralInstance}" field="percentAdvCtrls"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.acReplaced}">
				<li class="fieldcontain">
					<span id="acReplaced-label" class="property-label"><g:message code="systemGeneral.acReplaced.label" default="Ac Replaced" /></span>
					
						<span class="property-value" aria-labelledby="acReplaced-label"><g:formatBoolean boolean="${systemGeneralInstance?.acReplaced}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.numCoilsReplaced}">
				<li class="fieldcontain">
					<span id="numCoilsReplaced-label" class="property-label"><g:message code="systemGeneral.numCoilsReplaced.label" default="Num Coils Replaced" /></span>
					
						<span class="property-value" aria-labelledby="numCoilsReplaced-label"><g:fieldValue bean="${systemGeneralInstance}" field="numCoilsReplaced"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.numHandlersReplaced}">
				<li class="fieldcontain">
					<span id="numHandlersReplaced-label" class="property-label"><g:message code="systemGeneral.numHandlersReplaced.label" default="Num Handlers Replaced" /></span>
					
						<span class="property-value" aria-labelledby="numHandlersReplaced-label"><g:fieldValue bean="${systemGeneralInstance}" field="numHandlersReplaced"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.numGuestMeals}">
				<li class="fieldcontain">
					<span id="numGuestMeals-label" class="property-label"><g:message code="systemGeneral.numGuestMeals.label" default="Num Guest Meals" /></span>
					
						<span class="property-value" aria-labelledby="numGuestMeals-label"><g:fieldValue bean="${systemGeneralInstance}" field="numGuestMeals"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.laundryQuantity}">
				<li class="fieldcontain">
					<span id="laundryQuantity-label" class="property-label"><g:message code="systemGeneral.laundryQuantity.label" default="Laundry Quantity" /></span>
					
						<span class="property-value" aria-labelledby="laundryQuantity-label"><g:fieldValue bean="${systemGeneralInstance}" field="laundryQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.hvacCtrlStrategyLookup}">
				<li class="fieldcontain">
					<span id="hvacCtrlStrategyLookup-label" class="property-label"><g:message code="systemGeneral.hvacCtrlStrategyLookup.label" default="Hvac Ctrl Strategy Lookup" /></span>
					
						<span class="property-value" aria-labelledby="hvacCtrlStrategyLookup-label"><g:link controller="hvacCtrlStrategyLookup" action="show" id="${systemGeneralInstance?.hvacCtrlStrategyLookup?.id}">${systemGeneralInstance?.hvacCtrlStrategyLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.hvacEmcsLookup}">
				<li class="fieldcontain">
					<span id="hvacEmcsLookup-label" class="property-label"><g:message code="systemGeneral.hvacEmcsLookup.label" default="Hvac Emcs Lookup" /></span>
					
						<span class="property-value" aria-labelledby="hvacEmcsLookup-label"><g:link controller="hvacEmcsLookup" action="show" id="${systemGeneralInstance?.hvacEmcsLookup?.id}">${systemGeneralInstance?.hvacEmcsLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.hvacIndvControlLookup}">
				<li class="fieldcontain">
					<span id="hvacIndvControlLookup-label" class="property-label"><g:message code="systemGeneral.hvacIndvControlLookup.label" default="Hvac Indv Control Lookup" /></span>
					
						<span class="property-value" aria-labelledby="hvacIndvControlLookup-label"><g:link controller="hvacIndvControlLookup" action="show" id="${systemGeneralInstance?.hvacIndvControlLookup?.id}">${systemGeneralInstance?.hvacIndvControlLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.regHvacMainLookup}">
				<li class="fieldcontain">
					<span id="regHvacMainLookup-label" class="property-label"><g:message code="systemGeneral.regHvacMainLookup.label" default="Reg Hvac Main Lookup" /></span>
					
						<span class="property-value" aria-labelledby="regHvacMainLookup-label"><g:link controller="regHvacMainLookup" action="show" id="${systemGeneralInstance?.regHvacMainLookup?.id}">${systemGeneralInstance?.regHvacMainLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemGeneral.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemGeneralInstance?.system?.id}">${systemGeneralInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.thermostatProgTimeLookupByAcAdjustedIdFk}">
				<li class="fieldcontain">
					<span id="thermostatProgTimeLookupByAcAdjustedIdFk-label" class="property-label"><g:message code="systemGeneral.thermostatProgTimeLookupByAcAdjustedIdFk.label" default="Thermostat Prog Time Lookup By Ac Adjusted Id Fk" /></span>
					
						<span class="property-value" aria-labelledby="thermostatProgTimeLookupByAcAdjustedIdFk-label"><g:link controller="thermostatProgTimeLookup" action="show" id="${systemGeneralInstance?.thermostatProgTimeLookupByAcAdjustedIdFk?.id}">${systemGeneralInstance?.thermostatProgTimeLookupByAcAdjustedIdFk?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemGeneralInstance?.thermostatProgTimeLookupByHeatLoweredIdFk}">
				<li class="fieldcontain">
					<span id="thermostatProgTimeLookupByHeatLoweredIdFk-label" class="property-label"><g:message code="systemGeneral.thermostatProgTimeLookupByHeatLoweredIdFk.label" default="Thermostat Prog Time Lookup By Heat Lowered Id Fk" /></span>
					
						<span class="property-value" aria-labelledby="thermostatProgTimeLookupByHeatLoweredIdFk-label"><g:link controller="thermostatProgTimeLookup" action="show" id="${systemGeneralInstance?.thermostatProgTimeLookupByHeatLoweredIdFk?.id}">${systemGeneralInstance?.thermostatProgTimeLookupByHeatLoweredIdFk?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemGeneralInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemGeneralInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
