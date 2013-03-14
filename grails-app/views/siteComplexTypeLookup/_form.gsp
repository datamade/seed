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
<%@ page import="gov.doe.seed.SiteComplexTypeLookup" %>



<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'siteComplexType', 'error')} ">
	<label for="siteComplexType">
		<g:message code="siteComplexTypeLookup.siteComplexType.label" default="Site Complex Type" />
		
	</label>
	<g:textField name="siteComplexType" maxlength="100" value="${siteComplexTypeLookupInstance?.siteComplexType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'siteComplexTypeDescription', 'error')} ">
	<label for="siteComplexTypeDescription">
		<g:message code="siteComplexTypeLookup.siteComplexTypeDescription.label" default="Site Complex Type Description" />
		
	</label>
	<g:textField name="siteComplexTypeDescription" maxlength="100" value="${siteComplexTypeLookupInstance?.siteComplexTypeDescription}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="siteComplexTypeLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${siteComplexTypeLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="siteComplexTypeLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${siteComplexTypeLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="siteComplexTypeLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${siteComplexTypeLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="siteComplexTypeLookup.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${siteComplexTypeLookupInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'sites', 'error')} ">
	<label for="sites">
		<g:message code="siteComplexTypeLookup.sites.label" default="Sites" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${siteComplexTypeLookupInstance?.sites?}" var="s">
    <li><g:link controller="site" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="site" action="create" params="['siteComplexTypeLookup.id': siteComplexTypeLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'site.label', default: 'Site')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: siteComplexTypeLookupInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="siteComplexTypeLookup.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${siteComplexTypeLookupInstance?.updatedDate}"  />
</div>

