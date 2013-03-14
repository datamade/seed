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

<%@ page import="gov.doe.seed.SystemLighting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemLighting.label', default: 'SystemLighting')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemLighting" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemLighting" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemLighting">
			
				<g:if test="${systemLightingInstance?.installedPower}">
				<li class="fieldcontain">
					<span id="installedPower-label" class="property-label"><g:message code="systemLighting.installedPower.label" default="Installed Power" /></span>
					
						<span class="property-value" aria-labelledby="installedPower-label"><g:fieldValue bean="${systemLightingInstance}" field="installedPower"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.percTotInstalledPowerHeating}">
				<li class="fieldcontain">
					<span id="percTotInstalledPowerHeating-label" class="property-label"><g:message code="systemLighting.percTotInstalledPowerHeating.label" default="Perc Tot Installed Power Heating" /></span>
					
						<span class="property-value" aria-labelledby="percTotInstalledPowerHeating-label"><g:fieldValue bean="${systemLightingInstance}" field="percTotInstalledPowerHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.percFloorAreaServedHeating}">
				<li class="fieldcontain">
					<span id="percFloorAreaServedHeating-label" class="property-label"><g:message code="systemLighting.percFloorAreaServedHeating.label" default="Perc Floor Area Served Heating" /></span>
					
						<span class="property-value" aria-labelledby="percFloorAreaServedHeating-label"><g:fieldValue bean="${systemLightingInstance}" field="percFloorAreaServedHeating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.outsideLighting}">
				<li class="fieldcontain">
					<span id="outsideLighting-label" class="property-label"><g:message code="systemLighting.outsideLighting.label" default="Outside Lighting" /></span>
					
						<span class="property-value" aria-labelledby="outsideLighting-label"><g:fieldValue bean="${systemLightingInstance}" field="outsideLighting"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.lightingEfficacy}">
				<li class="fieldcontain">
					<span id="lightingEfficacy-label" class="property-label"><g:message code="systemLighting.lightingEfficacy.label" default="Lighting Efficacy" /></span>
					
						<span class="property-value" aria-labelledby="lightingEfficacy-label"><g:fieldValue bean="${systemLightingInstance}" field="lightingEfficacy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.specularReflectors}">
				<li class="fieldcontain">
					<span id="specularReflectors-label" class="property-label"><g:message code="systemLighting.specularReflectors.label" default="Specular Reflectors" /></span>
					
						<span class="property-value" aria-labelledby="specularReflectors-label"><g:formatBoolean boolean="${systemLightingInstance?.specularReflectors}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.percLitOpen}">
				<li class="fieldcontain">
					<span id="percLitOpen-label" class="property-label"><g:message code="systemLighting.percLitOpen.label" default="Perc Lit Open" /></span>
					
						<span class="property-value" aria-labelledby="percLitOpen-label"><g:fieldValue bean="${systemLightingInstance}" field="percLitOpen"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.percLitClosed}">
				<li class="fieldcontain">
					<span id="percLitClosed-label" class="property-label"><g:message code="systemLighting.percLitClosed.label" default="Perc Lit Closed" /></span>
					
						<span class="property-value" aria-labelledby="percLitClosed-label"><g:fieldValue bean="${systemLightingInstance}" field="percLitClosed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.ballastTypeLookup}">
				<li class="fieldcontain">
					<span id="ballastTypeLookup-label" class="property-label"><g:message code="systemLighting.ballastTypeLookup.label" default="Ballast Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ballastTypeLookup-label"><g:link controller="ballastTypeLookup" action="show" id="${systemLightingInstance?.ballastTypeLookup?.id}">${systemLightingInstance?.ballastTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.lightingControlType}">
				<li class="fieldcontain">
					<span id="lightingControlType-label" class="property-label"><g:message code="systemLighting.lightingControlType.label" default="Lighting Control Type" /></span>
					
						<span class="property-value" aria-labelledby="lightingControlType-label"><g:link controller="lightingControlType" action="show" id="${systemLightingInstance?.lightingControlType?.id}">${systemLightingInstance?.lightingControlType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.lightingHourLookup}">
				<li class="fieldcontain">
					<span id="lightingHourLookup-label" class="property-label"><g:message code="systemLighting.lightingHourLookup.label" default="Lighting Hour Lookup" /></span>
					
						<span class="property-value" aria-labelledby="lightingHourLookup-label"><g:link controller="lightingHourLookup" action="show" id="${systemLightingInstance?.lightingHourLookup?.id}">${systemLightingInstance?.lightingHourLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.lightingTypeLookup}">
				<li class="fieldcontain">
					<span id="lightingTypeLookup-label" class="property-label"><g:message code="systemLighting.lightingTypeLookup.label" default="Lighting Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="lightingTypeLookup-label"><g:link controller="lightingTypeLookup" action="show" id="${systemLightingInstance?.lightingTypeLookup?.id}">${systemLightingInstance?.lightingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLightingInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemLighting.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemLightingInstance?.system?.id}">${systemLightingInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemLightingInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemLightingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
