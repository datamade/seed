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

<%@ page import="gov.doe.seed.SystemRefrigeration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemRefrigeration.label', default: 'SystemRefrigeration')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemRefrigeration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemRefrigeration" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemRefrigeration">
			
				<g:if test="${systemRefrigerationInstance?.quantityRefrig}">
				<li class="fieldcontain">
					<span id="quantityRefrig-label" class="property-label"><g:message code="systemRefrigeration.quantityRefrig.label" default="Quantity Refrig" /></span>
					
						<span class="property-value" aria-labelledby="quantityRefrig-label"><g:fieldValue bean="${systemRefrigerationInstance}" field="quantityRefrig"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.sizeRefirg}">
				<li class="fieldcontain">
					<span id="sizeRefirg-label" class="property-label"><g:message code="systemRefrigeration.sizeRefirg.label" default="Size Refirg" /></span>
					
						<span class="property-value" aria-labelledby="sizeRefirg-label"><g:fieldValue bean="${systemRefrigerationInstance}" field="sizeRefirg"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.yearOfManufactureRefrig}">
				<li class="fieldcontain">
					<span id="yearOfManufactureRefrig-label" class="property-label"><g:message code="systemRefrigeration.yearOfManufactureRefrig.label" default="Year Of Manufacture Refrig" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManufactureRefrig-label"><g:fieldValue bean="${systemRefrigerationInstance}" field="yearOfManufactureRefrig"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.energyStarRefrig}">
				<li class="fieldcontain">
					<span id="energyStarRefrig-label" class="property-label"><g:message code="systemRefrigeration.energyStarRefrig.label" default="Energy Star Refrig" /></span>
					
						<span class="property-value" aria-labelledby="energyStarRefrig-label"><g:formatBoolean boolean="${systemRefrigerationInstance?.energyStarRefrig}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.densityRefrig}">
				<li class="fieldcontain">
					<span id="densityRefrig-label" class="property-label"><g:message code="systemRefrigeration.densityRefrig.label" default="Density Refrig" /></span>
					
						<span class="property-value" aria-labelledby="densityRefrig-label"><g:fieldValue bean="${systemRefrigerationInstance}" field="densityRefrig"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.refrigDoorTypeLookup}">
				<li class="fieldcontain">
					<span id="refrigDoorTypeLookup-label" class="property-label"><g:message code="systemRefrigeration.refrigDoorTypeLookup.label" default="Refrig Door Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="refrigDoorTypeLookup-label"><g:link controller="refrigDoorTypeLookup" action="show" id="${systemRefrigerationInstance?.refrigDoorTypeLookup?.id}">${systemRefrigerationInstance?.refrigDoorTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.refrigTypeLookup}">
				<li class="fieldcontain">
					<span id="refrigTypeLookup-label" class="property-label"><g:message code="systemRefrigeration.refrigTypeLookup.label" default="Refrig Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="refrigTypeLookup-label"><g:link controller="refrigTypeLookup" action="show" id="${systemRefrigerationInstance?.refrigTypeLookup?.id}">${systemRefrigerationInstance?.refrigTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemRefrigerationInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemRefrigeration.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemRefrigerationInstance?.system?.id}">${systemRefrigerationInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemRefrigerationInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemRefrigerationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
