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

<%@ page import="gov.doe.seed.Audit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'audit.label', default: 'Audit')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-audit" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-audit" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list audit">
			
				<g:if test="${auditInstance?.auditDate}">
				<li class="fieldcontain">
					<span id="auditDate-label" class="property-label"><g:message code="audit.auditDate.label" default="Audit Date" /></span>
					
						<span class="property-value" aria-labelledby="auditDate-label"><g:formatDate date="${auditInstance?.auditDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorName}">
				<li class="fieldcontain">
					<span id="auditorName-label" class="property-label"><g:message code="audit.auditorName.label" default="Auditor Name" /></span>
					
						<span class="property-value" aria-labelledby="auditorName-label"><g:fieldValue bean="${auditInstance}" field="auditorName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorQualNum}">
				<li class="fieldcontain">
					<span id="auditorQualNum-label" class="property-label"><g:message code="audit.auditorQualNum.label" default="Auditor Qual Num" /></span>
					
						<span class="property-value" aria-labelledby="auditorQualNum-label"><g:fieldValue bean="${auditInstance}" field="auditorQualNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorQualState}">
				<li class="fieldcontain">
					<span id="auditorQualState-label" class="property-label"><g:message code="audit.auditorQualState.label" default="Auditor Qual State" /></span>
					
						<span class="property-value" aria-labelledby="auditorQualState-label"><g:fieldValue bean="${auditInstance}" field="auditorQualState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorMemCert}">
				<li class="fieldcontain">
					<span id="auditorMemCert-label" class="property-label"><g:message code="audit.auditorMemCert.label" default="Auditor Mem Cert" /></span>
					
						<span class="property-value" aria-labelledby="auditorMemCert-label"><g:fieldValue bean="${auditInstance}" field="auditorMemCert"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorCompanyName}">
				<li class="fieldcontain">
					<span id="auditorCompanyName-label" class="property-label"><g:message code="audit.auditorCompanyName.label" default="Auditor Company Name" /></span>
					
						<span class="property-value" aria-labelledby="auditorCompanyName-label"><g:fieldValue bean="${auditInstance}" field="auditorCompanyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorAddress}">
				<li class="fieldcontain">
					<span id="auditorAddress-label" class="property-label"><g:message code="audit.auditorAddress.label" default="Auditor Address" /></span>
					
						<span class="property-value" aria-labelledby="auditorAddress-label"><g:fieldValue bean="${auditInstance}" field="auditorAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorPhone}">
				<li class="fieldcontain">
					<span id="auditorPhone-label" class="property-label"><g:message code="audit.auditorPhone.label" default="Auditor Phone" /></span>
					
						<span class="property-value" aria-labelledby="auditorPhone-label"><g:fieldValue bean="${auditInstance}" field="auditorPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorEmail}">
				<li class="fieldcontain">
					<span id="auditorEmail-label" class="property-label"><g:message code="audit.auditorEmail.label" default="Auditor Email" /></span>
					
						<span class="property-value" aria-labelledby="auditorEmail-label"><g:fieldValue bean="${auditInstance}" field="auditorEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditId}">
				<li class="fieldcontain">
					<span id="auditId-label" class="property-label"><g:message code="audit.auditId.label" default="Audit Id" /></span>
					
						<span class="property-value" aria-labelledby="auditId-label"><g:fieldValue bean="${auditInstance}" field="auditId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="audit.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${auditInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="audit.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${auditInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorMemCertLookup}">
				<li class="fieldcontain">
					<span id="auditorMemCertLookup-label" class="property-label"><g:message code="audit.auditorMemCertLookup.label" default="Auditor Mem Cert Lookup" /></span>
					
						<span class="property-value" aria-labelledby="auditorMemCertLookup-label"><g:link controller="auditorMemCertLookup" action="show" id="${auditInstance?.auditorMemCertLookup?.id}">${auditInstance?.auditorMemCertLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.auditorQualLookup}">
				<li class="fieldcontain">
					<span id="auditorQualLookup-label" class="property-label"><g:message code="audit.auditorQualLookup.label" default="Auditor Qual Lookup" /></span>
					
						<span class="property-value" aria-labelledby="auditorQualLookup-label"><g:link controller="auditorQualLookup" action="show" id="${auditInstance?.auditorQualLookup?.id}">${auditInstance?.auditorQualLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="audit.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${auditInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.energyEfficiencyMeasure}">
				<li class="fieldcontain">
					<span id="energyEfficiencyMeasure-label" class="property-label"><g:message code="audit.energyEfficiencyMeasure.label" default="Energy Efficiency Measure" /></span>
					
						<span class="property-value" aria-labelledby="energyEfficiencyMeasure-label"><g:link controller="energyEfficiencyMeasure" action="show" id="${auditInstance?.energyEfficiencyMeasure?.id}">${auditInstance?.energyEfficiencyMeasure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="audit.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${auditInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${auditInstance?.id}" />
					<g:link class="edit" action="edit" id="${auditInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
