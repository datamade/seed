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

<%@ page import="gov.doe.seed.SystemEnergyStorage" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemEnergyStorage.label', default: 'SystemEnergyStorage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemEnergyStorage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemEnergyStorage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemEnergyStorage">
			
				<g:if test="${systemEnergyStorageInstance?.quantityEnergy}">
				<li class="fieldcontain">
					<span id="quantityEnergy-label" class="property-label"><g:message code="systemEnergyStorage.quantityEnergy.label" default="Quantity Energy" /></span>
					
						<span class="property-value" aria-labelledby="quantityEnergy-label"><g:fieldValue bean="${systemEnergyStorageInstance}" field="quantityEnergy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemEnergyStorageInstance?.energyStorageCapacity}">
				<li class="fieldcontain">
					<span id="energyStorageCapacity-label" class="property-label"><g:message code="systemEnergyStorage.energyStorageCapacity.label" default="Energy Storage Capacity" /></span>
					
						<span class="property-value" aria-labelledby="energyStorageCapacity-label"><g:fieldValue bean="${systemEnergyStorageInstance}" field="energyStorageCapacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemEnergyStorageInstance?.energyStorageTypeLookup}">
				<li class="fieldcontain">
					<span id="energyStorageTypeLookup-label" class="property-label"><g:message code="systemEnergyStorage.energyStorageTypeLookup.label" default="Energy Storage Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="energyStorageTypeLookup-label"><g:link controller="energyStorageTypeLookup" action="show" id="${systemEnergyStorageInstance?.energyStorageTypeLookup?.id}">${systemEnergyStorageInstance?.energyStorageTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemEnergyStorageInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemEnergyStorage.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemEnergyStorageInstance?.system?.id}">${systemEnergyStorageInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemEnergyStorageInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemEnergyStorageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
