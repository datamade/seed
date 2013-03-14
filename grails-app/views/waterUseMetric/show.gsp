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

<%@ page import="gov.doe.seed.WaterUseMetric" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'waterUseMetric.label', default: 'WaterUseMetric')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-waterUseMetric" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-waterUseMetric" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list waterUseMetric">
			
				<g:if test="${waterUseMetricInstance?.pmMeterId}">
				<li class="fieldcontain">
					<span id="pmMeterId-label" class="property-label"><g:message code="waterUseMetric.pmMeterId.label" default="Pm Meter Id" /></span>
					
						<span class="property-value" aria-labelledby="pmMeterId-label"><g:fieldValue bean="${waterUseMetricInstance}" field="pmMeterId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.espMeterId}">
				<li class="fieldcontain">
					<span id="espMeterId-label" class="property-label"><g:message code="waterUseMetric.espMeterId.label" default="Esp Meter Id" /></span>
					
						<span class="property-value" aria-labelledby="espMeterId-label"><g:fieldValue bean="${waterUseMetricInstance}" field="espMeterId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.meterName}">
				<li class="fieldcontain">
					<span id="meterName-label" class="property-label"><g:message code="waterUseMetric.meterName.label" default="Meter Name" /></span>
					
						<span class="property-value" aria-labelledby="meterName-label"><g:fieldValue bean="${waterUseMetricInstance}" field="meterName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.utilityCompany}">
				<li class="fieldcontain">
					<span id="utilityCompany-label" class="property-label"><g:message code="waterUseMetric.utilityCompany.label" default="Utility Company" /></span>
					
						<span class="property-value" aria-labelledby="utilityCompany-label"><g:fieldValue bean="${waterUseMetricInstance}" field="utilityCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.pmWaterMeterId}">
				<li class="fieldcontain">
					<span id="pmWaterMeterId-label" class="property-label"><g:message code="waterUseMetric.pmWaterMeterId.label" default="Pm Water Meter Id" /></span>
					
						<span class="property-value" aria-labelledby="pmWaterMeterId-label"><g:fieldValue bean="${waterUseMetricInstance}" field="pmWaterMeterId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.espWaterMeterId}">
				<li class="fieldcontain">
					<span id="espWaterMeterId-label" class="property-label"><g:message code="waterUseMetric.espWaterMeterId.label" default="Esp Water Meter Id" /></span>
					
						<span class="property-value" aria-labelledby="espWaterMeterId-label"><g:fieldValue bean="${waterUseMetricInstance}" field="espWaterMeterId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.indoorWaterCost}">
				<li class="fieldcontain">
					<span id="indoorWaterCost-label" class="property-label"><g:message code="waterUseMetric.indoorWaterCost.label" default="Indoor Water Cost" /></span>
					
						<span class="property-value" aria-labelledby="indoorWaterCost-label"><g:fieldValue bean="${waterUseMetricInstance}" field="indoorWaterCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.indoorWaterUse}">
				<li class="fieldcontain">
					<span id="indoorWaterUse-label" class="property-label"><g:message code="waterUseMetric.indoorWaterUse.label" default="Indoor Water Use" /></span>
					
						<span class="property-value" aria-labelledby="indoorWaterUse-label"><g:fieldValue bean="${waterUseMetricInstance}" field="indoorWaterUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.indoorWaterUsePerSqft}">
				<li class="fieldcontain">
					<span id="indoorWaterUsePerSqft-label" class="property-label"><g:message code="waterUseMetric.indoorWaterUsePerSqft.label" default="Indoor Water Use Per Sqft" /></span>
					
						<span class="property-value" aria-labelledby="indoorWaterUsePerSqft-label"><g:fieldValue bean="${waterUseMetricInstance}" field="indoorWaterUsePerSqft"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.otherWaterCost}">
				<li class="fieldcontain">
					<span id="otherWaterCost-label" class="property-label"><g:message code="waterUseMetric.otherWaterCost.label" default="Other Water Cost" /></span>
					
						<span class="property-value" aria-labelledby="otherWaterCost-label"><g:fieldValue bean="${waterUseMetricInstance}" field="otherWaterCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.otherWaterUse}">
				<li class="fieldcontain">
					<span id="otherWaterUse-label" class="property-label"><g:message code="waterUseMetric.otherWaterUse.label" default="Other Water Use" /></span>
					
						<span class="property-value" aria-labelledby="otherWaterUse-label"><g:fieldValue bean="${waterUseMetricInstance}" field="otherWaterUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.totIndoorOutdoorWaterCost}">
				<li class="fieldcontain">
					<span id="totIndoorOutdoorWaterCost-label" class="property-label"><g:message code="waterUseMetric.totIndoorOutdoorWaterCost.label" default="Tot Indoor Outdoor Water Cost" /></span>
					
						<span class="property-value" aria-labelledby="totIndoorOutdoorWaterCost-label"><g:fieldValue bean="${waterUseMetricInstance}" field="totIndoorOutdoorWaterCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.totIndoorOutdoorWaterUse}">
				<li class="fieldcontain">
					<span id="totIndoorOutdoorWaterUse-label" class="property-label"><g:message code="waterUseMetric.totIndoorOutdoorWaterUse.label" default="Tot Indoor Outdoor Water Use" /></span>
					
						<span class="property-value" aria-labelledby="totIndoorOutdoorWaterUse-label"><g:fieldValue bean="${waterUseMetricInstance}" field="totIndoorOutdoorWaterUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.wasteWaterSewerCost}">
				<li class="fieldcontain">
					<span id="wasteWaterSewerCost-label" class="property-label"><g:message code="waterUseMetric.wasteWaterSewerCost.label" default="Waste Water Sewer Cost" /></span>
					
						<span class="property-value" aria-labelledby="wasteWaterSewerCost-label"><g:fieldValue bean="${waterUseMetricInstance}" field="wasteWaterSewerCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.wasteWaterSewerUse}">
				<li class="fieldcontain">
					<span id="wasteWaterSewerUse-label" class="property-label"><g:message code="waterUseMetric.wasteWaterSewerUse.label" default="Waste Water Sewer Use" /></span>
					
						<span class="property-value" aria-labelledby="wasteWaterSewerUse-label"><g:fieldValue bean="${waterUseMetricInstance}" field="wasteWaterSewerUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.waterUseAlerts}">
				<li class="fieldcontain">
					<span id="waterUseAlerts-label" class="property-label"><g:message code="waterUseMetric.waterUseAlerts.label" default="Water Use Alerts" /></span>
					
						<span class="property-value" aria-labelledby="waterUseAlerts-label"><g:formatBoolean boolean="${waterUseMetricInstance?.waterUseAlerts}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="waterUseMetric.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${waterUseMetricInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="waterUseMetric.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${waterUseMetricInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="waterUseMetric.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${waterUseMetricInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="waterUseMetric.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${waterUseMetricInstance?.facility?.id}">${waterUseMetricInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.metricTypeLookup}">
				<li class="fieldcontain">
					<span id="metricTypeLookup-label" class="property-label"><g:message code="waterUseMetric.metricTypeLookup.label" default="Metric Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="metricTypeLookup-label"><g:link controller="metricTypeLookup" action="show" id="${waterUseMetricInstance?.metricTypeLookup?.id}">${waterUseMetricInstance?.metricTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.unitTypeLookup}">
				<li class="fieldcontain">
					<span id="unitTypeLookup-label" class="property-label"><g:message code="waterUseMetric.unitTypeLookup.label" default="Unit Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="unitTypeLookup-label"><g:link controller="unitTypeLookup" action="show" id="${waterUseMetricInstance?.unitTypeLookup?.id}">${waterUseMetricInstance?.unitTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="waterUseMetric.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${waterUseMetricInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.waterTimeSerieses}">
				<li class="fieldcontain">
					<span id="waterTimeSerieses-label" class="property-label"><g:message code="waterUseMetric.waterTimeSerieses.label" default="Water Time Serieses" /></span>
					
						<g:each in="${waterUseMetricInstance.waterTimeSerieses}" var="w">
						<span class="property-value" aria-labelledby="waterTimeSerieses-label"><g:link controller="waterTimeSeries" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${waterUseMetricInstance?.waterUseMetricValue}">
				<li class="fieldcontain">
					<span id="waterUseMetricValue-label" class="property-label"><g:message code="waterUseMetric.waterUseMetricValue.label" default="Water Use Metric Value" /></span>
					
						<span class="property-value" aria-labelledby="waterUseMetricValue-label"><g:fieldValue bean="${waterUseMetricInstance}" field="waterUseMetricValue"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${waterUseMetricInstance?.id}" />
					<g:link class="edit" action="edit" id="${waterUseMetricInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
