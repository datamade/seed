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



<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'actor', 'error')} ">
	<label for="actor">
		<g:message code="auditLogEvent.actor.label" default="Actor" />
		
	</label>
	<g:textField name="actor" value="${auditLogEventInstance?.actor}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'uri', 'error')} ">
	<label for="uri">
		<g:message code="auditLogEvent.uri.label" default="Uri" />
		
	</label>
	<g:textField name="uri" value="${auditLogEventInstance?.uri}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'className', 'error')} ">
	<label for="className">
		<g:message code="auditLogEvent.className.label" default="Class Name" />
		
	</label>
	<g:textField name="className" value="${auditLogEventInstance?.className}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'persistedObjectId', 'error')} ">
	<label for="persistedObjectId">
		<g:message code="auditLogEvent.persistedObjectId.label" default="Persisted Object Id" />
		
	</label>
	<g:textField name="persistedObjectId" value="${auditLogEventInstance?.persistedObjectId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'persistedObjectVersion', 'error')} ">
	<label for="persistedObjectVersion">
		<g:message code="auditLogEvent.persistedObjectVersion.label" default="Persisted Object Version" />
		
	</label>
	<g:field name="persistedObjectVersion" type="number" value="${auditLogEventInstance.persistedObjectVersion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="auditLogEvent.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${auditLogEventInstance?.eventName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'propertyName', 'error')} ">
	<label for="propertyName">
		<g:message code="auditLogEvent.propertyName.label" default="Property Name" />
		
	</label>
	<g:textField name="propertyName" value="${auditLogEventInstance?.propertyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'oldValue', 'error')} ">
	<label for="oldValue">
		<g:message code="auditLogEvent.oldValue.label" default="Old Value" />
		
	</label>
	<g:textField name="oldValue" value="${auditLogEventInstance?.oldValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditLogEventInstance, field: 'newValue', 'error')} ">
	<label for="newValue">
		<g:message code="auditLogEvent.newValue.label" default="New Value" />
		
	</label>
	<g:textField name="newValue" value="${auditLogEventInstance?.newValue}"/>
</div>

