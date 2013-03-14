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
<%@ page import="gov.doe.seed.Implementer" %>



<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implName', 'error')} ">
	<label for="implName">
		<g:message code="implementer.implName.label" default="Impl Name" />
		
	</label>
	<g:textField name="implName" maxlength="45" value="${implementerInstance?.implName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implQualNum', 'error')} ">
	<label for="implQualNum">
		<g:message code="implementer.implQualNum.label" default="Impl Qual Num" />
		
	</label>
	<g:textField name="implQualNum" maxlength="45" value="${implementerInstance?.implQualNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implQualState', 'error')} ">
	<label for="implQualState">
		<g:message code="implementer.implQualState.label" default="Impl Qual State" />
		
	</label>
	<g:textField name="implQualState" maxlength="45" value="${implementerInstance?.implQualState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implMemCert', 'error')} ">
	<label for="implMemCert">
		<g:message code="implementer.implMemCert.label" default="Impl Mem Cert" />
		
	</label>
	<g:textField name="implMemCert" maxlength="45" value="${implementerInstance?.implMemCert}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implCompany', 'error')} ">
	<label for="implCompany">
		<g:message code="implementer.implCompany.label" default="Impl Company" />
		
	</label>
	<g:textField name="implCompany" maxlength="45" value="${implementerInstance?.implCompany}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implAddress', 'error')} ">
	<label for="implAddress">
		<g:message code="implementer.implAddress.label" default="Impl Address" />
		
	</label>
	<g:textField name="implAddress" maxlength="45" value="${implementerInstance?.implAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implPhone', 'error')} ">
	<label for="implPhone">
		<g:message code="implementer.implPhone.label" default="Impl Phone" />
		
	</label>
	<g:textField name="implPhone" maxlength="45" value="${implementerInstance?.implPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implMemberCertLookup', 'error')} required">
	<label for="implMemberCertLookup">
		<g:message code="implementer.implMemberCertLookup.label" default="Impl Member Cert Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="implMemberCertLookup" name="implMemberCertLookup.id" from="${gov.doe.seed.ImplMemberCertLookup.list()}" optionKey="id" required="" value="${implementerInstance?.implMemberCertLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: implementerInstance, field: 'implQualificationLookup', 'error')} required">
	<label for="implQualificationLookup">
		<g:message code="implementer.implQualificationLookup.label" default="Impl Qualification Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="implQualificationLookup" name="implQualificationLookup.id" from="${gov.doe.seed.ImplQualificationLookup.list()}" optionKey="id" required="" value="${implementerInstance?.implQualificationLookup?.id}" class="many-to-one"/>
</div>

