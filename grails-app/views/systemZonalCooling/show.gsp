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

<%@ page import="gov.doe.seed.SystemZonalCooling" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemZonalCooling.label', default: 'SystemZonalCooling')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemZonalCooling" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemZonalCooling" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemZonalCooling">
			
				<g:if test="${systemZonalCoolingInstance?.yearOfManufactureZonalCooling}">
				<li class="fieldcontain">
					<span id="yearOfManufactureZonalCooling-label" class="property-label"><g:message code="systemZonalCooling.yearOfManufactureZonalCooling.label" default="Year Of Manufacture Zonal Cooling" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureZonalCooling-label"><g:fieldValue bean="${systemZonalCoolingInstance}" field="yearOfManufactureZonalCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.quantityZonalCooling}">
				<li class="fieldcontain">
					<span id="quantityZonalCooling-label" class="property-label"><g:message code="systemZonalCooling.quantityZonalCooling.label" default="Quantity Zonal Cooling" /></span>
					
						<span class="property-value" aria-labelledby="quantityZonalCooling-label"><g:fieldValue bean="${systemZonalCoolingInstance}" field="quantityZonalCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.percTotInstalledCapZonalCooling}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapZonalCooling-label" class="property-label"><g:message code="systemZonalCooling.percTotInstalledCapZonalCooling.label" default="Perc Tot Installed Cap Zonal Cooling" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapZonalCooling-label"><g:fieldValue bean="${systemZonalCoolingInstance}" field="percTotInstalledCapZonalCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.percFloorAreaServedZonalCooling}">
				<li class="fieldcontain">
					<span id="percFloorAreaServedZonalCooling-label" class="property-label"><g:message code="systemZonalCooling.percFloorAreaServedZonalCooling.label" default="Perc Floor Area Served Zonal Cooling" /></span>
					
						<span class="property-value" aria-labelledby="percFloorAreaServedZonalCooling-label"><g:fieldValue bean="${systemZonalCoolingInstance}" field="percFloorAreaServedZonalCooling"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.downstreamDistribution}">
				<li class="fieldcontain">
					<span id="downstreamDistribution-label" class="property-label"><g:message code="systemZonalCooling.downstreamDistribution.label" default="Downstream Distribution" /></span>
					
						<span class="property-value" aria-labelledby="downstreamDistribution-label"><g:formatBoolean boolean="${systemZonalCoolingInstance?.downstreamDistribution}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.avgOperHrs}">
				<li class="fieldcontain">
					<span id="avgOperHrs-label" class="property-label"><g:message code="systemZonalCooling.avgOperHrs.label" default="Avg Oper Hrs" /></span>
					
						<span class="property-value" aria-labelledby="avgOperHrs-label"><g:fieldValue bean="${systemZonalCoolingInstance}" field="avgOperHrs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.numMonthsOper}">
				<li class="fieldcontain">
					<span id="numMonthsOper-label" class="property-label"><g:message code="systemZonalCooling.numMonthsOper.label" default="Num Months Oper" /></span>
					
						<span class="property-value" aria-labelledby="numMonthsOper-label"><g:fieldValue bean="${systemZonalCoolingInstance}" field="numMonthsOper"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemZonalCooling.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemZonalCoolingInstance?.controlTypeSystemLookup?.id}">${systemZonalCoolingInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemZonalCooling.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemZonalCoolingInstance?.fuelTypeLookup?.id}">${systemZonalCoolingInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemZonalCooling.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemZonalCoolingInstance?.system?.id}">${systemZonalCoolingInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.zonalCoolingSizeRangeLookup}">
				<li class="fieldcontain">
					<span id="zonalCoolingSizeRangeLookup-label" class="property-label"><g:message code="systemZonalCooling.zonalCoolingSizeRangeLookup.label" default="Zonal Cooling Size Range Lookup" /></span>
					
						<span class="property-value" aria-labelledby="zonalCoolingSizeRangeLookup-label"><g:link controller="zonalCoolingSizeRangeLookup" action="show" id="${systemZonalCoolingInstance?.zonalCoolingSizeRangeLookup?.id}">${systemZonalCoolingInstance?.zonalCoolingSizeRangeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemZonalCoolingInstance?.zonalCoolingTypeLookup}">
				<li class="fieldcontain">
					<span id="zonalCoolingTypeLookup-label" class="property-label"><g:message code="systemZonalCooling.zonalCoolingTypeLookup.label" default="Zonal Cooling Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="zonalCoolingTypeLookup-label"><g:link controller="zonalCoolingTypeLookup" action="show" id="${systemZonalCoolingInstance?.zonalCoolingTypeLookup?.id}">${systemZonalCoolingInstance?.zonalCoolingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemZonalCoolingInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemZonalCoolingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
