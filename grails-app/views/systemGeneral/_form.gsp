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



<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'programmableThermostatsUsed', 'error')} ">
	<label for="programmableThermostatsUsed">
		<g:message code="systemGeneral.programmableThermostatsUsed.label" default="Programmable Thermostats Used" />
		
	</label>
	<g:checkBox name="programmableThermostatsUsed" value="${systemGeneralInstance?.programmableThermostatsUsed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'standardThermostats', 'error')} ">
	<label for="standardThermostats">
		<g:message code="systemGeneral.standardThermostats.label" default="Standard Thermostats" />
		
	</label>
	<g:checkBox name="standardThermostats" value="${systemGeneralInstance?.standardThermostats}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'occupiedDaySetting', 'error')} ">
	<label for="occupiedDaySetting">
		<g:message code="systemGeneral.occupiedDaySetting.label" default="Occupied Day Setting" />
		
	</label>
	<g:field name="occupiedDaySetting" value="${fieldValue(bean: systemGeneralInstance, field: 'occupiedDaySetting')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'unoccupiedDaySetting', 'error')} ">
	<label for="unoccupiedDaySetting">
		<g:message code="systemGeneral.unoccupiedDaySetting.label" default="Unoccupied Day Setting" />
		
	</label>
	<g:field name="unoccupiedDaySetting" value="${fieldValue(bean: systemGeneralInstance, field: 'unoccupiedDaySetting')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'sleepingHoursSetting', 'error')} ">
	<label for="sleepingHoursSetting">
		<g:message code="systemGeneral.sleepingHoursSetting.label" default="Sleeping Hours Setting" />
		
	</label>
	<g:field name="sleepingHoursSetting" value="${fieldValue(bean: systemGeneralInstance, field: 'sleepingHoursSetting')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'taskLigtingInUse', 'error')} ">
	<label for="taskLigtingInUse">
		<g:message code="systemGeneral.taskLigtingInUse.label" default="Task Ligting In Use" />
		
	</label>
	<g:field name="taskLigtingInUse" type="number" value="${systemGeneralInstance.taskLigtingInUse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percContEmcs', 'error')} ">
	<label for="percContEmcs">
		<g:message code="systemGeneral.percContEmcs.label" default="Perc Cont Emcs" />
		
	</label>
	<g:field name="percContEmcs" value="${fieldValue(bean: systemGeneralInstance, field: 'percContEmcs')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percTempSensors', 'error')} ">
	<label for="percTempSensors">
		<g:message code="systemGeneral.percTempSensors.label" default="Perc Temp Sensors" />
		
	</label>
	<g:field name="percTempSensors" value="${fieldValue(bean: systemGeneralInstance, field: 'percTempSensors')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percCtrlVentilation', 'error')} ">
	<label for="percCtrlVentilation">
		<g:message code="systemGeneral.percCtrlVentilation.label" default="Perc Ctrl Ventilation" />
		
	</label>
	<g:field name="percCtrlVentilation" value="${fieldValue(bean: systemGeneralInstance, field: 'percCtrlVentilation')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'lightingRedOffHrs', 'error')} ">
	<label for="lightingRedOffHrs">
		<g:message code="systemGeneral.lightingRedOffHrs.label" default="Lighting Red Off Hrs" />
		
	</label>
	<g:checkBox name="lightingRedOffHrs" value="${systemGeneralInstance?.lightingRedOffHrs}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percOccuSensors', 'error')} ">
	<label for="percOccuSensors">
		<g:message code="systemGeneral.percOccuSensors.label" default="Perc Occu Sensors" />
		
	</label>
	<g:field name="percOccuSensors" value="${fieldValue(bean: systemGeneralInstance, field: 'percOccuSensors')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'perceVacantSensors', 'error')} ">
	<label for="perceVacantSensors">
		<g:message code="systemGeneral.perceVacantSensors.label" default="Perce Vacant Sensors" />
		
	</label>
	<g:field name="perceVacantSensors" value="${fieldValue(bean: systemGeneralInstance, field: 'perceVacantSensors')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percPhotoSensors', 'error')} ">
	<label for="percPhotoSensors">
		<g:message code="systemGeneral.percPhotoSensors.label" default="Perc Photo Sensors" />
		
	</label>
	<g:field name="percPhotoSensors" value="${fieldValue(bean: systemGeneralInstance, field: 'percPhotoSensors')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percentTimers', 'error')} ">
	<label for="percentTimers">
		<g:message code="systemGeneral.percentTimers.label" default="Percent Timers" />
		
	</label>
	<g:field name="percentTimers" value="${fieldValue(bean: systemGeneralInstance, field: 'percentTimers')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'percentAdvCtrls', 'error')} ">
	<label for="percentAdvCtrls">
		<g:message code="systemGeneral.percentAdvCtrls.label" default="Percent Adv Ctrls" />
		
	</label>
	<g:field name="percentAdvCtrls" value="${fieldValue(bean: systemGeneralInstance, field: 'percentAdvCtrls')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'acReplaced', 'error')} ">
	<label for="acReplaced">
		<g:message code="systemGeneral.acReplaced.label" default="Ac Replaced" />
		
	</label>
	<g:checkBox name="acReplaced" value="${systemGeneralInstance?.acReplaced}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'numCoilsReplaced', 'error')} ">
	<label for="numCoilsReplaced">
		<g:message code="systemGeneral.numCoilsReplaced.label" default="Num Coils Replaced" />
		
	</label>
	<g:field name="numCoilsReplaced" type="number" value="${systemGeneralInstance.numCoilsReplaced}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'numHandlersReplaced', 'error')} ">
	<label for="numHandlersReplaced">
		<g:message code="systemGeneral.numHandlersReplaced.label" default="Num Handlers Replaced" />
		
	</label>
	<g:field name="numHandlersReplaced" type="number" value="${systemGeneralInstance.numHandlersReplaced}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'numGuestMeals', 'error')} ">
	<label for="numGuestMeals">
		<g:message code="systemGeneral.numGuestMeals.label" default="Num Guest Meals" />
		
	</label>
	<g:field name="numGuestMeals" type="number" value="${systemGeneralInstance.numGuestMeals}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'laundryQuantity', 'error')} ">
	<label for="laundryQuantity">
		<g:message code="systemGeneral.laundryQuantity.label" default="Laundry Quantity" />
		
	</label>
	<g:field name="laundryQuantity" type="number" value="${systemGeneralInstance.laundryQuantity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'hvacCtrlStrategyLookup', 'error')} required">
	<label for="hvacCtrlStrategyLookup">
		<g:message code="systemGeneral.hvacCtrlStrategyLookup.label" default="Hvac Ctrl Strategy Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hvacCtrlStrategyLookup" name="hvacCtrlStrategyLookup.id" from="${gov.doe.seed.HvacCtrlStrategyLookup.list()}" optionKey="id" required="" value="${systemGeneralInstance?.hvacCtrlStrategyLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'hvacEmcsLookup', 'error')} required">
	<label for="hvacEmcsLookup">
		<g:message code="systemGeneral.hvacEmcsLookup.label" default="Hvac Emcs Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hvacEmcsLookup" name="hvacEmcsLookup.id" from="${gov.doe.seed.HvacEmcsLookup.list()}" optionKey="id" required="" value="${systemGeneralInstance?.hvacEmcsLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'hvacIndvControlLookup', 'error')} required">
	<label for="hvacIndvControlLookup">
		<g:message code="systemGeneral.hvacIndvControlLookup.label" default="Hvac Indv Control Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="hvacIndvControlLookup" name="hvacIndvControlLookup.id" from="${gov.doe.seed.HvacIndvControlLookup.list()}" optionKey="id" required="" value="${systemGeneralInstance?.hvacIndvControlLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'regHvacMainLookup', 'error')} required">
	<label for="regHvacMainLookup">
		<g:message code="systemGeneral.regHvacMainLookup.label" default="Reg Hvac Main Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regHvacMainLookup" name="regHvacMainLookup.id" from="${gov.doe.seed.RegHvacMainLookup.list()}" optionKey="id" required="" value="${systemGeneralInstance?.regHvacMainLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemGeneral.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemGeneralInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'thermostatProgTimeLookupByAcAdjustedIdFk', 'error')} required">
	<label for="thermostatProgTimeLookupByAcAdjustedIdFk">
		<g:message code="systemGeneral.thermostatProgTimeLookupByAcAdjustedIdFk.label" default="Thermostat Prog Time Lookup By Ac Adjusted Id Fk" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="thermostatProgTimeLookupByAcAdjustedIdFk" name="thermostatProgTimeLookupByAcAdjustedIdFk.id" from="${gov.doe.seed.ThermostatProgTimeLookup.list()}" optionKey="id" required="" value="${systemGeneralInstance?.thermostatProgTimeLookupByAcAdjustedIdFk?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemGeneralInstance, field: 'thermostatProgTimeLookupByHeatLoweredIdFk', 'error')} required">
	<label for="thermostatProgTimeLookupByHeatLoweredIdFk">
		<g:message code="systemGeneral.thermostatProgTimeLookupByHeatLoweredIdFk.label" default="Thermostat Prog Time Lookup By Heat Lowered Id Fk" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="thermostatProgTimeLookupByHeatLoweredIdFk" name="thermostatProgTimeLookupByHeatLoweredIdFk.id" from="${gov.doe.seed.ThermostatProgTimeLookup.list()}" optionKey="id" required="" value="${systemGeneralInstance?.thermostatProgTimeLookupByHeatLoweredIdFk?.id}" class="many-to-one"/>
</div>

