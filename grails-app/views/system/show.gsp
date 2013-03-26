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

<%@ page import="gov.doe.seed.System" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'system.label', default: 'System')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-system" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-system" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list system">
			
				<g:if test="${systemInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="system.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${systemInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="system.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${systemInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="system.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${systemInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="system.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${systemInstance?.facility?.id}">${systemInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemAirs}">
				<li class="fieldcontain">
					<span id="systemAirs-label" class="property-label"><g:message code="system.systemAirs.label" default="System Airs" /></span>
					
						<g:each in="${systemInstance.systemAirs}" var="s">
						<span class="property-value" aria-labelledby="systemAirs-label"><g:link controller="systemAir" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemConveyances}">
				<li class="fieldcontain">
					<span id="systemConveyances-label" class="property-label"><g:message code="system.systemConveyances.label" default="System Conveyances" /></span>
					
						<g:each in="${systemInstance.systemConveyances}" var="s">
						<span class="property-value" aria-labelledby="systemConveyances-label"><g:link controller="systemConveyance" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemCookings}">
				<li class="fieldcontain">
					<span id="systemCookings-label" class="property-label"><g:message code="system.systemCookings.label" default="System Cookings" /></span>
					
						<g:each in="${systemInstance.systemCookings}" var="s">
						<span class="property-value" aria-labelledby="systemCookings-label"><g:link controller="systemCooking" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemCoolings}">
				<li class="fieldcontain">
					<span id="systemCoolings-label" class="property-label"><g:message code="system.systemCoolings.label" default="System Coolings" /></span>
					
						<g:each in="${systemInstance.systemCoolings}" var="s">
						<span class="property-value" aria-labelledby="systemCoolings-label"><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemDishwashers}">
				<li class="fieldcontain">
					<span id="systemDishwashers-label" class="property-label"><g:message code="system.systemDishwashers.label" default="System Dishwashers" /></span>
					
						<g:each in="${systemInstance.systemDishwashers}" var="s">
						<span class="property-value" aria-labelledby="systemDishwashers-label"><g:link controller="systemDishwasher" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemEnergyStorages}">
				<li class="fieldcontain">
					<span id="systemEnergyStorages-label" class="property-label"><g:message code="system.systemEnergyStorages.label" default="System Energy Storages" /></span>
					
						<g:each in="${systemInstance.systemEnergyStorages}" var="s">
						<span class="property-value" aria-labelledby="systemEnergyStorages-label"><g:link controller="systemEnergyStorage" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemFenestrations}">
				<li class="fieldcontain">
					<span id="systemFenestrations-label" class="property-label"><g:message code="system.systemFenestrations.label" default="System Fenestrations" /></span>
					
						<g:each in="${systemInstance.systemFenestrations}" var="s">
						<span class="property-value" aria-labelledby="systemFenestrations-label"><g:link controller="systemFenestration" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemFoundations}">
				<li class="fieldcontain">
					<span id="systemFoundations-label" class="property-label"><g:message code="system.systemFoundations.label" default="System Foundations" /></span>
					
						<g:each in="${systemInstance.systemFoundations}" var="s">
						<span class="property-value" aria-labelledby="systemFoundations-label"><g:link controller="systemFoundation" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemGenerals}">
				<li class="fieldcontain">
					<span id="systemGenerals-label" class="property-label"><g:message code="system.systemGenerals.label" default="System Generals" /></span>
					
						<g:each in="${systemInstance.systemGenerals}" var="s">
						<span class="property-value" aria-labelledby="systemGenerals-label"><g:link controller="systemGeneral" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemHotwaters}">
				<li class="fieldcontain">
					<span id="systemHotwaters-label" class="property-label"><g:message code="system.systemHotwaters.label" default="System Hotwaters" /></span>
					
						<g:each in="${systemInstance.systemHotwaters}" var="s">
						<span class="property-value" aria-labelledby="systemHotwaters-label"><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemIts}">
				<li class="fieldcontain">
					<span id="systemIts-label" class="property-label"><g:message code="system.systemIts.label" default="System Its" /></span>
					
						<g:each in="${systemInstance.systemIts}" var="s">
						<span class="property-value" aria-labelledby="systemIts-label"><g:link controller="systemIt" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemLaundries}">
				<li class="fieldcontain">
					<span id="systemLaundries-label" class="property-label"><g:message code="system.systemLaundries.label" default="System Laundries" /></span>
					
						<g:each in="${systemInstance.systemLaundries}" var="s">
						<span class="property-value" aria-labelledby="systemLaundries-label"><g:link controller="systemLaundry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemLightings}">
				<li class="fieldcontain">
					<span id="systemLightings-label" class="property-label"><g:message code="system.systemLightings.label" default="System Lightings" /></span>
					
						<g:each in="${systemInstance.systemLightings}" var="s">
						<span class="property-value" aria-labelledby="systemLightings-label"><g:link controller="systemLighting" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemOnsites}">
				<li class="fieldcontain">
					<span id="systemOnsites-label" class="property-label"><g:message code="system.systemOnsites.label" default="System Onsites" /></span>
					
						<g:each in="${systemInstance.systemOnsites}" var="s">
						<span class="property-value" aria-labelledby="systemOnsites-label"><g:link controller="systemOnsite" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemPools}">
				<li class="fieldcontain">
					<span id="systemPools-label" class="property-label"><g:message code="system.systemPools.label" default="System Pools" /></span>
					
						<g:each in="${systemInstance.systemPools}" var="s">
						<span class="property-value" aria-labelledby="systemPools-label"><g:link controller="systemPool" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemProcessLoads}">
				<li class="fieldcontain">
					<span id="systemProcessLoads-label" class="property-label"><g:message code="system.systemProcessLoads.label" default="System Process Loads" /></span>
					
						<g:each in="${systemInstance.systemProcessLoads}" var="s">
						<span class="property-value" aria-labelledby="systemProcessLoads-label"><g:link controller="systemProcessLoad" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemRefrigerations}">
				<li class="fieldcontain">
					<span id="systemRefrigerations-label" class="property-label"><g:message code="system.systemRefrigerations.label" default="System Refrigerations" /></span>
					
						<g:each in="${systemInstance.systemRefrigerations}" var="s">
						<span class="property-value" aria-labelledby="systemRefrigerations-label"><g:link controller="systemRefrigeration" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemRoofs}">
				<li class="fieldcontain">
					<span id="systemRoofs-label" class="property-label"><g:message code="system.systemRoofs.label" default="System Roofs" /></span>
					
						<g:each in="${systemInstance.systemRoofs}" var="s">
						<span class="property-value" aria-labelledby="systemRoofs-label"><g:link controller="systemRoof" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemTypeLookup}">
				<li class="fieldcontain">
					<span id="systemTypeLookup-label" class="property-label"><g:message code="system.systemTypeLookup.label" default="System Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="systemTypeLookup-label"><g:link controller="systemTypeLookup" action="show" id="${systemInstance?.systemTypeLookup?.id}">${systemInstance?.systemTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemWalls}">
				<li class="fieldcontain">
					<span id="systemWalls-label" class="property-label"><g:message code="system.systemWalls.label" default="System Walls" /></span>
					
						<g:each in="${systemInstance.systemWalls}" var="s">
						<span class="property-value" aria-labelledby="systemWalls-label"><g:link controller="systemWall" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemZonalCoolings}">
				<li class="fieldcontain">
					<span id="systemZonalCoolings-label" class="property-label"><g:message code="system.systemZonalCoolings.label" default="System Zonal Coolings" /></span>
					
						<g:each in="${systemInstance.systemZonalCoolings}" var="s">
						<span class="property-value" aria-labelledby="systemZonalCoolings-label"><g:link controller="systemZonalCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.systemZonalHeatings}">
				<li class="fieldcontain">
					<span id="systemZonalHeatings-label" class="property-label"><g:message code="system.systemZonalHeatings.label" default="System Zonal Heatings" /></span>
					
						<g:each in="${systemInstance.systemZonalHeatings}" var="s">
						<span class="property-value" aria-labelledby="systemZonalHeatings-label"><g:link controller="systemZonalHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${systemInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="system.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${systemInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
