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

<%@ page import="gov.doe.seed.EnergyStarApplication" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'energyStarApplication.label', default: 'EnergyStarApplication')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-energyStarApplication" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-energyStarApplication" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list energyStarApplication">
			
				<g:if test="${energyStarApplicationInstance?.eligibility}">
				<li class="fieldcontain">
					<span id="eligibility-label" class="property-label"><g:message code="energyStarApplication.eligibility.label" default="Eligibility" /></span>
					
						<span class="property-value" aria-labelledby="eligibility-label"><g:fieldValue bean="${energyStarApplicationInstance}" field="eligibility"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.spaceUseAlerts}">
				<li class="fieldcontain">
					<span id="spaceUseAlerts-label" class="property-label"><g:message code="energyStarApplication.spaceUseAlerts.label" default="Space Use Alerts" /></span>
					
						<span class="property-value" aria-labelledby="spaceUseAlerts-label"><g:fieldValue bean="${energyStarApplicationInstance}" field="spaceUseAlerts"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.yearLabeled}">
				<li class="fieldcontain">
					<span id="yearLabeled-label" class="property-label"><g:message code="energyStarApplication.yearLabeled.label" default="Year Labeled" /></span>
					
						<span class="property-value" aria-labelledby="yearLabeled-label"><g:fieldValue bean="${energyStarApplicationInstance}" field="yearLabeled"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.approvalDate}">
				<li class="fieldcontain">
					<span id="approvalDate-label" class="property-label"><g:message code="energyStarApplication.approvalDate.label" default="Approval Date" /></span>
					
						<span class="property-value" aria-labelledby="approvalDate-label"><g:formatDate date="${energyStarApplicationInstance?.approvalDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="energyStarApplication.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${energyStarApplicationInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="energyStarApplication.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${energyStarApplicationInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="energyStarApplication.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${energyStarApplicationInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.energyStarAppStatusLookup}">
				<li class="fieldcontain">
					<span id="energyStarAppStatusLookup-label" class="property-label"><g:message code="energyStarApplication.energyStarAppStatusLookup.label" default="Energy Star App Status Lookup" /></span>
					
						<span class="property-value" aria-labelledby="energyStarAppStatusLookup-label"><g:link controller="energyStarAppStatusLookup" action="show" id="${energyStarApplicationInstance?.energyStarAppStatusLookup?.id}">${energyStarApplicationInstance?.energyStarAppStatusLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="energyStarApplication.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${energyStarApplicationInstance?.facility?.id}">${energyStarApplicationInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyStarApplicationInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="energyStarApplication.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${energyStarApplicationInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${energyStarApplicationInstance?.id}" />
					<g:link class="edit" action="edit" id="${energyStarApplicationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
