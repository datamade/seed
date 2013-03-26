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

<%@ page import="org.codehaus.groovy.grails.plugins.orm.auditable.AuditLogEvent" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'auditLogEvent.label', default: 'AuditLogEvent')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-auditLogEvent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-auditLogEvent" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list auditLogEvent">
			
				<g:if test="${auditLogEventInstance?.actor}">
				<li class="fieldcontain">
					<span id="actor-label" class="property-label"><g:message code="auditLogEvent.actor.label" default="Actor" /></span>
					
						<span class="property-value" aria-labelledby="actor-label"><g:fieldValue bean="${auditLogEventInstance}" field="actor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.uri}">
				<li class="fieldcontain">
					<span id="uri-label" class="property-label"><g:message code="auditLogEvent.uri.label" default="Uri" /></span>
					
						<span class="property-value" aria-labelledby="uri-label"><g:fieldValue bean="${auditLogEventInstance}" field="uri"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.className}">
				<li class="fieldcontain">
					<span id="className-label" class="property-label"><g:message code="auditLogEvent.className.label" default="Class Name" /></span>
					
						<span class="property-value" aria-labelledby="className-label"><g:fieldValue bean="${auditLogEventInstance}" field="className"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.persistedObjectId}">
				<li class="fieldcontain">
					<span id="persistedObjectId-label" class="property-label"><g:message code="auditLogEvent.persistedObjectId.label" default="Persisted Object Id" /></span>
					
						<span class="property-value" aria-labelledby="persistedObjectId-label"><g:fieldValue bean="${auditLogEventInstance}" field="persistedObjectId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.persistedObjectVersion}">
				<li class="fieldcontain">
					<span id="persistedObjectVersion-label" class="property-label"><g:message code="auditLogEvent.persistedObjectVersion.label" default="Persisted Object Version" /></span>
					
						<span class="property-value" aria-labelledby="persistedObjectVersion-label"><g:fieldValue bean="${auditLogEventInstance}" field="persistedObjectVersion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.eventName}">
				<li class="fieldcontain">
					<span id="eventName-label" class="property-label"><g:message code="auditLogEvent.eventName.label" default="Event Name" /></span>
					
						<span class="property-value" aria-labelledby="eventName-label"><g:fieldValue bean="${auditLogEventInstance}" field="eventName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.propertyName}">
				<li class="fieldcontain">
					<span id="propertyName-label" class="property-label"><g:message code="auditLogEvent.propertyName.label" default="Property Name" /></span>
					
						<span class="property-value" aria-labelledby="propertyName-label"><g:fieldValue bean="${auditLogEventInstance}" field="propertyName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.oldValue}">
				<li class="fieldcontain">
					<span id="oldValue-label" class="property-label"><g:message code="auditLogEvent.oldValue.label" default="Old Value" /></span>
					
						<span class="property-value" aria-labelledby="oldValue-label"><g:fieldValue bean="${auditLogEventInstance}" field="oldValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.newValue}">
				<li class="fieldcontain">
					<span id="newValue-label" class="property-label"><g:message code="auditLogEvent.newValue.label" default="New Value" /></span>
					
						<span class="property-value" aria-labelledby="newValue-label"><g:fieldValue bean="${auditLogEventInstance}" field="newValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="auditLogEvent.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${auditLogEventInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${auditLogEventInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="auditLogEvent.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${auditLogEventInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${auditLogEventInstance?.id}" />
					<g:link class="edit" action="edit" id="${auditLogEventInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
