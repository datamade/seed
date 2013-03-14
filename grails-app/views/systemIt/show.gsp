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

<%@ page import="gov.doe.seed.SystemIt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemIt.label', default: 'SystemIt')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemIt" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemIt" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemIt">
			
				<g:if test="${systemItInstance?.quantityIt}">
				<li class="fieldcontain">
					<span id="quantityIt-label" class="property-label"><g:message code="systemIt.quantityIt.label" default="Quantity It" /></span>
					
						<span class="property-value" aria-labelledby="quantityIt-label"><g:fieldValue bean="${systemItInstance}" field="quantityIt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemItInstance?.electricalPlugIntensity}">
				<li class="fieldcontain">
					<span id="electricalPlugIntensity-label" class="property-label"><g:message code="systemIt.electricalPlugIntensity.label" default="Electrical Plug Intensity" /></span>
					
						<span class="property-value" aria-labelledby="electricalPlugIntensity-label"><g:fieldValue bean="${systemItInstance}" field="electricalPlugIntensity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemItInstance?.energyStarIt}">
				<li class="fieldcontain">
					<span id="energyStarIt-label" class="property-label"><g:message code="systemIt.energyStarIt.label" default="Energy Star It" /></span>
					
						<span class="property-value" aria-labelledby="energyStarIt-label"><g:formatBoolean boolean="${systemItInstance?.energyStarIt}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemItInstance?.upsRedundancy}">
				<li class="fieldcontain">
					<span id="upsRedundancy-label" class="property-label"><g:message code="systemIt.upsRedundancy.label" default="Ups Redundancy" /></span>
					
						<span class="property-value" aria-labelledby="upsRedundancy-label"><g:formatBoolean boolean="${systemItInstance?.upsRedundancy}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemItInstance?.density}">
				<li class="fieldcontain">
					<span id="density-label" class="property-label"><g:message code="systemIt.density.label" default="Density" /></span>
					
						<span class="property-value" aria-labelledby="density-label"><g:fieldValue bean="${systemItInstance}" field="density"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemItInstance?.itSystemTypeLookup}">
				<li class="fieldcontain">
					<span id="itSystemTypeLookup-label" class="property-label"><g:message code="systemIt.itSystemTypeLookup.label" default="It System Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="itSystemTypeLookup-label"><g:link controller="itSystemTypeLookup" action="show" id="${systemItInstance?.itSystemTypeLookup?.id}">${systemItInstance?.itSystemTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemItInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemIt.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemItInstance?.system?.id}">${systemItInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemItInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemItInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
