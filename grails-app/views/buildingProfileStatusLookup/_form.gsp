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
<%@ page import="gov.doe.seed.BuildingProfileStatusLookup" %>



<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'buildingProfileStatus', 'error')} ">
	<label for="buildingProfileStatus">
		<g:message code="buildingProfileStatusLookup.buildingProfileStatus.label" default="Building Profile Status" />
		
	</label>
	<g:textField name="buildingProfileStatus" maxlength="45" value="${buildingProfileStatusLookupInstance?.buildingProfileStatus}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="buildingProfileStatusLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${buildingProfileStatusLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="buildingProfileStatusLookup.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${buildingProfileStatusLookupInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'createdDate', 'error')} ">
	<label for="createdDate">
		<g:message code="buildingProfileStatusLookup.createdDate.label" default="Created Date" />
		
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${buildingProfileStatusLookupInstance?.createdDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="buildingProfileStatusLookup.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${buildingProfileStatusLookupInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="buildingProfileStatusLookup.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${buildingProfileStatusLookupInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: buildingProfileStatusLookupInstance, field: 'facilities', 'error')} ">
	<label for="facilities">
		<g:message code="buildingProfileStatusLookup.facilities.label" default="Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${buildingProfileStatusLookupInstance?.facilities?}" var="f">
    <li><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="facility" action="create" params="['buildingProfileStatusLookup.id': buildingProfileStatusLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'facility.label', default: 'Facility')])}</g:link>
</li>
</ul>

</div>

