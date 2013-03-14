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
<%@ page import="gov.doe.seed.ConveyanceTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'conveyanceType', 'error')} ">
	<label for="conveyanceType">
		<g:message code="conveyanceTypeLookup.conveyanceType.label" default="Conveyance Type" />
		
	</label>
	<g:textField name="conveyanceType" maxlength="100" value="${conveyanceTypeLookupInstance?.conveyanceType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="conveyanceTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${conveyanceTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="conveyanceTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${conveyanceTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="conveyanceTypeLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${conveyanceTypeLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="conveyanceTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${conveyanceTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'systemConveyances', 'error')} ">
	<label for="systemConveyances">
		<g:message code="conveyanceTypeLookup.systemConveyances.label" default="System Conveyances" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${conveyanceTypeLookupInstance?.systemConveyances?}" var="s">
    <li><g:link controller="systemConveyance" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemConveyance" action="create" params="['conveyanceTypeLookup.id': conveyanceTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemConveyance.label', default: 'SystemConveyance')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: conveyanceTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="conveyanceTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${conveyanceTypeLookupInstance?.updatedDate}"  />
</div>

