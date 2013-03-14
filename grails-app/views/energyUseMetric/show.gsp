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

<%@ page import="gov.doe.seed.EnergyUseMetric" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'energyUseMetric.label', default: 'EnergyUseMetric')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-energyUseMetric" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-energyUseMetric" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list energyUseMetric">
			
				<g:if test="${energyUseMetricInstance?.identifier}">
				<li class="fieldcontain">
					<span id="identifier-label" class="property-label"><g:message code="energyUseMetric.identifier.label" default="Identifier" /></span>
					
						<span class="property-value" aria-labelledby="identifier-label"><g:fieldValue bean="${energyUseMetricInstance}" field="identifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.completeFuelInd}">
				<li class="fieldcontain">
					<span id="completeFuelInd-label" class="property-label"><g:message code="energyUseMetric.completeFuelInd.label" default="Complete Fuel Ind" /></span>
					
						<span class="property-value" aria-labelledby="completeFuelInd-label"><g:formatBoolean boolean="${energyUseMetricInstance?.completeFuelInd}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.completeEndUse}">
				<li class="fieldcontain">
					<span id="completeEndUse-label" class="property-label"><g:message code="energyUseMetric.completeEndUse.label" default="Complete End Use" /></span>
					
						<span class="property-value" aria-labelledby="completeEndUse-label"><g:formatBoolean boolean="${energyUseMetricInstance?.completeEndUse}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.readingTimeZone}">
				<li class="fieldcontain">
					<span id="readingTimeZone-label" class="property-label"><g:message code="energyUseMetric.readingTimeZone.label" default="Reading Time Zone" /></span>
					
						<span class="property-value" aria-labelledby="readingTimeZone-label"><g:fieldValue bean="${energyUseMetricInstance}" field="readingTimeZone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.summerPeak}">
				<li class="fieldcontain">
					<span id="summerPeak-label" class="property-label"><g:message code="energyUseMetric.summerPeak.label" default="Summer Peak" /></span>
					
						<span class="property-value" aria-labelledby="summerPeak-label"><g:fieldValue bean="${energyUseMetricInstance}" field="summerPeak"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.winterPeak}">
				<li class="fieldcontain">
					<span id="winterPeak-label" class="property-label"><g:message code="energyUseMetric.winterPeak.label" default="Winter Peak" /></span>
					
						<span class="property-value" aria-labelledby="winterPeak-label"><g:fieldValue bean="${energyUseMetricInstance}" field="winterPeak"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.rateStructure}">
				<li class="fieldcontain">
					<span id="rateStructure-label" class="property-label"><g:message code="energyUseMetric.rateStructure.label" default="Rate Structure" /></span>
					
						<span class="property-value" aria-labelledby="rateStructure-label"><g:fieldValue bean="${energyUseMetricInstance}" field="rateStructure"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.utilityCompany}">
				<li class="fieldcontain">
					<span id="utilityCompany-label" class="property-label"><g:message code="energyUseMetric.utilityCompany.label" default="Utility Company" /></span>
					
						<span class="property-value" aria-labelledby="utilityCompany-label"><g:fieldValue bean="${energyUseMetricInstance}" field="utilityCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.powerPlant}">
				<li class="fieldcontain">
					<span id="powerPlant-label" class="property-label"><g:message code="energyUseMetric.powerPlant.label" default="Power Plant" /></span>
					
						<span class="property-value" aria-labelledby="powerPlant-label"><g:fieldValue bean="${energyUseMetricInstance}" field="powerPlant"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.energyUseAlert}">
				<li class="fieldcontain">
					<span id="energyUseAlert-label" class="property-label"><g:message code="energyUseMetric.energyUseAlert.label" default="Energy Use Alert" /></span>
					
						<span class="property-value" aria-labelledby="energyUseAlert-label"><g:fieldValue bean="${energyUseMetricInstance}" field="energyUseAlert"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.emissionsFactor}">
				<li class="fieldcontain">
					<span id="emissionsFactor-label" class="property-label"><g:message code="energyUseMetric.emissionsFactor.label" default="Emissions Factor" /></span>
					
						<span class="property-value" aria-labelledby="emissionsFactor-label"><g:fieldValue bean="${energyUseMetricInstance}" field="emissionsFactor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.waterUseAlert}">
				<li class="fieldcontain">
					<span id="waterUseAlert-label" class="property-label"><g:message code="energyUseMetric.waterUseAlert.label" default="Water Use Alert" /></span>
					
						<span class="property-value" aria-labelledby="waterUseAlert-label"><g:fieldValue bean="${energyUseMetricInstance}" field="waterUseAlert"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="energyUseMetric.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${energyUseMetricInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="energyUseMetric.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${energyUseMetricInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="energyUseMetric.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${energyUseMetricInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.endUseTypeLookup}">
				<li class="fieldcontain">
					<span id="endUseTypeLookup-label" class="property-label"><g:message code="energyUseMetric.endUseTypeLookup.label" default="End Use Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="endUseTypeLookup-label"><g:link controller="endUseTypeLookup" action="show" id="${energyUseMetricInstance?.endUseTypeLookup?.id}">${energyUseMetricInstance?.endUseTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.energyTimeSerieses}">
				<li class="fieldcontain">
					<span id="energyTimeSerieses-label" class="property-label"><g:message code="energyUseMetric.energyTimeSerieses.label" default="Energy Time Serieses" /></span>
					
						<g:each in="${energyUseMetricInstance.energyTimeSerieses}" var="e">
						<span class="property-value" aria-labelledby="energyTimeSerieses-label"><g:link controller="energyTimeSeries" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="energyUseMetric.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${energyUseMetricInstance?.facility?.id}">${energyUseMetricInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.fuelInterruptLookup}">
				<li class="fieldcontain">
					<span id="fuelInterruptLookup-label" class="property-label"><g:message code="energyUseMetric.fuelInterruptLookup.label" default="Fuel Interrupt Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelInterruptLookup-label"><g:link controller="fuelInterruptLookup" action="show" id="${energyUseMetricInstance?.fuelInterruptLookup?.id}">${energyUseMetricInstance?.fuelInterruptLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="energyUseMetric.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${energyUseMetricInstance?.fuelTypeLookup?.id}">${energyUseMetricInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.intervalTypeLookup}">
				<li class="fieldcontain">
					<span id="intervalTypeLookup-label" class="property-label"><g:message code="energyUseMetric.intervalTypeLookup.label" default="Interval Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="intervalTypeLookup-label"><g:link controller="intervalTypeLookup" action="show" id="${energyUseMetricInstance?.intervalTypeLookup?.id}">${energyUseMetricInstance?.intervalTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.meterConfigLookup}">
				<li class="fieldcontain">
					<span id="meterConfigLookup-label" class="property-label"><g:message code="energyUseMetric.meterConfigLookup.label" default="Meter Config Lookup" /></span>
					
						<span class="property-value" aria-labelledby="meterConfigLookup-label"><g:link controller="meterConfigLookup" action="show" id="${energyUseMetricInstance?.meterConfigLookup?.id}">${energyUseMetricInstance?.meterConfigLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.readingTypeLookup}">
				<li class="fieldcontain">
					<span id="readingTypeLookup-label" class="property-label"><g:message code="energyUseMetric.readingTypeLookup.label" default="Reading Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="readingTypeLookup-label"><g:link controller="readingTypeLookup" action="show" id="${energyUseMetricInstance?.readingTypeLookup?.id}">${energyUseMetricInstance?.readingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.sharedEnergyLookup}">
				<li class="fieldcontain">
					<span id="sharedEnergyLookup-label" class="property-label"><g:message code="energyUseMetric.sharedEnergyLookup.label" default="Shared Energy Lookup" /></span>
					
						<span class="property-value" aria-labelledby="sharedEnergyLookup-label"><g:link controller="sharedEnergyLookup" action="show" id="${energyUseMetricInstance?.sharedEnergyLookup?.id}">${energyUseMetricInstance?.sharedEnergyLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.unitTypeLookup}">
				<li class="fieldcontain">
					<span id="unitTypeLookup-label" class="property-label"><g:message code="energyUseMetric.unitTypeLookup.label" default="Unit Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="unitTypeLookup-label"><g:link controller="unitTypeLookup" action="show" id="${energyUseMetricInstance?.unitTypeLookup?.id}">${energyUseMetricInstance?.unitTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="energyUseMetric.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${energyUseMetricInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyUseMetricInstance?.waterUseTypeLookup}">
				<li class="fieldcontain">
					<span id="waterUseTypeLookup-label" class="property-label"><g:message code="energyUseMetric.waterUseTypeLookup.label" default="Water Use Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="waterUseTypeLookup-label"><g:link controller="waterUseTypeLookup" action="show" id="${energyUseMetricInstance?.waterUseTypeLookup?.id}">${energyUseMetricInstance?.waterUseTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${energyUseMetricInstance?.id}" />
					<g:link class="edit" action="edit" id="${energyUseMetricInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
