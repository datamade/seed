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

<%@ page import="gov.doe.seed.FootprintShapeLookup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'footprintShapeLookup.label', default: 'FootprintShapeLookup')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-footprintShapeLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-footprintShapeLookup" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list footprintShapeLookup">
			
				<g:if test="${footprintShapeLookupInstance?.footprintShapeType}">
				<li class="fieldcontain">
					<span id="footprintShapeType-label" class="property-label"><g:message code="footprintShapeLookup.footprintShapeType.label" default="Footprint Shape Type" /></span>
					
						<span class="property-value" aria-labelledby="footprintShapeType-label"><g:fieldValue bean="${footprintShapeLookupInstance}" field="footprintShapeType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${footprintShapeLookupInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="footprintShapeLookup.sortOrder.label" default="Sort Order" /></span>
					
						<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${footprintShapeLookupInstance}" field="sortOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${footprintShapeLookupInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="footprintShapeLookup.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${footprintShapeLookupInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${footprintShapeLookupInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="footprintShapeLookup.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${footprintShapeLookupInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${footprintShapeLookupInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="footprintShapeLookup.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${footprintShapeLookupInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${footprintShapeLookupInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="footprintShapeLookup.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${footprintShapeLookupInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${footprintShapeLookupInstance?.facilities}">
				<li class="fieldcontain">
					<span id="facilities-label" class="property-label"><g:message code="footprintShapeLookup.facilities.label" default="Facilities" /></span>
					
						<g:each in="${footprintShapeLookupInstance.facilities}" var="f">
						<span class="property-value" aria-labelledby="facilities-label"><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${footprintShapeLookupInstance?.id}" />
					<g:link class="edit" action="edit" id="${footprintShapeLookupInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
