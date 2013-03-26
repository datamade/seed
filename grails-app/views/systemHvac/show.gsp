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

<%@ page import="gov.doe.seed.SystemHvac" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemHvac.label', default: 'SystemHvac')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemHvac" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemHvac" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemHvac">
			
				<g:if test="${systemHvacInstance?.systemIdFk}">
				<li class="fieldcontain">
					<span id="systemIdFk-label" class="property-label"><g:message code="systemHvac.systemIdFk.label" default="System Id Fk" /></span>
					
						<span class="property-value" aria-labelledby="systemIdFk-label"><g:fieldValue bean="${systemHvacInstance}" field="systemIdFk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.quantityHvac}">
				<li class="fieldcontain">
					<span id="quantityHvac-label" class="property-label"><g:message code="systemHvac.quantityHvac.label" default="Quantity Hvac" /></span>
					
						<span class="property-value" aria-labelledby="quantityHvac-label"><g:fieldValue bean="${systemHvacInstance}" field="quantityHvac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.capacityHvac}">
				<li class="fieldcontain">
					<span id="capacityHvac-label" class="property-label"><g:message code="systemHvac.capacityHvac.label" default="Capacity Hvac" /></span>
					
						<span class="property-value" aria-labelledby="capacityHvac-label"><g:fieldValue bean="${systemHvacInstance}" field="capacityHvac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.percTotInstalledCapacityHvac}">
				<li class="fieldcontain">
					<span id="percTotInstalledCapacityHvac-label" class="property-label"><g:message code="systemHvac.percTotInstalledCapacityHvac.label" default="Perc Tot Installed Capacity Hvac" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledCapacityHvac-label"><g:fieldValue bean="${systemHvacInstance}" field="percTotInstalledCapacityHvac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.percFloorAreaServedHvac}">
				<li class="fieldcontain">
					<span id="percFloorAreaServedHvac-label" class="property-label"><g:message code="systemHvac.percFloorAreaServedHvac.label" default="Perc Floor Area Served Hvac" /></span>
					
						<span class="property-value" aria-labelledby="percFloorAreaServedHvac-label"><g:fieldValue bean="${systemHvacInstance}" field="percFloorAreaServedHvac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.yearOfManufactureHvac}">
				<li class="fieldcontain">
					<span id="yearOfManufactureHvac-label" class="property-label"><g:message code="systemHvac.yearOfManufactureHvac.label" default="Year Of Manufacture Hvac" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureHvac-label"><g:fieldValue bean="${systemHvacInstance}" field="yearOfManufactureHvac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.zoneCountHvac}">
				<li class="fieldcontain">
					<span id="zoneCountHvac-label" class="property-label"><g:message code="systemHvac.zoneCountHvac.label" default="Zone Count Hvac" /></span>
					
						<span class="property-value" aria-labelledby="zoneCountHvac-label"><g:fieldValue bean="${systemHvacInstance}" field="zoneCountHvac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemHvac.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemHvacInstance?.controlTypeSystemLookup?.id}">${systemHvacInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemHvac.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemHvacInstance?.fuelTypeLookup?.id}">${systemHvacInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.otherHvacTypeLookup}">
				<li class="fieldcontain">
					<span id="otherHvacTypeLookup-label" class="property-label"><g:message code="systemHvac.otherHvacTypeLookup.label" default="Other Hvac Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="otherHvacTypeLookup-label"><g:link controller="otherHvacTypeLookup" action="show" id="${systemHvacInstance?.otherHvacTypeLookup?.id}">${systemHvacInstance?.otherHvacTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemHvacInstance?.systemHvacLocationLookup}">
				<li class="fieldcontain">
					<span id="systemHvacLocationLookup-label" class="property-label"><g:message code="systemHvac.systemHvacLocationLookup.label" default="System Hvac Location Lookup" /></span>
					
						<span class="property-value" aria-labelledby="systemHvacLocationLookup-label"><g:link controller="systemHvacLocationLookup" action="show" id="${systemHvacInstance?.systemHvacLocationLookup?.id}">${systemHvacInstance?.systemHvacLocationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemHvacInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemHvacInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
