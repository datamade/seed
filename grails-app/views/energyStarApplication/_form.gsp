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
<%@ page import="gov.doe.seed.EnergyStarApplication" %>



<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'eligibility', 'error')} ">
	<label for="eligibility">
		<g:message code="energyStarApplication.eligibility.label" default="Eligibility" />
		
	</label>
	<g:textField name="eligibility" maxlength="100" value="${energyStarApplicationInstance?.eligibility}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'spaceUseAlerts', 'error')} ">
	<label for="spaceUseAlerts">
		<g:message code="energyStarApplication.spaceUseAlerts.label" default="Space Use Alerts" />
		
	</label>
	<g:textField name="spaceUseAlerts" maxlength="250" value="${energyStarApplicationInstance?.spaceUseAlerts}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'yearLabeled', 'error')} ">
	<label for="yearLabeled">
		<g:message code="energyStarApplication.yearLabeled.label" default="Year Labeled" />
		
	</label>
	<g:field name="yearLabeled" type="number" value="${energyStarApplicationInstance.yearLabeled}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'approvalDate', 'error')} ">
	<label for="approvalDate">
		<g:message code="energyStarApplication.approvalDate.label" default="Approval Date" />
		
	</label>
	<g:datePicker name="approvalDate" precision="day"  value="${energyStarApplicationInstance?.approvalDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="energyStarApplication.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${energyStarApplicationInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="energyStarApplication.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${energyStarApplicationInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="energyStarApplication.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${energyStarApplicationInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'energyStarAppStatusLookup', 'error')} required">
	<label for="energyStarAppStatusLookup">
		<g:message code="energyStarApplication.energyStarAppStatusLookup.label" default="Energy Star App Status Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="energyStarAppStatusLookup" name="energyStarAppStatusLookup.id" from="${gov.doe.seed.EnergyStarAppStatusLookup.list()}" optionKey="id" required="" value="${energyStarApplicationInstance?.energyStarAppStatusLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="energyStarApplication.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${energyStarApplicationInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyStarApplicationInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="energyStarApplication.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${energyStarApplicationInstance?.updatedDate}"  />
</div>

