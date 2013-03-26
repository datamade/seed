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

<%@ page import="gov.doe.seed.SystemLaundry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemLaundry.label', default: 'SystemLaundry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemLaundry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemLaundry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemLaundry">
			
				<g:if test="${systemLaundryInstance?.yearOfManuLaundry}">
				<li class="fieldcontain">
					<span id="yearOfManuLaundry-label" class="property-label"><g:message code="systemLaundry.yearOfManuLaundry.label" default="Year Of Manu Laundry" /></span>
					
						<span class="property-value" aria-labelledby="yearOfManuLaundry-label"><g:fieldValue bean="${systemLaundryInstance}" field="yearOfManuLaundry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLaundryInstance?.energyStarLaundry}">
				<li class="fieldcontain">
					<span id="energyStarLaundry-label" class="property-label"><g:message code="systemLaundry.energyStarLaundry.label" default="Energy Star Laundry" /></span>
					
						<span class="property-value" aria-labelledby="energyStarLaundry-label"><g:formatBoolean boolean="${systemLaundryInstance?.energyStarLaundry}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLaundryInstance?.quantityLaundry}">
				<li class="fieldcontain">
					<span id="quantityLaundry-label" class="property-label"><g:message code="systemLaundry.quantityLaundry.label" default="Quantity Laundry" /></span>
					
						<span class="property-value" aria-labelledby="quantityLaundry-label"><g:fieldValue bean="${systemLaundryInstance}" field="quantityLaundry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLaundryInstance?.fuelTypeLookup}">
				<li class="fieldcontain">
					<span id="fuelTypeLookup-label" class="property-label"><g:message code="systemLaundry.fuelTypeLookup.label" default="Fuel Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="fuelTypeLookup-label"><g:link controller="fuelTypeLookup" action="show" id="${systemLaundryInstance?.fuelTypeLookup?.id}">${systemLaundryInstance?.fuelTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLaundryInstance?.laundryTypeLookup}">
				<li class="fieldcontain">
					<span id="laundryTypeLookup-label" class="property-label"><g:message code="systemLaundry.laundryTypeLookup.label" default="Laundry Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="laundryTypeLookup-label"><g:link controller="laundryTypeLookup" action="show" id="${systemLaundryInstance?.laundryTypeLookup?.id}">${systemLaundryInstance?.laundryTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemLaundryInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemLaundry.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemLaundryInstance?.system?.id}">${systemLaundryInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemLaundryInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemLaundryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
