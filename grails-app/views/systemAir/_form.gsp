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



<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'airDistributionSize', 'error')} ">
	<label for="airDistributionSize">
		<g:message code="systemAir.airDistributionSize.label" default="Air Distribution Size" />
		
	</label>
	<g:field name="airDistributionSize" value="${fieldValue(bean: systemAirInstance, field: 'airDistributionSize')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'airDistributionPower', 'error')} ">
	<label for="airDistributionPower">
		<g:message code="systemAir.airDistributionPower.label" default="Air Distribution Power" />
		
	</label>
	<g:field name="airDistributionPower" value="${fieldValue(bean: systemAirInstance, field: 'airDistributionPower')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'airDistributionPrimary', 'error')} ">
	<label for="airDistributionPrimary">
		<g:message code="systemAir.airDistributionPrimary.label" default="Air Distribution Primary" />
		
	</label>
	<g:checkBox name="airDistributionPrimary" value="${systemAirInstance?.airDistributionPrimary}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'percTotInstalledCapacityAir', 'error')} ">
	<label for="percTotInstalledCapacityAir">
		<g:message code="systemAir.percTotInstalledCapacityAir.label" default="Perc Tot Installed Capacity Air" />
		
	</label>
	<g:field name="percTotInstalledCapacityAir" value="${fieldValue(bean: systemAirInstance, field: 'percTotInstalledCapacityAir')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'percOfFloorAreaServedAir', 'error')} ">
	<label for="percOfFloorAreaServedAir">
		<g:message code="systemAir.percOfFloorAreaServedAir.label" default="Perc Of Floor Area Served Air" />
		
	</label>
	<g:field name="percOfFloorAreaServedAir" value="${fieldValue(bean: systemAirInstance, field: 'percOfFloorAreaServedAir')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'staticPressureResetControl', 'error')} ">
	<label for="staticPressureResetControl">
		<g:message code="systemAir.staticPressureResetControl.label" default="Static Pressure Reset Control" />
		
	</label>
	<g:checkBox name="staticPressureResetControl" value="${systemAirInstance?.staticPressureResetControl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'supplyAirTempResetControl', 'error')} ">
	<label for="supplyAirTempResetControl">
		<g:message code="systemAir.supplyAirTempResetControl.label" default="Supply Air Temp Reset Control" />
		
	</label>
	<g:checkBox name="supplyAirTempResetControl" value="${systemAirInstance?.supplyAirTempResetControl}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'efficiencyAirDistribution', 'error')} ">
	<label for="efficiencyAirDistribution">
		<g:message code="systemAir.efficiencyAirDistribution.label" default="Efficiency Air Distribution" />
		
	</label>
	<g:field name="efficiencyAirDistribution" value="${fieldValue(bean: systemAirInstance, field: 'efficiencyAirDistribution')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'fanMotorEfficiency', 'error')} ">
	<label for="fanMotorEfficiency">
		<g:message code="systemAir.fanMotorEfficiency.label" default="Fan Motor Efficiency" />
		
	</label>
	<g:field name="fanMotorEfficiency" value="${fieldValue(bean: systemAirInstance, field: 'fanMotorEfficiency')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'minimumOutsideAirPerc', 'error')} ">
	<label for="minimumOutsideAirPerc">
		<g:message code="systemAir.minimumOutsideAirPerc.label" default="Minimum Outside Air Perc" />
		
	</label>
	<g:field name="minimumOutsideAirPerc" value="${fieldValue(bean: systemAirInstance, field: 'minimumOutsideAirPerc')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'heatRecoveryEfficiency', 'error')} ">
	<label for="heatRecoveryEfficiency">
		<g:message code="systemAir.heatRecoveryEfficiency.label" default="Heat Recovery Efficiency" />
		
	</label>
	<g:field name="heatRecoveryEfficiency" value="${fieldValue(bean: systemAirInstance, field: 'heatRecoveryEfficiency')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductInsulationRValue', 'error')} ">
	<label for="ductInsulationRValue">
		<g:message code="systemAir.ductInsulationRValue.label" default="Duct Insulation RV alue" />
		
	</label>
	<g:field name="ductInsulationRValue" type="number" value="${systemAirInstance.ductInsulationRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'quantityAirDistribution', 'error')} ">
	<label for="quantityAirDistribution">
		<g:message code="systemAir.quantityAirDistribution.label" default="Quantity Air Distribution" />
		
	</label>
	<g:field name="quantityAirDistribution" type="number" value="${systemAirInstance.quantityAirDistribution}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'staticPressure', 'error')} ">
	<label for="staticPressure">
		<g:message code="systemAir.staticPressure.label" default="Static Pressure" />
		
	</label>
	<g:field name="staticPressure" value="${fieldValue(bean: systemAirInstance, field: 'staticPressure')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'zoneCount', 'error')} ">
	<label for="zoneCount">
		<g:message code="systemAir.zoneCount.label" default="Zone Count" />
		
	</label>
	<g:field name="zoneCount" type="number" value="${systemAirInstance.zoneCount}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductPressureLeakage', 'error')} ">
	<label for="ductPressureLeakage">
		<g:message code="systemAir.ductPressureLeakage.label" default="Duct Pressure Leakage" />
		
	</label>
	<g:field name="ductPressureLeakage" value="${fieldValue(bean: systemAirInstance, field: 'ductPressureLeakage')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductPressureLeakagePerc', 'error')} ">
	<label for="ductPressureLeakagePerc">
		<g:message code="systemAir.ductPressureLeakagePerc.label" default="Duct Pressure Leakage Perc" />
		
	</label>
	<g:field name="ductPressureLeakagePerc" value="${fieldValue(bean: systemAirInstance, field: 'ductPressureLeakagePerc')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'airYearOfManufacture', 'error')} required">
	<label for="airYearOfManufacture">
		<g:message code="systemAir.airYearOfManufacture.label" default="Air Year Of Manufacture" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="airYearOfManufacture" type="number" value="${systemAirInstance.airYearOfManufacture}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'bucketTypeLookup', 'error')} required">
	<label for="bucketTypeLookup">
		<g:message code="systemAir.bucketTypeLookup.label" default="Bucket Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="bucketTypeLookup" name="bucketTypeLookup.id" from="${gov.doe.seed.BucketTypeLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.bucketTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'configurationLookup', 'error')} required">
	<label for="configurationLookup">
		<g:message code="systemAir.configurationLookup.label" default="Configuration Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="configurationLookup" name="configurationLookup.id" from="${gov.doe.seed.ConfigurationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.configurationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'coolingSourceLookup', 'error')} required">
	<label for="coolingSourceLookup">
		<g:message code="systemAir.coolingSourceLookup.label" default="Cooling Source Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coolingSourceLookup" name="coolingSourceLookup.id" from="${gov.doe.seed.CoolingSourceLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.coolingSourceLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'dehumidificationLookup', 'error')} required">
	<label for="dehumidificationLookup">
		<g:message code="systemAir.dehumidificationLookup.label" default="Dehumidification Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dehumidificationLookup" name="dehumidificationLookup.id" from="${gov.doe.seed.DehumidificationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.dehumidificationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductConfigurationLookup', 'error')} required">
	<label for="ductConfigurationLookup">
		<g:message code="systemAir.ductConfigurationLookup.label" default="Duct Configuration Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ductConfigurationLookup" name="ductConfigurationLookup.id" from="${gov.doe.seed.DuctConfigurationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.ductConfigurationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductInsulationLookup', 'error')} required">
	<label for="ductInsulationLookup">
		<g:message code="systemAir.ductInsulationLookup.label" default="Duct Insulation Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ductInsulationLookup" name="ductInsulationLookup.id" from="${gov.doe.seed.DuctInsulationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.ductInsulationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductLocationLookup', 'error')} required">
	<label for="ductLocationLookup">
		<g:message code="systemAir.ductLocationLookup.label" default="Duct Location Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ductLocationLookup" name="ductLocationLookup.id" from="${gov.doe.seed.DuctLocationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.ductLocationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductSealingLookup', 'error')} required">
	<label for="ductSealingLookup">
		<g:message code="systemAir.ductSealingLookup.label" default="Duct Sealing Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ductSealingLookup" name="ductSealingLookup.id" from="${gov.doe.seed.DuctSealingLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.ductSealingLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'ductTypeLookup', 'error')} required">
	<label for="ductTypeLookup">
		<g:message code="systemAir.ductTypeLookup.label" default="Duct Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ductTypeLookup" name="ductTypeLookup.id" from="${gov.doe.seed.DuctTypeLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.ductTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'economizerLookup', 'error')} required">
	<label for="economizerLookup">
		<g:message code="systemAir.economizerLookup.label" default="Economizer Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="economizerLookup" name="economizerLookup.id" from="${gov.doe.seed.EconomizerLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.economizerLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'efficiencyUnitSystemLookup', 'error')} required">
	<label for="efficiencyUnitSystemLookup">
		<g:message code="systemAir.efficiencyUnitSystemLookup.label" default="Efficiency Unit System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="efficiencyUnitSystemLookup" name="efficiencyUnitSystemLookup.id" from="${gov.doe.seed.EfficiencyUnitSystemLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.efficiencyUnitSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'fanControlTypeLookup', 'error')} required">
	<label for="fanControlTypeLookup">
		<g:message code="systemAir.fanControlTypeLookup.label" default="Fan Control Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fanControlTypeLookup" name="fanControlTypeLookup.id" from="${gov.doe.seed.FanControlTypeLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.fanControlTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'fanPlacementLookup', 'error')} required">
	<label for="fanPlacementLookup">
		<g:message code="systemAir.fanPlacementLookup.label" default="Fan Placement Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fanPlacementLookup" name="fanPlacementLookup.id" from="${gov.doe.seed.FanPlacementLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.fanPlacementLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'flowConfigurationLookup', 'error')} required">
	<label for="flowConfigurationLookup">
		<g:message code="systemAir.flowConfigurationLookup.label" default="Flow Configuration Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="flowConfigurationLookup" name="flowConfigurationLookup.id" from="${gov.doe.seed.FlowConfigurationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.flowConfigurationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'flowControlLookup', 'error')} required">
	<label for="flowControlLookup">
		<g:message code="systemAir.flowControlLookup.label" default="Flow Control Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="flowControlLookup" name="flowControlLookup.id" from="${gov.doe.seed.FlowControlLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.flowControlLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'heatRecoveryLookup', 'error')} required">
	<label for="heatRecoveryLookup">
		<g:message code="systemAir.heatRecoveryLookup.label" default="Heat Recovery Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="heatRecoveryLookup" name="heatRecoveryLookup.id" from="${gov.doe.seed.HeatRecoveryLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.heatRecoveryLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'heatingSourceLookup', 'error')} required">
	<label for="heatingSourceLookup">
		<g:message code="systemAir.heatingSourceLookup.label" default="Heating Source Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="heatingSourceLookup" name="heatingSourceLookup.id" from="${gov.doe.seed.HeatingSourceLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.heatingSourceLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'humidificationLookup', 'error')} required">
	<label for="humidificationLookup">
		<g:message code="systemAir.humidificationLookup.label" default="Humidification Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="humidificationLookup" name="humidificationLookup.id" from="${gov.doe.seed.HumidificationLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.humidificationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'preheatSourceLookup', 'error')} required">
	<label for="preheatSourceLookup">
		<g:message code="systemAir.preheatSourceLookup.label" default="Preheat Source Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="preheatSourceLookup" name="preheatSourceLookup.id" from="${gov.doe.seed.PreheatSourceLookup.list()}" optionKey="id" required="" value="${systemAirInstance?.preheatSourceLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemAirInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemAir.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemAirInstance?.system?.id}" class="many-to-one"/>
</div>

