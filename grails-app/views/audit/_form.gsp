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
<%@ page import="gov.doe.seed.Audit" %>



<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditDate', 'error')} ">
	<label for="auditDate">
		<g:message code="audit.auditDate.label" default="Audit Date" />
		
	</label>
	<g:datePicker name="auditDate" precision="day"  value="${auditInstance?.auditDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorName', 'error')} ">
	<label for="auditorName">
		<g:message code="audit.auditorName.label" default="Auditor Name" />
		
	</label>
	<g:textField name="auditorName" maxlength="100" value="${auditInstance?.auditorName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorQualNum', 'error')} ">
	<label for="auditorQualNum">
		<g:message code="audit.auditorQualNum.label" default="Auditor Qual Num" />
		
	</label>
	<g:textField name="auditorQualNum" maxlength="45" value="${auditInstance?.auditorQualNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorQualState', 'error')} ">
	<label for="auditorQualState">
		<g:message code="audit.auditorQualState.label" default="Auditor Qual State" />
		
	</label>
	<g:textField name="auditorQualState" maxlength="45" value="${auditInstance?.auditorQualState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorMemCert', 'error')} ">
	<label for="auditorMemCert">
		<g:message code="audit.auditorMemCert.label" default="Auditor Mem Cert" />
		
	</label>
	<g:textField name="auditorMemCert" maxlength="45" value="${auditInstance?.auditorMemCert}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorCompanyName', 'error')} ">
	<label for="auditorCompanyName">
		<g:message code="audit.auditorCompanyName.label" default="Auditor Company Name" />
		
	</label>
	<g:textField name="auditorCompanyName" maxlength="100" value="${auditInstance?.auditorCompanyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorAddress', 'error')} ">
	<label for="auditorAddress">
		<g:message code="audit.auditorAddress.label" default="Auditor Address" />
		
	</label>
	<g:textField name="auditorAddress" maxlength="45" value="${auditInstance?.auditorAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorPhone', 'error')} ">
	<label for="auditorPhone">
		<g:message code="audit.auditorPhone.label" default="Auditor Phone" />
		
	</label>
	<g:textField name="auditorPhone" maxlength="45" value="${auditInstance?.auditorPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorEmail', 'error')} ">
	<label for="auditorEmail">
		<g:message code="audit.auditorEmail.label" default="Auditor Email" />
		
	</label>
	<g:textField name="auditorEmail" maxlength="45" value="${auditInstance?.auditorEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditId', 'error')} ">
	<label for="auditId">
		<g:message code="audit.auditId.label" default="Audit Id" />
		
	</label>
	<g:textField name="auditId" maxlength="45" value="${auditInstance?.auditId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="audit.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${auditInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="audit.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${auditInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorMemCertLookup', 'error')} required">
	<label for="auditorMemCertLookup">
		<g:message code="audit.auditorMemCertLookup.label" default="Auditor Mem Cert Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="auditorMemCertLookup" name="auditorMemCertLookup.id" from="${gov.doe.seed.AuditorMemCertLookup.list()}" optionKey="id" required="" value="${auditInstance?.auditorMemCertLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'auditorQualLookup', 'error')} required">
	<label for="auditorQualLookup">
		<g:message code="audit.auditorQualLookup.label" default="Auditor Qual Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="auditorQualLookup" name="auditorQualLookup.id" from="${gov.doe.seed.AuditorQualLookup.list()}" optionKey="id" required="" value="${auditInstance?.auditorQualLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="audit.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${auditInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'energyEfficiencyMeasure', 'error')} required">
	<label for="energyEfficiencyMeasure">
		<g:message code="audit.energyEfficiencyMeasure.label" default="Energy Efficiency Measure" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="energyEfficiencyMeasure" name="energyEfficiencyMeasure.id" from="${gov.doe.seed.EnergyEfficiencyMeasure.list()}" optionKey="id" required="" value="${auditInstance?.energyEfficiencyMeasure?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: auditInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="audit.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${auditInstance?.updatedDate}"  />
</div>

