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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'energyEfficiencyMeasure.label', default: 'EnergyEfficiencyMeasure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-energyEfficiencyMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-energyEfficiencyMeasure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list energyEfficiencyMeasure">
			
				<g:if test="${energyEfficiencyMeasureInstance?.scope}">
				<li class="fieldcontain">
					<span id="scope-label" class="property-label"><g:message code="energyEfficiencyMeasure.scope.label" default="Scope" /></span>
					
						<span class="property-value" aria-labelledby="scope-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="scope"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="energyEfficiencyMeasure.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.implementationStartDate}">
				<li class="fieldcontain">
					<span id="implementationStartDate-label" class="property-label"><g:message code="energyEfficiencyMeasure.implementationStartDate.label" default="Implementation Start Date" /></span>
					
						<span class="property-value" aria-labelledby="implementationStartDate-label"><g:formatDate date="${energyEfficiencyMeasureInstance?.implementationStartDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.implementationEndDate}">
				<li class="fieldcontain">
					<span id="implementationEndDate-label" class="property-label"><g:message code="energyEfficiencyMeasure.implementationEndDate.label" default="Implementation End Date" /></span>
					
						<span class="property-value" aria-labelledby="implementationEndDate-label"><g:formatDate date="${energyEfficiencyMeasureInstance?.implementationEndDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.life}">
				<li class="fieldcontain">
					<span id="life-label" class="property-label"><g:message code="energyEfficiencyMeasure.life.label" default="Life" /></span>
					
						<span class="property-value" aria-labelledby="life-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="life"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.firstCost}">
				<li class="fieldcontain">
					<span id="firstCost-label" class="property-label"><g:message code="energyEfficiencyMeasure.firstCost.label" default="First Cost" /></span>
					
						<span class="property-value" aria-labelledby="firstCost-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="firstCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.omCost}">
				<li class="fieldcontain">
					<span id="omCost-label" class="property-label"><g:message code="energyEfficiencyMeasure.omCost.label" default="Om Cost" /></span>
					
						<span class="property-value" aria-labelledby="omCost-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="omCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.fundFromRebate}">
				<li class="fieldcontain">
					<span id="fundFromRebate-label" class="property-label"><g:message code="energyEfficiencyMeasure.fundFromRebate.label" default="Fund From Rebate" /></span>
					
						<span class="property-value" aria-labelledby="fundFromRebate-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="fundFromRebate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.fundTaxCredit}">
				<li class="fieldcontain">
					<span id="fundTaxCredit-label" class="property-label"><g:message code="energyEfficiencyMeasure.fundTaxCredit.label" default="Fund Tax Credit" /></span>
					
						<span class="property-value" aria-labelledby="fundTaxCredit-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="fundTaxCredit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.simplePayback}">
				<li class="fieldcontain">
					<span id="simplePayback-label" class="property-label"><g:message code="energyEfficiencyMeasure.simplePayback.label" default="Simple Payback" /></span>
					
						<span class="property-value" aria-labelledby="simplePayback-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="simplePayback"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.savingsOperation}">
				<li class="fieldcontain">
					<span id="savingsOperation-label" class="property-label"><g:message code="energyEfficiencyMeasure.savingsOperation.label" default="Savings Operation" /></span>
					
						<span class="property-value" aria-labelledby="savingsOperation-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="savingsOperation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.totalJobHours}">
				<li class="fieldcontain">
					<span id="totalJobHours-label" class="property-label"><g:message code="energyEfficiencyMeasure.totalJobHours.label" default="Total Job Hours" /></span>
					
						<span class="property-value" aria-labelledby="totalJobHours-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="totalJobHours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.savingsEstCost}">
				<li class="fieldcontain">
					<span id="savingsEstCost-label" class="property-label"><g:message code="energyEfficiencyMeasure.savingsEstCost.label" default="Savings Est Cost" /></span>
					
						<span class="property-value" aria-labelledby="savingsEstCost-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="savingsEstCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.savingsEstEnergy}">
				<li class="fieldcontain">
					<span id="savingsEstEnergy-label" class="property-label"><g:message code="energyEfficiencyMeasure.savingsEstEnergy.label" default="Savings Est Energy" /></span>
					
						<span class="property-value" aria-labelledby="savingsEstEnergy-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="savingsEstEnergy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.savingsCost}">
				<li class="fieldcontain">
					<span id="savingsCost-label" class="property-label"><g:message code="energyEfficiencyMeasure.savingsCost.label" default="Savings Cost" /></span>
					
						<span class="property-value" aria-labelledby="savingsCost-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="savingsCost"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.savingsEnergy}">
				<li class="fieldcontain">
					<span id="savingsEnergy-label" class="property-label"><g:message code="energyEfficiencyMeasure.savingsEnergy.label" default="Savings Energy" /></span>
					
						<span class="property-value" aria-labelledby="savingsEnergy-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="savingsEnergy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.numPermits}">
				<li class="fieldcontain">
					<span id="numPermits-label" class="property-label"><g:message code="energyEfficiencyMeasure.numPermits.label" default="Num Permits" /></span>
					
						<span class="property-value" aria-labelledby="numPermits-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="numPermits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.numStaffTrained}">
				<li class="fieldcontain">
					<span id="numStaffTrained-label" class="property-label"><g:message code="energyEfficiencyMeasure.numStaffTrained.label" default="Num Staff Trained" /></span>
					
						<span class="property-value" aria-labelledby="numStaffTrained-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="numStaffTrained"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.leedExem}">
				<li class="fieldcontain">
					<span id="leedExem-label" class="property-label"><g:message code="energyEfficiencyMeasure.leedExem.label" default="Leed Exem" /></span>
					
						<span class="property-value" aria-labelledby="leedExem-label"><g:formatBoolean boolean="${energyEfficiencyMeasureInstance?.leedExem}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="energyEfficiencyMeasure.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="energyEfficiencyMeasure.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="energyEfficiencyMeasure.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${energyEfficiencyMeasureInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.auditCertHolder}">
				<li class="fieldcontain">
					<span id="auditCertHolder-label" class="property-label"><g:message code="energyEfficiencyMeasure.auditCertHolder.label" default="Audit Cert Holder" /></span>
					
						<span class="property-value" aria-labelledby="auditCertHolder-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="auditCertHolder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.cenPlantInAudit}">
				<li class="fieldcontain">
					<span id="cenPlantInAudit-label" class="property-label"><g:message code="energyEfficiencyMeasure.cenPlantInAudit.label" default="Cen Plant In Audit" /></span>
					
						<span class="property-value" aria-labelledby="cenPlantInAudit-label"><g:formatBoolean boolean="${energyEfficiencyMeasureInstance?.cenPlantInAudit}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.retroCommDate}">
				<li class="fieldcontain">
					<span id="retroCommDate-label" class="property-label"><g:message code="energyEfficiencyMeasure.retroCommDate.label" default="Retro Comm Date" /></span>
					
						<span class="property-value" aria-labelledby="retroCommDate-label"><g:formatDate date="${energyEfficiencyMeasureInstance?.retroCommDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.auditId}">
				<li class="fieldcontain">
					<span id="auditId-label" class="property-label"><g:message code="energyEfficiencyMeasure.auditId.label" default="Audit Id" /></span>
					
						<span class="property-value" aria-labelledby="auditId-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="auditId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.measureId}">
				<li class="fieldcontain">
					<span id="measureId-label" class="property-label"><g:message code="energyEfficiencyMeasure.measureId.label" default="Measure Id" /></span>
					
						<span class="property-value" aria-labelledby="measureId-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="measureId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="energyEfficiencyMeasure.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${energyEfficiencyMeasureInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.audits}">
				<li class="fieldcontain">
					<span id="audits-label" class="property-label"><g:message code="energyEfficiencyMeasure.audits.label" default="Audits" /></span>
					
						<g:each in="${energyEfficiencyMeasureInstance.audits}" var="a">
						<span class="property-value" aria-labelledby="audits-label"><g:link controller="audit" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.costEffScreeningLookup}">
				<li class="fieldcontain">
					<span id="costEffScreeningLookup-label" class="property-label"><g:message code="energyEfficiencyMeasure.costEffScreeningLookup.label" default="Cost Eff Screening Lookup" /></span>
					
						<span class="property-value" aria-labelledby="costEffScreeningLookup-label"><g:link controller="costEffScreeningLookup" action="show" id="${energyEfficiencyMeasureInstance?.costEffScreeningLookup?.id}">${energyEfficiencyMeasureInstance?.costEffScreeningLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="energyEfficiencyMeasure.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${energyEfficiencyMeasureInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.energyEffReports}">
				<li class="fieldcontain">
					<span id="energyEffReports-label" class="property-label"><g:message code="energyEfficiencyMeasure.energyEffReports.label" default="Energy Eff Reports" /></span>
					
						<g:each in="${energyEfficiencyMeasureInstance.energyEffReports}" var="e">
						<span class="property-value" aria-labelledby="energyEffReports-label"><g:link controller="energyEffReport" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.entityWorkPerformedLookup}">
				<li class="fieldcontain">
					<span id="entityWorkPerformedLookup-label" class="property-label"><g:message code="energyEfficiencyMeasure.entityWorkPerformedLookup.label" default="Entity Work Performed Lookup" /></span>
					
						<span class="property-value" aria-labelledby="entityWorkPerformedLookup-label"><g:link controller="entityWorkPerformedLookup" action="show" id="${energyEfficiencyMeasureInstance?.entityWorkPerformedLookup?.id}">${energyEfficiencyMeasureInstance?.entityWorkPerformedLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="energyEfficiencyMeasure.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${energyEfficiencyMeasureInstance?.facility?.id}">${energyEfficiencyMeasureInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.implementStatusLookup}">
				<li class="fieldcontain">
					<span id="implementStatusLookup-label" class="property-label"><g:message code="energyEfficiencyMeasure.implementStatusLookup.label" default="Implement Status Lookup" /></span>
					
						<span class="property-value" aria-labelledby="implementStatusLookup-label"><g:link controller="implementStatusLookup" action="show" id="${energyEfficiencyMeasureInstance?.implementStatusLookup?.id}">${energyEfficiencyMeasureInstance?.implementStatusLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.lotConfigurationLookup}">
				<li class="fieldcontain">
					<span id="lotConfigurationLookup-label" class="property-label"><g:message code="energyEfficiencyMeasure.lotConfigurationLookup.label" default="Lot Configuration Lookup" /></span>
					
						<span class="property-value" aria-labelledby="lotConfigurationLookup-label"><g:link controller="lotConfigurationLookup" action="show" id="${energyEfficiencyMeasureInstance?.lotConfigurationLookup?.id}">${energyEfficiencyMeasureInstance?.lotConfigurationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEfficiencyMeasureInstance?.measureListLookup}">
				<li class="fieldcontain">
					<span id="measureListLookup-label" class="property-label"><g:message code="energyEfficiencyMeasure.measureListLookup.label" default="Measure List Lookup" /></span>
					
						<span class="property-value" aria-labelledby="measureListLookup-label"><g:link controller="measureListLookup" action="show" id="${energyEfficiencyMeasureInstance?.measureListLookup?.id}">${energyEfficiencyMeasureInstance?.measureListLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${energyEfficiencyMeasureInstance?.energyStarApplications}">
				<li class="fieldcontain">
					<span id="energyStarApplications-label" class="property-label"><g:message code="energyEfficiencyMeasure.energyStarApplications.label" default="Energy Star Applications" /></span>
					
						<g:each in="${energyEfficiencyMeasureInstance.energyStarApplications}" var="e">
						<span class="property-value" aria-labelledby="energyStarApplications-label"><g:link controller="energyStarApplication" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>

			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${energyEfficiencyMeasureInstance?.id}" />
					<g:link class="edit" action="edit" id="${energyEfficiencyMeasureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
