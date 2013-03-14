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

<%@ page import="gov.doe.seed.FuelTypeLookup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'fuelTypeLookup.label', default: 'FuelTypeLookup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-fuelTypeLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-fuelTypeLookup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list fuelTypeLookup">
			
				<g:if test="${fuelTypeLookupInstance?.fuelType}">
				<li class="fieldcontain">
					<span id="fuelType-label" class="property-label"><g:message code="fuelTypeLookup.fuelType.label" default="Fuel Type" /></span>
					
						<span class="property-value" aria-labelledby="fuelType-label"><g:fieldValue bean="${fuelTypeLookupInstance}" field="fuelType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.fuelTypeDescription}">
				<li class="fieldcontain">
					<span id="fuelTypeDescription-label" class="property-label"><g:message code="fuelTypeLookup.fuelTypeDescription.label" default="Fuel Type Description" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeDescription-label"><g:fieldValue bean="${fuelTypeLookupInstance}" field="fuelTypeDescription"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="fuelTypeLookup.sortOrder.label" default="Sort Order" /></span>
					
						<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${fuelTypeLookupInstance}" field="sortOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="fuelTypeLookup.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${fuelTypeLookupInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="fuelTypeLookup.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${fuelTypeLookupInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="fuelTypeLookup.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${fuelTypeLookupInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.energyUseMetrics}">
				<li class="fieldcontain">
					<span id="energyUseMetrics-label" class="property-label"><g:message code="fuelTypeLookup.energyUseMetrics.label" default="Energy Use Metrics" /></span>
					
						<g:each in="${fuelTypeLookupInstance.energyUseMetrics}" var="e">
						<span class="property-value" aria-labelledby="energyUseMetrics-label"><g:link controller="energyUseMetric" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemCookings}">
				<li class="fieldcontain">
					<span id="systemCookings-label" class="property-label"><g:message code="fuelTypeLookup.systemCookings.label" default="System Cookings" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemCookings}" var="s">
						<span class="property-value" aria-labelledby="systemCookings-label"><g:link controller="systemCooking" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemCoolings}">
				<li class="fieldcontain">
					<span id="systemCoolings-label" class="property-label"><g:message code="fuelTypeLookup.systemCoolings.label" default="System Coolings" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemCoolings}" var="s">
						<span class="property-value" aria-labelledby="systemCoolings-label"><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemDishwashers}">
				<li class="fieldcontain">
					<span id="systemDishwashers-label" class="property-label"><g:message code="fuelTypeLookup.systemDishwashers.label" default="System Dishwashers" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemDishwashers}" var="s">
						<span class="property-value" aria-labelledby="systemDishwashers-label"><g:link controller="systemDishwasher" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemHeatings}">
				<li class="fieldcontain">
					<span id="systemHeatings-label" class="property-label"><g:message code="fuelTypeLookup.systemHeatings.label" default="System Heatings" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemHeatings}" var="s">
						<span class="property-value" aria-labelledby="systemHeatings-label"><g:link controller="systemHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemHotwaters}">
				<li class="fieldcontain">
					<span id="systemHotwaters-label" class="property-label"><g:message code="fuelTypeLookup.systemHotwaters.label" default="System Hotwaters" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemHotwaters}" var="s">
						<span class="property-value" aria-labelledby="systemHotwaters-label"><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemHvacs}">
				<li class="fieldcontain">
					<span id="systemHvacs-label" class="property-label"><g:message code="fuelTypeLookup.systemHvacs.label" default="System Hvacs" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemHvacs}" var="s">
						<span class="property-value" aria-labelledby="systemHvacs-label"><g:link controller="systemHvac" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemLaundries}">
				<li class="fieldcontain">
					<span id="systemLaundries-label" class="property-label"><g:message code="fuelTypeLookup.systemLaundries.label" default="System Laundries" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemLaundries}" var="s">
						<span class="property-value" aria-labelledby="systemLaundries-label"><g:link controller="systemLaundry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemOnsites}">
				<li class="fieldcontain">
					<span id="systemOnsites-label" class="property-label"><g:message code="fuelTypeLookup.systemOnsites.label" default="System Onsites" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemOnsites}" var="s">
						<span class="property-value" aria-labelledby="systemOnsites-label"><g:link controller="systemOnsite" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemPools}">
				<li class="fieldcontain">
					<span id="systemPools-label" class="property-label"><g:message code="fuelTypeLookup.systemPools.label" default="System Pools" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemPools}" var="s">
						<span class="property-value" aria-labelledby="systemPools-label"><g:link controller="systemPool" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemProcessLoads}">
				<li class="fieldcontain">
					<span id="systemProcessLoads-label" class="property-label"><g:message code="fuelTypeLookup.systemProcessLoads.label" default="System Process Loads" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemProcessLoads}" var="s">
						<span class="property-value" aria-labelledby="systemProcessLoads-label"><g:link controller="systemProcessLoad" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemZonalCoolings}">
				<li class="fieldcontain">
					<span id="systemZonalCoolings-label" class="property-label"><g:message code="fuelTypeLookup.systemZonalCoolings.label" default="System Zonal Coolings" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemZonalCoolings}" var="s">
						<span class="property-value" aria-labelledby="systemZonalCoolings-label"><g:link controller="systemZonalCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.systemZonalHeatings}">
				<li class="fieldcontain">
					<span id="systemZonalHeatings-label" class="property-label"><g:message code="fuelTypeLookup.systemZonalHeatings.label" default="System Zonal Heatings" /></span>
					
						<g:each in="${fuelTypeLookupInstance.systemZonalHeatings}" var="s">
						<span class="property-value" aria-labelledby="systemZonalHeatings-label"><g:link controller="systemZonalHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${fuelTypeLookupInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="fuelTypeLookup.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${fuelTypeLookupInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${fuelTypeLookupInstance?.id}" />
					<g:link class="edit" action="edit" id="${fuelTypeLookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
