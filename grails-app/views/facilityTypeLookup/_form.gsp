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
<%@ page import="gov.doe.seed.FacilityTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'facilityType', 'error')} ">
	<label for="facilityType">
		<g:message code="facilityTypeLookup.facilityType.label" default="Facility Type" />
		
	</label>
	<g:textField name="facilityType" maxlength="100" value="${facilityTypeLookupInstance?.facilityType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'facilityTypeDescription', 'error')} ">
	<label for="facilityTypeDescription">
		<g:message code="facilityTypeLookup.facilityTypeDescription.label" default="Facility Type Description" />
		
	</label>
	<g:textField name="facilityTypeDescription" maxlength="100" value="${facilityTypeLookupInstance?.facilityTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="facilityTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${facilityTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="facilityTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${facilityTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="facilityTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${facilityTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'facilities', 'error')} ">
	<label for="facilities">
		<g:message code="facilityTypeLookup.facilities.label" default="Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityTypeLookupInstance?.facilities?}" var="f">
    <li><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="facility" action="create" params="['facilityTypeLookup.id': facilityTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'facility.label', default: 'Facility')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'operatorTypeLookups', 'error')} ">
	<label for="operatorTypeLookups">
		<g:message code="facilityTypeLookup.operatorTypeLookups.label" default="Operator Type Lookups" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityTypeLookupInstance?.operatorTypeLookups?}" var="o">
    <li><g:link controller="operatorTypeLookup" action="show" id="${o.id}">${o?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="operatorTypeLookup" action="create" params="['facilityTypeLookup.id': facilityTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'operatorTypeLookup.label', default: 'OperatorTypeLookup')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="facilityTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${facilityTypeLookupInstance?.updatedDate}"  />
</div>

