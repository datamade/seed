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

<%@ page import="gov.doe.seed.ControlTypeSystemLookup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'controlTypeSystemLookup.label', default: 'ControlTypeSystemLookup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-controlTypeSystemLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-controlTypeSystemLookup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list controlTypeSystemLookup">
			
				<g:if test="${controlTypeSystemLookupInstance?.controlTypeLookup}">
				<li class="fieldcontain">
					<span id="controlTypeLookup-label" class="property-label"><g:message code="controlTypeSystemLookup.controlTypeLookup.label" default="Control Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeLookup-label"><g:link controller="controlTypeLookup" action="show" id="${controlTypeSystemLookupInstance?.controlTypeLookup?.id}">${controlTypeSystemLookupInstance?.controlTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemConveyances}">
				<li class="fieldcontain">
					<span id="systemConveyances-label" class="property-label"><g:message code="controlTypeSystemLookup.systemConveyances.label" default="System Conveyances" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemConveyances}" var="s">
						<span class="property-value" aria-labelledby="systemConveyances-label"><g:link controller="systemConveyance" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemCoolings}">
				<li class="fieldcontain">
					<span id="systemCoolings-label" class="property-label"><g:message code="controlTypeSystemLookup.systemCoolings.label" default="System Coolings" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemCoolings}" var="s">
						<span class="property-value" aria-labelledby="systemCoolings-label"><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemHeatings}">
				<li class="fieldcontain">
					<span id="systemHeatings-label" class="property-label"><g:message code="controlTypeSystemLookup.systemHeatings.label" default="System Heatings" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemHeatings}" var="s">
						<span class="property-value" aria-labelledby="systemHeatings-label"><g:link controller="systemHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemHotwaters}">
				<li class="fieldcontain">
					<span id="systemHotwaters-label" class="property-label"><g:message code="controlTypeSystemLookup.systemHotwaters.label" default="System Hotwaters" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemHotwaters}" var="s">
						<span class="property-value" aria-labelledby="systemHotwaters-label"><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemHvacs}">
				<li class="fieldcontain">
					<span id="systemHvacs-label" class="property-label"><g:message code="controlTypeSystemLookup.systemHvacs.label" default="System Hvacs" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemHvacs}" var="s">
						<span class="property-value" aria-labelledby="systemHvacs-label"><g:link controller="systemHvac" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemPools}">
				<li class="fieldcontain">
					<span id="systemPools-label" class="property-label"><g:message code="controlTypeSystemLookup.systemPools.label" default="System Pools" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemPools}" var="s">
						<span class="property-value" aria-labelledby="systemPools-label"><g:link controller="systemPool" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemTypeLookup}">
				<li class="fieldcontain">
					<span id="systemTypeLookup-label" class="property-label"><g:message code="controlTypeSystemLookup.systemTypeLookup.label" default="System Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="systemTypeLookup-label"><g:link controller="systemTypeLookup" action="show" id="${controlTypeSystemLookupInstance?.systemTypeLookup?.id}">${controlTypeSystemLookupInstance?.systemTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemZonalCoolings}">
				<li class="fieldcontain">
					<span id="systemZonalCoolings-label" class="property-label"><g:message code="controlTypeSystemLookup.systemZonalCoolings.label" default="System Zonal Coolings" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemZonalCoolings}" var="s">
						<span class="property-value" aria-labelledby="systemZonalCoolings-label"><g:link controller="systemZonalCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${controlTypeSystemLookupInstance?.systemZonalHeatings}">
				<li class="fieldcontain">
					<span id="systemZonalHeatings-label" class="property-label"><g:message code="controlTypeSystemLookup.systemZonalHeatings.label" default="System Zonal Heatings" /></span>
					
						<g:each in="${controlTypeSystemLookupInstance.systemZonalHeatings}" var="s">
						<span class="property-value" aria-labelledby="systemZonalHeatings-label"><g:link controller="systemZonalHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${controlTypeSystemLookupInstance?.id}" />
					<g:link class="edit" action="edit" id="${controlTypeSystemLookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
