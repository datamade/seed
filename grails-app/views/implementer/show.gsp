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

<%@ page import="gov.doe.seed.Implementer" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'implementer.label', default: 'Implementer')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-implementer" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-implementer" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list implementer">
			
				<g:if test="${implementerInstance?.implName}">
				<li class="fieldcontain">
					<span id="implName-label" class="property-label"><g:message code="implementer.implName.label" default="Impl Name" /></span>
					
						<span class="property-value" aria-labelledby="implName-label"><g:fieldValue bean="${implementerInstance}" field="implName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implQualNum}">
				<li class="fieldcontain">
					<span id="implQualNum-label" class="property-label"><g:message code="implementer.implQualNum.label" default="Impl Qual Num" /></span>
					
						<span class="property-value" aria-labelledby="implQualNum-label"><g:fieldValue bean="${implementerInstance}" field="implQualNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implQualState}">
				<li class="fieldcontain">
					<span id="implQualState-label" class="property-label"><g:message code="implementer.implQualState.label" default="Impl Qual State" /></span>
					
						<span class="property-value" aria-labelledby="implQualState-label"><g:fieldValue bean="${implementerInstance}" field="implQualState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implMemCert}">
				<li class="fieldcontain">
					<span id="implMemCert-label" class="property-label"><g:message code="implementer.implMemCert.label" default="Impl Mem Cert" /></span>
					
						<span class="property-value" aria-labelledby="implMemCert-label"><g:fieldValue bean="${implementerInstance}" field="implMemCert"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implCompany}">
				<li class="fieldcontain">
					<span id="implCompany-label" class="property-label"><g:message code="implementer.implCompany.label" default="Impl Company" /></span>
					
						<span class="property-value" aria-labelledby="implCompany-label"><g:fieldValue bean="${implementerInstance}" field="implCompany"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implAddress}">
				<li class="fieldcontain">
					<span id="implAddress-label" class="property-label"><g:message code="implementer.implAddress.label" default="Impl Address" /></span>
					
						<span class="property-value" aria-labelledby="implAddress-label"><g:fieldValue bean="${implementerInstance}" field="implAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implPhone}">
				<li class="fieldcontain">
					<span id="implPhone-label" class="property-label"><g:message code="implementer.implPhone.label" default="Impl Phone" /></span>
					
						<span class="property-value" aria-labelledby="implPhone-label"><g:fieldValue bean="${implementerInstance}" field="implPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implMemberCertLookup}">
				<li class="fieldcontain">
					<span id="implMemberCertLookup-label" class="property-label"><g:message code="implementer.implMemberCertLookup.label" default="Impl Member Cert Lookup" /></span>
					
						<span class="property-value" aria-labelledby="implMemberCertLookup-label"><g:link controller="implMemberCertLookup" action="show" id="${implementerInstance?.implMemberCertLookup?.id}">${implementerInstance?.implMemberCertLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${implementerInstance?.implQualificationLookup}">
				<li class="fieldcontain">
					<span id="implQualificationLookup-label" class="property-label"><g:message code="implementer.implQualificationLookup.label" default="Impl Qualification Lookup" /></span>
					
						<span class="property-value" aria-labelledby="implQualificationLookup-label"><g:link controller="implQualificationLookup" action="show" id="${implementerInstance?.implQualificationLookup?.id}">${implementerInstance?.implQualificationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${implementerInstance?.id}" />
					<g:link class="edit" action="edit" id="${implementerInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
