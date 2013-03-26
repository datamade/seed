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

<%@ page import="gov.doe.seed.SystemRoof" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemRoof.label', default: 'SystemRoof')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemRoof" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemRoof" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemRoof">
			
				<g:if test="${systemRoofInstance?.locationAtticIdFk}">
				<li class="fieldcontain">
					<span id="locationAtticIdFk-label" class="property-label"><g:message code="systemRoof.locationAtticIdFk.label" default="Location Attic Id Fk" /></span>
					
						<span class="property-value" aria-labelledby="locationAtticIdFk-label"><g:fieldValue bean="${systemRoofInstance}" field="locationAtticIdFk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofRValue}">
				<li class="fieldcontain">
					<span id="roofRValue-label" class="property-label"><g:message code="systemRoof.roofRValue.label" default="Roof RV alue" /></span>
					
						<span class="property-value" aria-labelledby="roofRValue-label"><g:fieldValue bean="${systemRoofInstance}" field="roofRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.percTotRoofArea}">
				<li class="fieldcontain">
					<span id="percTotRoofArea-label" class="property-label"><g:message code="systemRoof.percTotRoofArea.label" default="Perc Tot Roof Area" /></span>
					
						<span class="property-value" aria-labelledby="percTotRoofArea-label"><g:fieldValue bean="${systemRoofInstance}" field="percTotRoofArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofInsulationThickness}">
				<li class="fieldcontain">
					<span id="roofInsulationThickness-label" class="property-label"><g:message code="systemRoof.roofInsulationThickness.label" default="Roof Insulation Thickness" /></span>
					
						<span class="property-value" aria-labelledby="roofInsulationThickness-label"><g:fieldValue bean="${systemRoofInstance}" field="roofInsulationThickness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.atticRValue}">
				<li class="fieldcontain">
					<span id="atticRValue-label" class="property-label"><g:message code="systemRoof.atticRValue.label" default="Attic RV alue" /></span>
					
						<span class="property-value" aria-labelledby="atticRValue-label"><g:fieldValue bean="${systemRoofInstance}" field="atticRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.atticInsulationThickness}">
				<li class="fieldcontain">
					<span id="atticInsulationThickness-label" class="property-label"><g:message code="systemRoof.atticInsulationThickness.label" default="Attic Insulation Thickness" /></span>
					
						<span class="property-value" aria-labelledby="atticInsulationThickness-label"><g:fieldValue bean="${systemRoofInstance}" field="atticInsulationThickness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.radiantBarrier}">
				<li class="fieldcontain">
					<span id="radiantBarrier-label" class="property-label"><g:message code="systemRoof.radiantBarrier.label" default="Radiant Barrier" /></span>
					
						<span class="property-value" aria-labelledby="radiantBarrier-label"><g:formatBoolean boolean="${systemRoofInstance?.radiantBarrier}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofArea}">
				<li class="fieldcontain">
					<span id="roofArea-label" class="property-label"><g:message code="systemRoof.roofArea.label" default="Roof Area" /></span>
					
						<span class="property-value" aria-labelledby="roofArea-label"><g:fieldValue bean="${systemRoofInstance}" field="roofArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.percRoofTerrace}">
				<li class="fieldcontain">
					<span id="percRoofTerrace-label" class="property-label"><g:message code="systemRoof.percRoofTerrace.label" default="Perc Roof Terrace" /></span>
					
						<span class="property-value" aria-labelledby="percRoofTerrace-label"><g:fieldValue bean="${systemRoofInstance}" field="percRoofTerrace"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.terraceRValue}">
				<li class="fieldcontain">
					<span id="terraceRValue-label" class="property-label"><g:message code="systemRoof.terraceRValue.label" default="Terrace RV alue" /></span>
					
						<span class="property-value" aria-labelledby="terraceRValue-label"><g:fieldValue bean="${systemRoofInstance}" field="terraceRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.atticInsulationLookup}">
				<li class="fieldcontain">
					<span id="atticInsulationLookup-label" class="property-label"><g:message code="systemRoof.atticInsulationLookup.label" default="Attic Insulation Lookup" /></span>
					
						<span class="property-value" aria-labelledby="atticInsulationLookup-label"><g:link controller="atticInsulationLookup" action="show" id="${systemRoofInstance?.atticInsulationLookup?.id}">${systemRoofInstance?.atticInsulationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.atticTypeLookup}">
				<li class="fieldcontain">
					<span id="atticTypeLookup-label" class="property-label"><g:message code="systemRoof.atticTypeLookup.label" default="Attic Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="atticTypeLookup-label"><g:link controller="atticTypeLookup" action="show" id="${systemRoofInstance?.atticTypeLookup?.id}">${systemRoofInstance?.atticTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofColorLookup}">
				<li class="fieldcontain">
					<span id="roofColorLookup-label" class="property-label"><g:message code="systemRoof.roofColorLookup.label" default="Roof Color Lookup" /></span>
					
						<span class="property-value" aria-labelledby="roofColorLookup-label"><g:link controller="roofColorLookup" action="show" id="${systemRoofInstance?.roofColorLookup?.id}">${systemRoofInstance?.roofColorLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofDeckTypeLookup}">
				<li class="fieldcontain">
					<span id="roofDeckTypeLookup-label" class="property-label"><g:message code="systemRoof.roofDeckTypeLookup.label" default="Roof Deck Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="roofDeckTypeLookup-label"><g:link controller="roofDeckTypeLookup" action="show" id="${systemRoofInstance?.roofDeckTypeLookup?.id}">${systemRoofInstance?.roofDeckTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofInsulationType}">
				<li class="fieldcontain">
					<span id="roofInsulationType-label" class="property-label"><g:message code="systemRoof.roofInsulationType.label" default="Roof Insulation Type" /></span>
					
						<span class="property-value" aria-labelledby="roofInsulationType-label"><g:link controller="roofInsulationType" action="show" id="${systemRoofInstance?.roofInsulationType?.id}">${systemRoofInstance?.roofInsulationType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofSlopeLookup}">
				<li class="fieldcontain">
					<span id="roofSlopeLookup-label" class="property-label"><g:message code="systemRoof.roofSlopeLookup.label" default="Roof Slope Lookup" /></span>
					
						<span class="property-value" aria-labelledby="roofSlopeLookup-label"><g:link controller="roofSlopeLookup" action="show" id="${systemRoofInstance?.roofSlopeLookup?.id}">${systemRoofInstance?.roofSlopeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.roofTypeLookup}">
				<li class="fieldcontain">
					<span id="roofTypeLookup-label" class="property-label"><g:message code="systemRoof.roofTypeLookup.label" default="Roof Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="roofTypeLookup-label"><g:link controller="roofTypeLookup" action="show" id="${systemRoofInstance?.roofTypeLookup?.id}">${systemRoofInstance?.roofTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRoofInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemRoof.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemRoofInstance?.system?.id}">${systemRoofInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemRoofInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemRoofInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
