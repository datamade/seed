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

<%@ page import="gov.doe.seed.SystemPool" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemPool.label', default: 'SystemPool')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemPool" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemPool" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemPool">
			
				<g:if test="${systemPoolInstance?.quantityPool}">
				<li class="fieldcontain">
					<span id="quantityPool-label" class="property-label"><g:message code="systemPool.quantityPool.label" default="Quantity Pool" /></span>
					
						<span class="property-value" aria-labelledby="quantityPool-label"><g:fieldValue bean="${systemPoolInstance}" field="quantityPool"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.heatedPool}">
				<li class="fieldcontain">
					<span id="heatedPool-label" class="property-label"><g:message code="systemPool.heatedPool.label" default="Heated Pool" /></span>
					
						<span class="property-value" aria-labelledby="heatedPool-label"><g:formatBoolean boolean="${systemPoolInstance?.heatedPool}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.poolVolume}">
				<li class="fieldcontain">
					<span id="poolVolume-label" class="property-label"><g:message code="systemPool.poolVolume.label" default="Pool Volume" /></span>
					
						<span class="property-value" aria-labelledby="poolVolume-label"><g:fieldValue bean="${systemPoolInstance}" field="poolVolume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.numPoolPumps}">
				<li class="fieldcontain">
					<span id="numPoolPumps-label" class="property-label"><g:message code="systemPool.numPoolPumps.label" default="Num Pool Pumps" /></span>
					
						<span class="property-value" aria-labelledby="numPoolPumps-label"><g:fieldValue bean="${systemPoolInstance}" field="numPoolPumps"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.indoorPool}">
				<li class="fieldcontain">
					<span id="indoorPool-label" class="property-label"><g:message code="systemPool.indoorPool.label" default="Indoor Pool" /></span>
					
						<span class="property-value" aria-labelledby="indoorPool-label"><g:formatBoolean boolean="${systemPoolInstance?.indoorPool}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.poolArea}">
				<li class="fieldcontain">
					<span id="poolArea-label" class="property-label"><g:message code="systemPool.poolArea.label" default="Pool Area" /></span>
					
						<span class="property-value" aria-labelledby="poolArea-label"><g:fieldValue bean="${systemPoolInstance}" field="poolArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.controlTypeSystemLookup}">
				<li class="fieldcontain">
					<span id="controlTypeSystemLookup-label" class="property-label"><g:message code="systemPool.controlTypeSystemLookup.label" default="Control Type System Lookup" /></span>
					
						<span class="property-value" aria-labelledby="controlTypeSystemLookup-label"><g:link controller="controlTypeSystemLookup" action="show" id="${systemPoolInstance?.controlTypeSystemLookup?.id}">${systemPoolInstance?.controlTypeSystemLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemPool.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemPoolInstance?.fuelTypeLookup?.id}">${systemPoolInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.poolTypeLookup}">
				<li class="fieldcontain">
					<span id="poolTypeLookup-label" class="property-label"><g:message code="systemPool.poolTypeLookup.label" default="Pool Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="poolTypeLookup-label"><g:link controller="poolTypeLookup" action="show" id="${systemPoolInstance?.poolTypeLookup?.id}">${systemPoolInstance?.poolTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemPoolInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemPool.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemPoolInstance?.system?.id}">${systemPoolInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemPoolInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemPoolInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
