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

<%@ page import="gov.doe.seed.SystemFoundation" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemFoundation.label', default: 'SystemFoundation')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemFoundation" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemFoundation" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemFoundation">
			
				<g:if test="${systemFoundationInstance?.perimeterInsulated}">
				<li class="fieldcontain">
					<span id="perimeterInsulated-label" class="property-label"><g:message code="systemFoundation.perimeterInsulated.label" default="Perimeter Insulated" /></span>
					
						<span class="property-value" aria-labelledby="perimeterInsulated-label"><g:formatBoolean boolean="${systemFoundationInstance?.perimeterInsulated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.floorInsulationThickness}">
				<li class="fieldcontain">
					<span id="floorInsulationThickness-label" class="property-label"><g:message code="systemFoundation.floorInsulationThickness.label" default="Floor Insulation Thickness" /></span>
					
						<span class="property-value" aria-labelledby="floorInsulationThickness-label"><g:fieldValue bean="${systemFoundationInstance}" field="floorInsulationThickness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.floorRValue}">
				<li class="fieldcontain">
					<span id="floorRValue-label" class="property-label"><g:message code="systemFoundation.floorRValue.label" default="Floor RV alue" /></span>
					
						<span class="property-value" aria-labelledby="floorRValue-label"><g:fieldValue bean="${systemFoundationInstance}" field="floorRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.carpet}">
				<li class="fieldcontain">
					<span id="carpet-label" class="property-label"><g:message code="systemFoundation.carpet.label" default="Carpet" /></span>
					
						<span class="property-value" aria-labelledby="carpet-label"><g:formatBoolean boolean="${systemFoundationInstance?.carpet}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.plumbingSealing}">
				<li class="fieldcontain">
					<span id="plumbingSealing-label" class="property-label"><g:message code="systemFoundation.plumbingSealing.label" default="Plumbing Sealing" /></span>
					
						<span class="property-value" aria-labelledby="plumbingSealing-label"><g:formatBoolean boolean="${systemFoundationInstance?.plumbingSealing}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.floorTypeLookup}">
				<li class="fieldcontain">
					<span id="floorTypeLookup-label" class="property-label"><g:message code="systemFoundation.floorTypeLookup.label" default="Floor Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="floorTypeLookup-label"><g:link controller="floorTypeLookup" action="show" id="${systemFoundationInstance?.floorTypeLookup?.id}">${systemFoundationInstance?.floorTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.groundCouplingLookup}">
				<li class="fieldcontain">
					<span id="groundCouplingLookup-label" class="property-label"><g:message code="systemFoundation.groundCouplingLookup.label" default="Ground Coupling Lookup" /></span>
					
						<span class="property-value" aria-labelledby="groundCouplingLookup-label"><g:link controller="groundCouplingLookup" action="show" id="${systemFoundationInstance?.groundCouplingLookup?.id}">${systemFoundationInstance?.groundCouplingLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFoundationInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemFoundation.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemFoundationInstance?.system?.id}">${systemFoundationInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemFoundationInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemFoundationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
