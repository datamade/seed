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

<%@ page import="gov.doe.seed.CertificationRating" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'certificationRating.label', default: 'CertificationRating')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-certificationRating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-certificationRating" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list certificationRating">
			
				<g:if test="${certificationRatingInstance?.certificationRating}">
				<li class="fieldcontain">
					<span id="certificationRating-label" class="property-label"><g:message code="certificationRating.certificationRating.label" default="Certification Rating" /></span>
					
						<span class="property-value" aria-labelledby="certificationRating-label"><g:fieldValue bean="${certificationRatingInstance}" field="certificationRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.certificationYear}">
				<li class="fieldcontain">
					<span id="certificationYear-label" class="property-label"><g:message code="certificationRating.certificationYear.label" default="Certification Year" /></span>
					
						<span class="property-value" aria-labelledby="certificationYear-label"><g:fieldValue bean="${certificationRatingInstance}" field="certificationYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="certificationRating.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${certificationRatingInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="certificationRating.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${certificationRatingInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.buildingCertificationTypeLookup}">
				<li class="fieldcontain">
					<span id="buildingCertificationTypeLookup-label" class="property-label"><g:message code="certificationRating.buildingCertificationTypeLookup.label" default="Building Certification Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="buildingCertificationTypeLookup-label"><g:link controller="buildingCertificationTypeLookup" action="show" id="${certificationRatingInstance?.buildingCertificationTypeLookup?.id}">${certificationRatingInstance?.buildingCertificationTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="certificationRating.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${certificationRatingInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="certificationRating.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${certificationRatingInstance?.facility?.id}">${certificationRatingInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${certificationRatingInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="certificationRating.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${certificationRatingInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${certificationRatingInstance?.id}" />
					<g:link class="edit" action="edit" id="${certificationRatingInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
