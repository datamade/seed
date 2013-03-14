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
<%@ page import="gov.doe.seed.EnergyEffReport" %>



<div class="fieldcontain ${hasErrors(bean: energyEffReportInstance, field: 'eerSubmittedBy', 'error')} ">
	<label for="eerSubmittedBy">
		<g:message code="energyEffReport.eerSubmittedBy.label" default="Eer Submitted By" />
		
	</label>
	<g:textField name="eerSubmittedBy" maxlength="45" value="${energyEffReportInstance?.eerSubmittedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEffReportInstance, field: 'eerSubmittedComp', 'error')} ">
	<label for="eerSubmittedComp">
		<g:message code="energyEffReport.eerSubmittedComp.label" default="Eer Submitted Comp" />
		
	</label>
	<g:textField name="eerSubmittedComp" maxlength="45" value="${energyEffReportInstance?.eerSubmittedComp}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEffReportInstance, field: 'eerSubmittedEmail', 'error')} ">
	<label for="eerSubmittedEmail">
		<g:message code="energyEffReport.eerSubmittedEmail.label" default="Eer Submitted Email" />
		
	</label>
	<g:textField name="eerSubmittedEmail" maxlength="45" value="${energyEffReportInstance?.eerSubmittedEmail}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEffReportInstance, field: 'eerSubmittedDate', 'error')} ">
	<label for="eerSubmittedDate">
		<g:message code="energyEffReport.eerSubmittedDate.label" default="Eer Submitted Date" />
		
	</label>
	<g:datePicker name="eerSubmittedDate" precision="day"  value="${energyEffReportInstance?.eerSubmittedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEffReportInstance, field: 'energyEfficiencyMeasure', 'error')} required">
	<label for="energyEfficiencyMeasure">
		<g:message code="energyEffReport.energyEfficiencyMeasure.label" default="Energy Efficiency Measure" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="energyEfficiencyMeasure" name="energyEfficiencyMeasure.id" from="${gov.doe.seed.EnergyEfficiencyMeasure.list()}" optionKey="id" required="" value="${energyEffReportInstance?.energyEfficiencyMeasure?.id}" class="many-to-one"/>
</div>

