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

<%@ page import="gov.doe.seed.PropertyManagement" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propertyManagement.label', default: 'PropertyManagement')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-propertyManagement" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-propertyManagement" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list propertyManagement">
			
				<g:if test="${propertyManagementInstance?.propertyManagementContact}">
				<li class="fieldcontain">
					<span id="propertyManagementContact-label" class="property-label"><g:message code="propertyManagement.propertyManagementContact.label" default="Property Management Contact" /></span>
					
						<span class="property-value" aria-labelledby="propertyManagementContact-label"><g:fieldValue bean="${propertyManagementInstance}" field="propertyManagementContact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.propertyManagementAddress}">
				<li class="fieldcontain">
					<span id="propertyManagementAddress-label" class="property-label"><g:message code="propertyManagement.propertyManagementAddress.label" default="Property Management Address" /></span>
					
						<span class="property-value" aria-labelledby="propertyManagementAddress-label"><g:fieldValue bean="${propertyManagementInstance}" field="propertyManagementAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.propertyManagementEmail}">
				<li class="fieldcontain">
					<span id="propertyManagementEmail-label" class="property-label"><g:message code="propertyManagement.propertyManagementEmail.label" default="Property Management Email" /></span>
					
						<span class="property-value" aria-labelledby="propertyManagementEmail-label"><g:fieldValue bean="${propertyManagementInstance}" field="propertyManagementEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.propertyManagementPhone}">
				<li class="fieldcontain">
					<span id="propertyManagementPhone-label" class="property-label"><g:message code="propertyManagement.propertyManagementPhone.label" default="Property Management Phone" /></span>
					
						<span class="property-value" aria-labelledby="propertyManagementPhone-label"><g:fieldValue bean="${propertyManagementInstance}" field="propertyManagementPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.propertyManagementCompany}">
				<li class="fieldcontain">
					<span id="propertyManagementCompany-label" class="property-label"><g:message code="propertyManagement.propertyManagementCompany.label" default="Property Management Company" /></span>
					
						<span class="property-value" aria-labelledby="propertyManagementCompany-label"><g:fieldValue bean="${propertyManagementInstance}" field="propertyManagementCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="propertyManagement.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${propertyManagementInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="propertyManagement.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${propertyManagementInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="propertyManagement.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${propertyManagementInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="propertyManagement.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${propertyManagementInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${propertyManagementInstance?.facilities}">
				<li class="fieldcontain">
					<span id="facilities-label" class="property-label"><g:message code="propertyManagement.facilities.label" default="Facilities" /></span>
					
						<g:each in="${propertyManagementInstance.facilities}" var="f">
						<span class="property-value" aria-labelledby="facilities-label"><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${propertyManagementInstance?.id}" />
					<g:link class="edit" action="edit" id="${propertyManagementInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
