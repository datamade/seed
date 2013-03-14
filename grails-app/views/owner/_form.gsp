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



<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerName', 'error')} ">
	<label for="ownerName">
		<g:message code="owner.ownerName.label" default="Owner Name" />
		
	</label>
	<g:textField name="ownerName" maxlength="45" value="${ownerInstance?.ownerName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerAddress1', 'error')} ">
	<label for="ownerAddress1">
		<g:message code="owner.ownerAddress1.label" default="Owner Address1" />
		
	</label>
	<g:textField name="ownerAddress1" maxlength="100" value="${ownerInstance?.ownerAddress1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerAddress2', 'error')} ">
	<label for="ownerAddress2">
		<g:message code="owner.ownerAddress2.label" default="Owner Address2" />
		
	</label>
	<g:textField name="ownerAddress2" maxlength="100" value="${ownerInstance?.ownerAddress2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerCity', 'error')} ">
	<label for="ownerCity">
		<g:message code="owner.ownerCity.label" default="Owner City" />
		
	</label>
	<g:textField name="ownerCity" maxlength="45" value="${ownerInstance?.ownerCity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerState', 'error')} ">
	<label for="ownerState">
		<g:message code="owner.ownerState.label" default="Owner State" />
		
	</label>
	<g:textField name="ownerState" maxlength="45" value="${ownerInstance?.ownerState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerPostalCode', 'error')} ">
	<label for="ownerPostalCode">
		<g:message code="owner.ownerPostalCode.label" default="Owner Postal Code" />
		
	</label>
	<g:textField name="ownerPostalCode" maxlength="45" value="${ownerInstance?.ownerPostalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'ownerPhone', 'error')} ">
	<label for="ownerPhone">
		<g:message code="owner.ownerPhone.label" default="Owner Phone" />
		
	</label>
	<g:textField name="ownerPhone" maxlength="45" value="${ownerInstance?.ownerPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="owner.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${ownerInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="owner.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${ownerInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="owner.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${ownerInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="owner.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${ownerInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: ownerInstance, field: 'facilities', 'error')} ">
	<label for="facilities">
		<g:message code="owner.facilities.label" default="Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${ownerInstance?.facilities?}" var="f">
    <li><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="facility" action="create" params="['owner.id': ownerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'facility.label', default: 'Facility')])}</g:link>
</li>
</ul>

</div>

