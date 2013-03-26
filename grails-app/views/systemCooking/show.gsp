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

<%@ page import="gov.doe.seed.SystemCooking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemCooking.label', default: 'SystemCooking')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemCooking" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemCooking" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemCooking">
			
				<g:if test="${systemCookingInstance?.capacityCooking}">
				<li class="fieldcontain">
					<span id="capacityCooking-label" class="property-label"><g:message code="systemCooking.capacityCooking.label" default="Capacity Cooking" /></span>
					
						<span class="property-value" aria-labelledby="capacityCooking-label"><g:fieldValue bean="${systemCookingInstance}" field="capacityCooking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCookingInstance?.capUnitCooking}">
				<li class="fieldcontain">
					<span id="capUnitCooking-label" class="property-label"><g:message code="systemCooking.capUnitCooking.label" default="Cap Unit Cooking" /></span>
					
						<span class="property-value" aria-labelledby="capUnitCooking-label"><g:fieldValue bean="${systemCookingInstance}" field="capUnitCooking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCookingInstance?.quantityCooking}">
				<li class="fieldcontain">
					<span id="quantityCooking-label" class="property-label"><g:message code="systemCooking.quantityCooking.label" default="Quantity Cooking" /></span>
					
						<span class="property-value" aria-labelledby="quantityCooking-label"><g:fieldValue bean="${systemCookingInstance}" field="quantityCooking"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCookingInstance?.cookingTypeLookup}">
				<li class="fieldcontain">
					<span id="cookingTypeLookup-label" class="property-label"><g:message code="systemCooking.cookingTypeLookup.label" default="Cooking Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="cookingTypeLookup-label"><g:link controller="cookingTypeLookup" action="show" id="${systemCookingInstance?.cookingTypeLookup?.id}">${systemCookingInstance?.cookingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCookingInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemCooking.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemCookingInstance?.fuelTypeLookup?.id}">${systemCookingInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemCookingInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemCooking.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemCookingInstance?.system?.id}">${systemCookingInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemCookingInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemCookingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
