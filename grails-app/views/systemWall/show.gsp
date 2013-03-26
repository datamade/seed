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

<%@ page import="gov.doe.seed.SystemWall" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemWall.label', default: 'SystemWall')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemWall" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemWall" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemWall">
			
				<g:if test="${systemWallInstance?.wallRValue}">
				<li class="fieldcontain">
					<span id="wallRValue-label" class="property-label"><g:message code="systemWall.wallRValue.label" default="Wall RV alue" /></span>
					
						<span class="property-value" aria-labelledby="wallRValue-label"><g:fieldValue bean="${systemWallInstance}" field="wallRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.percTotWallArea}">
				<li class="fieldcontain">
					<span id="percTotWallArea-label" class="property-label"><g:message code="systemWall.percTotWallArea.label" default="Perc Tot Wall Area" /></span>
					
						<span class="property-value" aria-labelledby="percTotWallArea-label"><g:fieldValue bean="${systemWallInstance}" field="percTotWallArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.wallInsulationThickness}">
				<li class="fieldcontain">
					<span id="wallInsulationThickness-label" class="property-label"><g:message code="systemWall.wallInsulationThickness.label" default="Wall Insulation Thickness" /></span>
					
						<span class="property-value" aria-labelledby="wallInsulationThickness-label"><g:fieldValue bean="${systemWallInstance}" field="wallInsulationThickness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.basementWallInsulThickness}">
				<li class="fieldcontain">
					<span id="basementWallInsulThickness-label" class="property-label"><g:message code="systemWall.basementWallInsulThickness.label" default="Basement Wall Insul Thickness" /></span>
					
						<span class="property-value" aria-labelledby="basementWallInsulThickness-label"><g:fieldValue bean="${systemWallInstance}" field="basementWallInsulThickness"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.wallArea}">
				<li class="fieldcontain">
					<span id="wallArea-label" class="property-label"><g:message code="systemWall.wallArea.label" default="Wall Area" /></span>
					
						<span class="property-value" aria-labelledby="wallArea-label"><g:fieldValue bean="${systemWallInstance}" field="wallArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.extWallColorLookup}">
				<li class="fieldcontain">
					<span id="extWallColorLookup-label" class="property-label"><g:message code="systemWall.extWallColorLookup.label" default="Ext Wall Color Lookup" /></span>
					
						<span class="property-value" aria-labelledby="extWallColorLookup-label"><g:link controller="extWallColorLookup" action="show" id="${systemWallInstance?.extWallColorLookup?.id}">${systemWallInstance?.extWallColorLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.extWallTypeLookup}">
				<li class="fieldcontain">
					<span id="extWallTypeLookup-label" class="property-label"><g:message code="systemWall.extWallTypeLookup.label" default="Ext Wall Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="extWallTypeLookup-label"><g:link controller="extWallTypeLookup" action="show" id="${systemWallInstance?.extWallTypeLookup?.id}">${systemWallInstance?.extWallTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemWall.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemWallInstance?.system?.id}">${systemWallInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.wallInsulationTypeLookup}">
				<li class="fieldcontain">
					<span id="wallInsulationTypeLookup-label" class="property-label"><g:message code="systemWall.wallInsulationTypeLookup.label" default="Wall Insulation Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="wallInsulationTypeLookup-label"><g:link controller="wallInsulationTypeLookup" action="show" id="${systemWallInstance?.wallInsulationTypeLookup?.id}">${systemWallInstance?.wallInsulationTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemWallInstance?.wallTightnessLookup}">
				<li class="fieldcontain">
					<span id="wallTightnessLookup-label" class="property-label"><g:message code="systemWall.wallTightnessLookup.label" default="Wall Tightness Lookup" /></span>
					
						<span class="property-value" aria-labelledby="wallTightnessLookup-label"><g:link controller="wallTightnessLookup" action="show" id="${systemWallInstance?.wallTightnessLookup?.id}">${systemWallInstance?.wallTightnessLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemWallInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemWallInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
