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
<%@ page import="gov.doe.seed.BuildingOperCertLookup" %>



<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'buildingOperatorCertificationType', 'error')} ">
	<label for="buildingOperatorCertificationType">
		<g:message code="buildingOperCertLookup.buildingOperatorCertificationType.label" default="Building Operator Certification Type" />
		
	</label>
	<g:textField name="buildingOperatorCertificationType" maxlength="100" value="${buildingOperCertLookupInstance?.buildingOperatorCertificationType}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="buildingOperCertLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" value="${buildingOperCertLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="buildingOperCertLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${buildingOperCertLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="buildingOperCertLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" value="${buildingOperCertLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="buildingOperCertLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${buildingOperCertLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="buildingOperCertLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${buildingOperCertLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingOperCertLookupInstance, field: 'commercialFacilities', 'error')} ">
	<label for="commercialFacilities">
		<g:message code="buildingOperCertLookup.commercialFacilities.label" default="Commercial Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingOperCertLookupInstance?.commercialFacilities?}" var="c">
    <li><g:link controller="commercialFacility" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commercialFacility" action="create" params="['buildingOperCertLookup.id': buildingOperCertLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commercialFacility.label', default: 'CommercialFacility')])}</g:link>
</li>
</ul>

</div>

