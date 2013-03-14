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



<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'certificationRating', 'error')} ">
	<label for="certificationRating">
		<g:message code="certificationRating.certificationRating.label" default="Certification Rating" />
		
	</label>
	<g:textField name="certificationRating" maxlength="45" value="${certificationRatingInstance?.certificationRating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'certificationYear', 'error')} ">
	<label for="certificationYear">
		<g:message code="certificationRating.certificationYear.label" default="Certification Year" />
		
	</label>
	<g:field name="certificationYear" type="number" value="${certificationRatingInstance.certificationYear}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="certificationRating.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${certificationRatingInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="certificationRating.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${certificationRatingInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'buildingCertificationTypeLookup', 'error')} required">
	<label for="buildingCertificationTypeLookup">
		<g:message code="certificationRating.buildingCertificationTypeLookup.label" default="Building Certification Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingCertificationTypeLookup" name="buildingCertificationTypeLookup.id" from="${gov.doe.seed.BuildingCertificationTypeLookup.list()}" optionKey="id" required="" value="${certificationRatingInstance?.buildingCertificationTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="certificationRating.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${certificationRatingInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="certificationRating.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${certificationRatingInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: certificationRatingInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="certificationRating.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${certificationRatingInstance?.updatedDate}"  />
</div>

