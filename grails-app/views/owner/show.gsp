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

<%@ page import="gov.doe.seed.Owner" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'owner.label', default: 'Owner')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-owner" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-owner" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list owner">
			
				<g:if test="${ownerInstance?.ownerName}">
				<li class="fieldcontain">
					<span id="ownerName-label" class="property-label"><g:message code="owner.ownerName.label" default="Owner Name" /></span>
					
						<span class="property-value" aria-labelledby="ownerName-label"><g:fieldValue bean="${ownerInstance}" field="ownerName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.ownerAddress1}">
				<li class="fieldcontain">
					<span id="ownerAddress1-label" class="property-label"><g:message code="owner.ownerAddress1.label" default="Owner Address1" /></span>
					
						<span class="property-value" aria-labelledby="ownerAddress1-label"><g:fieldValue bean="${ownerInstance}" field="ownerAddress1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.ownerAddress2}">
				<li class="fieldcontain">
					<span id="ownerAddress2-label" class="property-label"><g:message code="owner.ownerAddress2.label" default="Owner Address2" /></span>
					
						<span class="property-value" aria-labelledby="ownerAddress2-label"><g:fieldValue bean="${ownerInstance}" field="ownerAddress2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.ownerCity}">
				<li class="fieldcontain">
					<span id="ownerCity-label" class="property-label"><g:message code="owner.ownerCity.label" default="Owner City" /></span>
					
						<span class="property-value" aria-labelledby="ownerCity-label"><g:fieldValue bean="${ownerInstance}" field="ownerCity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.ownerState}">
				<li class="fieldcontain">
					<span id="ownerState-label" class="property-label"><g:message code="owner.ownerState.label" default="Owner State" /></span>
					
						<span class="property-value" aria-labelledby="ownerState-label"><g:fieldValue bean="${ownerInstance}" field="ownerState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.ownerPostalCode}">
				<li class="fieldcontain">
					<span id="ownerPostalCode-label" class="property-label"><g:message code="owner.ownerPostalCode.label" default="Owner Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="ownerPostalCode-label"><g:fieldValue bean="${ownerInstance}" field="ownerPostalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.ownerPhone}">
				<li class="fieldcontain">
					<span id="ownerPhone-label" class="property-label"><g:message code="owner.ownerPhone.label" default="Owner Phone" /></span>
					
						<span class="property-value" aria-labelledby="ownerPhone-label"><g:fieldValue bean="${ownerInstance}" field="ownerPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="owner.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${ownerInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="owner.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${ownerInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="owner.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${ownerInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="owner.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${ownerInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${ownerInstance?.facilities}">
				<li class="fieldcontain">
					<span id="facilities-label" class="property-label"><g:message code="owner.facilities.label" default="Facilities" /></span>
					
						<g:each in="${ownerInstance.facilities}" var="f">
						<span class="property-value" aria-labelledby="facilities-label"><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${ownerInstance?.id}" />
					<g:link class="edit" action="edit" id="${ownerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
