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
<%@ page import="gov.doe.seed.EnergyEfficiencyMeasure" %>



<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'scope', 'error')} ">
	<label for="scope">
		<g:message code="energyEfficiencyMeasure.scope.label" default="Scope" />
		
	</label>
	<g:field name="scope" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'scope')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="energyEfficiencyMeasure.description.label" default="Description" />
		
	</label>
	<g:textField name="description" maxlength="100" value="${energyEfficiencyMeasureInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'implementationStartDate', 'error')} ">
	<label for="implementationStartDate">
		<g:message code="energyEfficiencyMeasure.implementationStartDate.label" default="Implementation Start Date" />
		
	</label>
	<g:datePicker name="implementationStartDate" precision="day"  value="${energyEfficiencyMeasureInstance?.implementationStartDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'implementationEndDate', 'error')} ">
	<label for="implementationEndDate">
		<g:message code="energyEfficiencyMeasure.implementationEndDate.label" default="Implementation End Date" />
		
	</label>
	<g:datePicker name="implementationEndDate" precision="day"  value="${energyEfficiencyMeasureInstance?.implementationEndDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'life', 'error')} ">
	<label for="life">
		<g:message code="energyEfficiencyMeasure.life.label" default="Life" />
		
	</label>
	<g:textField name="life" maxlength="45" value="${energyEfficiencyMeasureInstance?.life}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'firstCost', 'error')} ">
	<label for="firstCost">
		<g:message code="energyEfficiencyMeasure.firstCost.label" default="First Cost" />
		
	</label>
	<g:textField name="firstCost" maxlength="45" value="${energyEfficiencyMeasureInstance?.firstCost}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'omCost', 'error')} ">
	<label for="omCost">
		<g:message code="energyEfficiencyMeasure.omCost.label" default="Om Cost" />
		
	</label>
	<g:field name="omCost" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'omCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'fundFromRebate', 'error')} ">
	<label for="fundFromRebate">
		<g:message code="energyEfficiencyMeasure.fundFromRebate.label" default="Fund From Rebate" />
		
	</label>
	<g:field name="fundFromRebate" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'fundFromRebate')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'fundTaxCredit', 'error')} ">
	<label for="fundTaxCredit">
		<g:message code="energyEfficiencyMeasure.fundTaxCredit.label" default="Fund Tax Credit" />
		
	</label>
	<g:field name="fundTaxCredit" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'fundTaxCredit')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'simplePayback', 'error')} ">
	<label for="simplePayback">
		<g:message code="energyEfficiencyMeasure.simplePayback.label" default="Simple Payback" />
		
	</label>
	<g:textField name="simplePayback" maxlength="45" value="${energyEfficiencyMeasureInstance?.simplePayback}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'savingsOperation', 'error')} ">
	<label for="savingsOperation">
		<g:message code="energyEfficiencyMeasure.savingsOperation.label" default="Savings Operation" />
		
	</label>
	<g:field name="savingsOperation" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'savingsOperation')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'totalJobHours', 'error')} ">
	<label for="totalJobHours">
		<g:message code="energyEfficiencyMeasure.totalJobHours.label" default="Total Job Hours" />
		
	</label>
	<g:field name="totalJobHours" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'totalJobHours')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'savingsEstCost', 'error')} ">
	<label for="savingsEstCost">
		<g:message code="energyEfficiencyMeasure.savingsEstCost.label" default="Savings Est Cost" />
		
	</label>
	<g:field name="savingsEstCost" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'savingsEstCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'savingsEstEnergy', 'error')} ">
	<label for="savingsEstEnergy">
		<g:message code="energyEfficiencyMeasure.savingsEstEnergy.label" default="Savings Est Energy" />
		
	</label>
	<g:field name="savingsEstEnergy" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'savingsEstEnergy')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'savingsCost', 'error')} ">
	<label for="savingsCost">
		<g:message code="energyEfficiencyMeasure.savingsCost.label" default="Savings Cost" />
		
	</label>
	<g:field name="savingsCost" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'savingsCost')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'savingsEnergy', 'error')} ">
	<label for="savingsEnergy">
		<g:message code="energyEfficiencyMeasure.savingsEnergy.label" default="Savings Energy" />
		
	</label>
	<g:field name="savingsEnergy" value="${fieldValue(bean: energyEfficiencyMeasureInstance, field: 'savingsEnergy')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'numPermits', 'error')} ">
	<label for="numPermits">
		<g:message code="energyEfficiencyMeasure.numPermits.label" default="Num Permits" />
		
	</label>
	<g:field name="numPermits" type="number" value="${energyEfficiencyMeasureInstance.numPermits}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'numStaffTrained', 'error')} ">
	<label for="numStaffTrained">
		<g:message code="energyEfficiencyMeasure.numStaffTrained.label" default="Num Staff Trained" />
		
	</label>
	<g:field name="numStaffTrained" type="number" value="${energyEfficiencyMeasureInstance.numStaffTrained}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'leedExem', 'error')} ">
	<label for="leedExem">
		<g:message code="energyEfficiencyMeasure.leedExem.label" default="Leed Exem" />
		
	</label>
	<g:checkBox name="leedExem" value="${energyEfficiencyMeasureInstance?.leedExem}" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="energyEfficiencyMeasure.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${energyEfficiencyMeasureInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="energyEfficiencyMeasure.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${energyEfficiencyMeasureInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="energyEfficiencyMeasure.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${energyEfficiencyMeasureInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'auditCertHolder', 'error')} ">
	<label for="auditCertHolder">
		<g:message code="energyEfficiencyMeasure.auditCertHolder.label" default="Audit Cert Holder" />
		
	</label>
	<g:textField name="auditCertHolder" maxlength="45" value="${energyEfficiencyMeasureInstance?.auditCertHolder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'cenPlantInAudit', 'error')} ">
	<label for="cenPlantInAudit">
		<g:message code="energyEfficiencyMeasure.cenPlantInAudit.label" default="Cen Plant In Audit" />
		
	</label>
	<g:checkBox name="cenPlantInAudit" value="${energyEfficiencyMeasureInstance?.cenPlantInAudit}" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'retroCommDate', 'error')} ">
	<label for="retroCommDate">
		<g:message code="energyEfficiencyMeasure.retroCommDate.label" default="Retro Comm Date" />
		
	</label>
	<g:datePicker name="retroCommDate" precision="day"  value="${energyEfficiencyMeasureInstance?.retroCommDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'auditId', 'error')} ">
	<label for="auditId">
		<g:message code="energyEfficiencyMeasure.auditId.label" default="Audit Id" />
		
	</label>
	<g:textField name="auditId" maxlength="45" value="${energyEfficiencyMeasureInstance?.auditId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'measureId', 'error')} ">
	<label for="measureId">
		<g:message code="energyEfficiencyMeasure.measureId.label" default="Measure Id" />
		
	</label>
	<g:textField name="measureId" maxlength="45" value="${energyEfficiencyMeasureInstance?.measureId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="energyEfficiencyMeasure.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" maxlength="45" value="${energyEfficiencyMeasureInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'audits', 'error')} ">
	<label for="audits">
		<g:message code="energyEfficiencyMeasure.audits.label" default="Audits" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${energyEfficiencyMeasureInstance?.audits?}" var="a">
    <li><g:link controller="audit" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="audit" action="create" params="['energyEfficiencyMeasure.id': energyEfficiencyMeasureInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'audit.label', default: 'Audit')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'energyStarApplications', 'error')} ">
	<label for="energyStarApplications">
		<g:message code="energyEfficiencyMeasure.energyStarApplications.label" default="Energy Star Applications" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${energyEfficiencyMeasureInstance?.energyStarApplications?}" var="e">
    <li><g:link controller="energyStarApplication" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyStarApplication" action="create" params="['energyEfficiencyMeasure.id': energyEfficiencyMeasureInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyStarApplication.label', default: 'EnergyStarApplication')])}</g:link>
</li>
</ul>

</div>


<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'costEffScreeningLookup', 'error')} required">
	<label for="costEffScreeningLookup">
		<g:message code="energyEfficiencyMeasure.costEffScreeningLookup.label" default="Cost Eff Screening Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="costEffScreeningLookup" name="costEffScreeningLookup.id" from="${gov.doe.seed.CostEffScreeningLookup.list()}" optionKey="id" required="" value="${energyEfficiencyMeasureInstance?.costEffScreeningLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="energyEfficiencyMeasure.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${energyEfficiencyMeasureInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'energyEffReports', 'error')} ">
	<label for="energyEffReports">
		<g:message code="energyEfficiencyMeasure.energyEffReports.label" default="Energy Eff Reports" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${energyEfficiencyMeasureInstance?.energyEffReports?}" var="e">
    <li><g:link controller="energyEffReport" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyEffReport" action="create" params="['energyEfficiencyMeasure.id': energyEfficiencyMeasureInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyEffReport.label', default: 'EnergyEffReport')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'entityWorkPerformedLookup', 'error')} required">
	<label for="entityWorkPerformedLookup">
		<g:message code="energyEfficiencyMeasure.entityWorkPerformedLookup.label" default="Entity Work Performed Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="entityWorkPerformedLookup" name="entityWorkPerformedLookup.id" from="${gov.doe.seed.EntityWorkPerformedLookup.list()}" optionKey="id" required="" value="${energyEfficiencyMeasureInstance?.entityWorkPerformedLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="energyEfficiencyMeasure.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${energyEfficiencyMeasureInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'implementStatusLookup', 'error')} required">
	<label for="implementStatusLookup">
		<g:message code="energyEfficiencyMeasure.implementStatusLookup.label" default="Implement Status Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="implementStatusLookup" name="implementStatusLookup.id" from="${gov.doe.seed.ImplementStatusLookup.list()}" optionKey="id" required="" value="${energyEfficiencyMeasureInstance?.implementStatusLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'lotConfigurationLookup', 'error')} required">
	<label for="lotConfigurationLookup">
		<g:message code="energyEfficiencyMeasure.lotConfigurationLookup.label" default="Lot Configuration Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lotConfigurationLookup" name="lotConfigurationLookup.id" from="${gov.doe.seed.LotConfigurationLookup.list()}" optionKey="id" required="" value="${energyEfficiencyMeasureInstance?.lotConfigurationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: energyEfficiencyMeasureInstance, field: 'measureListLookup', 'error')} required">
	<label for="measureListLookup">
		<g:message code="energyEfficiencyMeasure.measureListLookup.label" default="Measure List Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="measureListLookup" name="measureListLookup.id" from="${gov.doe.seed.MeasureListLookup.list()}" optionKey="id" required="" value="${energyEfficiencyMeasureInstance?.measureListLookup?.id}" class="many-to-one"/>
</div>

