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

<%@ page import="gov.doe.seed.Facility" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'facility.label', default: 'Facility')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-facility" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-facility" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list facility">
			
				<g:if test="${facilityInstance?.operatorTypeIdFk}">
				<li class="fieldcontain">
					<span id="operatorTypeIdFk-label" class="property-label"><g:message code="facility.operatorTypeIdFk.label" default="Operator Type Id Fk" /></span>
					
						<span class="property-value" aria-labelledby="operatorTypeIdFk-label"><g:fieldValue bean="${facilityInstance}" field="operatorTypeIdFk"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.yearCompleted}">
				<li class="fieldcontain">
					<span id="yearCompleted-label" class="property-label"><g:message code="facility.yearCompleted.label" default="Year Completed" /></span>
					
						<span class="property-value" aria-labelledby="yearCompleted-label"><g:fieldValue bean="${facilityInstance}" field="yearCompleted"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.yearOccupied}">
				<li class="fieldcontain">
					<span id="yearOccupied-label" class="property-label"><g:message code="facility.yearOccupied.label" default="Year Occupied" /></span>
					
						<span class="property-value" aria-labelledby="yearOccupied-label"><g:fieldValue bean="${facilityInstance}" field="yearOccupied"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.bldgFootprintArea}">
				<li class="fieldcontain">
					<span id="bldgFootprintArea-label" class="property-label"><g:message code="facility.bldgFootprintArea.label" default="Bldg Footprint Area" /></span>
					
						<span class="property-value" aria-labelledby="bldgFootprintArea-label"><g:fieldValue bean="${facilityInstance}" field="bldgFootprintArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.perimeter}">
				<li class="fieldcontain">
					<span id="perimeter-label" class="property-label"><g:message code="facility.perimeter.label" default="Perimeter" /></span>
					
						<span class="property-value" aria-labelledby="perimeter-label"><g:fieldValue bean="${facilityInstance}" field="perimeter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.grossFloorArea}">
				<li class="fieldcontain">
					<span id="grossFloorArea-label" class="property-label"><g:message code="facility.grossFloorArea.label" default="Gross Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="grossFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="grossFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.netFloorArea}">
				<li class="fieldcontain">
					<span id="netFloorArea-label" class="property-label"><g:message code="facility.netFloorArea.label" default="Net Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="netFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="netFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.rentableFloorArea}">
				<li class="fieldcontain">
					<span id="rentableFloorArea-label" class="property-label"><g:message code="facility.rentableFloorArea.label" default="Rentable Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="rentableFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="rentableFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.occupiedFloorArea}">
				<li class="fieldcontain">
					<span id="occupiedFloorArea-label" class="property-label"><g:message code="facility.occupiedFloorArea.label" default="Occupied Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="occupiedFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="occupiedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.percentageOfCommon}">
				<li class="fieldcontain">
					<span id="percentageOfCommon-label" class="property-label"><g:message code="facility.percentageOfCommon.label" default="Percentage Of Common" /></span>
					
						<span class="property-value" aria-labelledby="percentageOfCommon-label"><g:fieldValue bean="${facilityInstance}" field="percentageOfCommon"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.lightedFloorArea}">
				<li class="fieldcontain">
					<span id="lightedFloorArea-label" class="property-label"><g:message code="facility.lightedFloorArea.label" default="Lighted Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="lightedFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="lightedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.heatedFloorArea}">
				<li class="fieldcontain">
					<span id="heatedFloorArea-label" class="property-label"><g:message code="facility.heatedFloorArea.label" default="Heated Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="heatedFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="heatedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.cooledFloorArea}">
				<li class="fieldcontain">
					<span id="cooledFloorArea-label" class="property-label"><g:message code="facility.cooledFloorArea.label" default="Cooled Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="cooledFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="cooledFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.unconditionalFloorArea}">
				<li class="fieldcontain">
					<span id="unconditionalFloorArea-label" class="property-label"><g:message code="facility.unconditionalFloorArea.label" default="Unconditional Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="unconditionalFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="unconditionalFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.volume}">
				<li class="fieldcontain">
					<span id="volume-label" class="property-label"><g:message code="facility.volume.label" default="Volume" /></span>
					
						<span class="property-value" aria-labelledby="volume-label"><g:fieldValue bean="${facilityInstance}" field="volume"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.conditionedBldgVol}">
				<li class="fieldcontain">
					<span id="conditionedBldgVol-label" class="property-label"><g:message code="facility.conditionedBldgVol.label" default="Conditioned Bldg Vol" /></span>
					
						<span class="property-value" aria-labelledby="conditionedBldgVol-label"><g:fieldValue bean="${facilityInstance}" field="conditionedBldgVol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.aspectRatio}">
				<li class="fieldcontain">
					<span id="aspectRatio-label" class="property-label"><g:message code="facility.aspectRatio.label" default="Aspect Ratio" /></span>
					
						<span class="property-value" aria-labelledby="aspectRatio-label"><g:fieldValue bean="${facilityInstance}" field="aspectRatio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.numberOfFloors}">
				<li class="fieldcontain">
					<span id="numberOfFloors-label" class="property-label"><g:message code="facility.numberOfFloors.label" default="Number Of Floors" /></span>
					
						<span class="property-value" aria-labelledby="numberOfFloors-label"><g:fieldValue bean="${facilityInstance}" field="numberOfFloors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.floorsAboveGround}">
				<li class="fieldcontain">
					<span id="floorsAboveGround-label" class="property-label"><g:message code="facility.floorsAboveGround.label" default="Floors Above Ground" /></span>
					
						<span class="property-value" aria-labelledby="floorsAboveGround-label"><g:fieldValue bean="${facilityInstance}" field="floorsAboveGround"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.floorsBelowGround}">
				<li class="fieldcontain">
					<span id="floorsBelowGround-label" class="property-label"><g:message code="facility.floorsBelowGround.label" default="Floors Below Ground" /></span>
					
						<span class="property-value" aria-labelledby="floorsBelowGround-label"><g:fieldValue bean="${facilityInstance}" field="floorsBelowGround"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.numberOfResidentsOccupants}">
				<li class="fieldcontain">
					<span id="numberOfResidentsOccupants-label" class="property-label"><g:message code="facility.numberOfResidentsOccupants.label" default="Number Of Residents Occupants" /></span>
					
						<span class="property-value" aria-labelledby="numberOfResidentsOccupants-label"><g:fieldValue bean="${facilityInstance}" field="numberOfResidentsOccupants"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.yearOfLastRemodel}">
				<li class="fieldcontain">
					<span id="yearOfLastRemodel-label" class="property-label"><g:message code="facility.yearOfLastRemodel.label" default="Year Of Last Remodel" /></span>
					
						<span class="property-value" aria-labelledby="yearOfLastRemodel-label"><g:fieldValue bean="${facilityInstance}" field="yearOfLastRemodel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.facilityTaxFloorArea}">
				<li class="fieldcontain">
					<span id="facilityTaxFloorArea-label" class="property-label"><g:message code="facility.facilityTaxFloorArea.label" default="Facility Tax Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="facilityTaxFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="facilityTaxFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.enclosedFloorArea}">
				<li class="fieldcontain">
					<span id="enclosedFloorArea-label" class="property-label"><g:message code="facility.enclosedFloorArea.label" default="Enclosed Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="enclosedFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="enclosedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.conditionedFloorArea}">
				<li class="fieldcontain">
					<span id="conditionedFloorArea-label" class="property-label"><g:message code="facility.conditionedFloorArea.label" default="Conditioned Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="conditionedFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="conditionedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.semiConditionedFloorArea}">
				<li class="fieldcontain">
					<span id="semiConditionedFloorArea-label" class="property-label"><g:message code="facility.semiConditionedFloorArea.label" default="Semi Conditioned Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="semiConditionedFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="semiConditionedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.heatedOnlyFloorArea}">
				<li class="fieldcontain">
					<span id="heatedOnlyFloorArea-label" class="property-label"><g:message code="facility.heatedOnlyFloorArea.label" default="Heated Only Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="heatedOnlyFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="heatedOnlyFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.cooledOnlyFloorArea}">
				<li class="fieldcontain">
					<span id="cooledOnlyFloorArea-label" class="property-label"><g:message code="facility.cooledOnlyFloorArea.label" default="Cooled Only Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="cooledOnlyFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="cooledOnlyFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.heatedAndCooledFloorArea}">
				<li class="fieldcontain">
					<span id="heatedAndCooledFloorArea-label" class="property-label"><g:message code="facility.heatedAndCooledFloorArea.label" default="Heated And Cooled Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="heatedAndCooledFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="heatedAndCooledFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.nonenclosedFloorAreaWithRoof}">
				<li class="fieldcontain">
					<span id="nonenclosedFloorAreaWithRoof-label" class="property-label"><g:message code="facility.nonenclosedFloorAreaWithRoof.label" default="Nonenclosed Floor Area With Roof" /></span>
					
						<span class="property-value" aria-labelledby="nonenclosedFloorAreaWithRoof-label"><g:fieldValue bean="${facilityInstance}" field="nonenclosedFloorAreaWithRoof"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.openFloorAreaWithoutRoof}">
				<li class="fieldcontain">
					<span id="openFloorAreaWithoutRoof-label" class="property-label"><g:message code="facility.openFloorAreaWithoutRoof.label" default="Open Floor Area Without Roof" /></span>
					
						<span class="property-value" aria-labelledby="openFloorAreaWithoutRoof-label"><g:fieldValue bean="${facilityInstance}" field="openFloorAreaWithoutRoof"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.basementFloorArea}">
				<li class="fieldcontain">
					<span id="basementFloorArea-label" class="property-label"><g:message code="facility.basementFloorArea.label" default="Basement Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="basementFloorArea-label"><g:fieldValue bean="${facilityInstance}" field="basementFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.facilityHeight}">
				<li class="fieldcontain">
					<span id="facilityHeight-label" class="property-label"><g:message code="facility.facilityHeight.label" default="Facility Height" /></span>
					
						<span class="property-value" aria-labelledby="facilityHeight-label"><g:fieldValue bean="${facilityInstance}" field="facilityHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.floorToFloorHeight}">
				<li class="fieldcontain">
					<span id="floorToFloorHeight-label" class="property-label"><g:message code="facility.floorToFloorHeight.label" default="Floor To Floor Height" /></span>
					
						<span class="property-value" aria-labelledby="floorToFloorHeight-label"><g:fieldValue bean="${facilityInstance}" field="floorToFloorHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.numOfFloors}">
				<li class="fieldcontain">
					<span id="numOfFloors-label" class="property-label"><g:message code="facility.numOfFloors.label" default="Num Of Floors" /></span>
					
						<span class="property-value" aria-labelledby="numOfFloors-label"><g:fieldValue bean="${facilityInstance}" field="numOfFloors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.numOfCondFloorsAboveGnd}">
				<li class="fieldcontain">
					<span id="numOfCondFloorsAboveGnd-label" class="property-label"><g:message code="facility.numOfCondFloorsAboveGnd.label" default="Num Of Cond Floors Above Gnd" /></span>
					
						<span class="property-value" aria-labelledby="numOfCondFloorsAboveGnd-label"><g:fieldValue bean="${facilityInstance}" field="numOfCondFloorsAboveGnd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.numOfConditionedFloorsBelowGnd}">
				<li class="fieldcontain">
					<span id="numOfConditionedFloorsBelowGnd-label" class="property-label"><g:message code="facility.numOfConditionedFloorsBelowGnd.label" default="Num Of Conditioned Floors Below Gnd" /></span>
					
						<span class="property-value" aria-labelledby="numOfConditionedFloorsBelowGnd-label"><g:fieldValue bean="${facilityInstance}" field="numOfConditionedFloorsBelowGnd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.facilityName}">
				<li class="fieldcontain">
					<span id="facilityName-label" class="property-label"><g:message code="facility.facilityName.label" default="Facility Name" /></span>
					
						<span class="property-value" aria-labelledby="facilityName-label"><g:fieldValue bean="${facilityInstance}" field="facilityName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="facility.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${facilityInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="facility.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${facilityInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.facilityContact}">
				<li class="fieldcontain">
					<span id="facilityContact-label" class="property-label"><g:message code="facility.facilityContact.label" default="Facility Contact" /></span>
					
						<span class="property-value" aria-labelledby="facilityContact-label"><g:fieldValue bean="${facilityInstance}" field="facilityContact"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.facilityPhone}">
				<li class="fieldcontain">
					<span id="facilityPhone-label" class="property-label"><g:message code="facility.facilityPhone.label" default="Facility Phone" /></span>
					
						<span class="property-value" aria-labelledby="facilityPhone-label"><g:fieldValue bean="${facilityInstance}" field="facilityPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.agency}">
				<li class="fieldcontain">
					<span id="agency-label" class="property-label"><g:message code="facility.agency.label" default="Agency" /></span>
					
						<span class="property-value" aria-labelledby="agency-label"><g:fieldValue bean="${facilityInstance}" field="agency"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="facility.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:fieldValue bean="${facilityInstance}" field="department"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.pmUniqueBldIdentifier}">
				<li class="fieldcontain">
					<span id="pmUniqueBldIdentifier-label" class="property-label"><g:message code="facility.pmUniqueBldIdentifier.label" default="Pm Unique Bld Identifier" /></span>
					
						<span class="property-value" aria-labelledby="pmUniqueBldIdentifier-label"><g:fieldValue bean="${facilityInstance}" field="pmUniqueBldIdentifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.yearPmBenchmarked}">
				<li class="fieldcontain">
					<span id="yearPmBenchmarked-label" class="property-label"><g:message code="facility.yearPmBenchmarked.label" default="Year Pm Benchmarked" /></span>
					
						<span class="property-value" aria-labelledby="yearPmBenchmarked-label"><g:fieldValue bean="${facilityInstance}" field="yearPmBenchmarked"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.federalRealPropertyId}">
				<li class="fieldcontain">
					<span id="federalRealPropertyId-label" class="property-label"><g:message code="facility.federalRealPropertyId.label" default="Federal Real Property Id" /></span>
					
						<span class="property-value" aria-labelledby="federalRealPropertyId-label"><g:fieldValue bean="${facilityInstance}" field="federalRealPropertyId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.administrator}">
				<li class="fieldcontain">
					<span id="administrator-label" class="property-label"><g:message code="facility.administrator.label" default="Administrator" /></span>
					
						<span class="property-value" aria-labelledby="administrator-label"><g:fieldValue bean="${facilityInstance}" field="administrator"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.sharedBy}">
				<li class="fieldcontain">
					<span id="sharedBy-label" class="property-label"><g:message code="facility.sharedBy.label" default="Shared By" /></span>
					
						<span class="property-value" aria-labelledby="sharedBy-label"><g:fieldValue bean="${facilityInstance}" field="sharedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.pmLastModifiedDate}">
				<li class="fieldcontain">
					<span id="pmLastModifiedDate-label" class="property-label"><g:message code="facility.pmLastModifiedDate.label" default="Pm Last Modified Date" /></span>
					
						<span class="property-value" aria-labelledby="pmLastModifiedDate-label"><g:formatDate date="${facilityInstance?.pmLastModifiedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.baselineRating}">
				<li class="fieldcontain">
					<span id="baselineRating-label" class="property-label"><g:message code="facility.baselineRating.label" default="Baseline Rating" /></span>
					
						<span class="property-value" aria-labelledby="baselineRating-label"><g:fieldValue bean="${facilityInstance}" field="baselineRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.targetRating}">
				<li class="fieldcontain">
					<span id="targetRating-label" class="property-label"><g:message code="facility.targetRating.label" default="Target Rating" /></span>
					
						<span class="property-value" aria-labelledby="targetRating-label"><g:fieldValue bean="${facilityInstance}" field="targetRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.federalSustainabilityPercent}">
				<li class="fieldcontain">
					<span id="federalSustainabilityPercent-label" class="property-label"><g:message code="facility.federalSustainabilityPercent.label" default="Federal Sustainability Percent" /></span>
					
						<span class="property-value" aria-labelledby="federalSustainabilityPercent-label"><g:fieldValue bean="${facilityInstance}" field="federalSustainabilityPercent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.notes}">
				<li class="fieldcontain">
					<span id="notes-label" class="property-label"><g:message code="facility.notes.label" default="Notes" /></span>
					
						<span class="property-value" aria-labelledby="notes-label"><g:fieldValue bean="${facilityInstance}" field="notes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.serviceProductProvider}">
				<li class="fieldcontain">
					<span id="serviceProductProvider-label" class="property-label"><g:message code="facility.serviceProductProvider.label" default="Service Product Provider" /></span>
					
						<span class="property-value" aria-labelledby="serviceProductProvider-label"><g:fieldValue bean="${facilityInstance}" field="serviceProductProvider"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="facility.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${facilityInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="facility.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${facilityInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
		
				<g:if test="${facilityInstance?.buildingProfileStatusLookup}">
				<li class="fieldcontain">
					<span id="buildingProfileStatusLookup-label" class="property-label"><g:message code="facility.buildingProfileStatusLookup.label" default="Building Profile Status Lookup" /></span>
					
						<span class="property-value" aria-labelledby="buildingProfileStatusLookup-label"><g:link controller="buildingProfileStatusLookup" action="show" id="${facilityInstance?.buildingProfileStatusLookup?.id}">${facilityInstance?.buildingProfileStatusLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.certificationRatings}">
				<li class="fieldcontain">
					<span id="certificationRatings-label" class="property-label"><g:message code="facility.certificationRatings.label" default="Certification Ratings" /></span>
					
						<g:each in="${facilityInstance.certificationRatings}" var="c">
						<span class="property-value" aria-labelledby="certificationRatings-label"><g:link controller="certificationRating" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.commercialFacilities}">
				<li class="fieldcontain">
					<span id="commercialFacilities-label" class="property-label"><g:message code="facility.commercialFacilities.label" default="Commercial Facilities" /></span>
					
						<g:each in="${facilityInstance.commercialFacilities}" var="c">
						<span class="property-value" aria-labelledby="commercialFacilities-label"><g:link controller="commercialFacility" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="facility.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${facilityInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.energyEfficiencyMeasures}">
				<li class="fieldcontain">
					<span id="energyEfficiencyMeasures-label" class="property-label"><g:message code="facility.energyEfficiencyMeasures.label" default="Energy Efficiency Measures" /></span>
					
						<g:each in="${facilityInstance.energyEfficiencyMeasures}" var="e">
						<span class="property-value" aria-labelledby="energyEfficiencyMeasures-label"><g:link controller="energyEfficiencyMeasure" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
		
				<g:if test="${facilityInstance?.energyUseMetrics}">
				<li class="fieldcontain">
					<span id="energyUseMetrics-label" class="property-label"><g:message code="facility.energyUseMetrics.label" default="Energy Use Metrics" /></span>
					
						<g:each in="${facilityInstance.energyUseMetrics}" var="e">
						<span class="property-value" aria-labelledby="energyUseMetrics-label"><g:link controller="energyUseMetric" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.facilityTypeLookup}">
				<li class="fieldcontain">
					<span id="facilityTypeLookup-label" class="property-label"><g:message code="facility.facilityTypeLookup.label" default="Facility Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="facilityTypeLookup-label"><g:link controller="facilityTypeLookup" action="show" id="${facilityInstance?.facilityTypeLookup?.id}">${facilityInstance?.facilityTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.footprintShapeLookup}">
				<li class="fieldcontain">
					<span id="footprintShapeLookup-label" class="property-label"><g:message code="facility.footprintShapeLookup.label" default="Footprint Shape Lookup" /></span>
					
						<span class="property-value" aria-labelledby="footprintShapeLookup-label"><g:link controller="footprintShapeLookup" action="show" id="${facilityInstance?.footprintShapeLookup?.id}">${facilityInstance?.footprintShapeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.orientationTypeLookup}">
				<li class="fieldcontain">
					<span id="orientationTypeLookup-label" class="property-label"><g:message code="facility.orientationTypeLookup.label" default="Orientation Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="orientationTypeLookup-label"><g:link controller="orientationTypeLookup" action="show" id="${facilityInstance?.orientationTypeLookup?.id}">${facilityInstance?.orientationTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="facility.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="owner" action="show" id="${facilityInstance?.owner?.id}">${facilityInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.ownershipStatusLookup}">
				<li class="fieldcontain">
					<span id="ownershipStatusLookup-label" class="property-label"><g:message code="facility.ownershipStatusLookup.label" default="Ownership Status Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ownershipStatusLookup-label"><g:link controller="ownershipStatusLookup" action="show" id="${facilityInstance?.ownershipStatusLookup?.id}">${facilityInstance?.ownershipStatusLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.propertyManagement}">
				<li class="fieldcontain">
					<span id="propertyManagement-label" class="property-label"><g:message code="facility.propertyManagement.label" default="Property Management" /></span>
					
						<span class="property-value" aria-labelledby="propertyManagement-label"><g:link controller="propertyManagement" action="show" id="${facilityInstance?.propertyManagement?.id}">${facilityInstance?.propertyManagement?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.residentialFacilities}">
				<li class="fieldcontain">
					<span id="residentialFacilities-label" class="property-label"><g:message code="facility.residentialFacilities.label" default="Residential Facilities" /></span>
					
						<g:each in="${facilityInstance.residentialFacilities}" var="r">
						<span class="property-value" aria-labelledby="residentialFacilities-label"><g:link controller="residentialFacility" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.site}">
				<li class="fieldcontain">
					<span id="site-label" class="property-label"><g:message code="facility.site.label" default="Site" /></span>
					
						<span class="property-value" aria-labelledby="site-label"><g:link controller="site" action="show" id="${facilityInstance?.site?.id}">${facilityInstance?.site?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.surroundingTypeLookup}">
				<li class="fieldcontain">
					<span id="surroundingTypeLookup-label" class="property-label"><g:message code="facility.surroundingTypeLookup.label" default="Surrounding Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="surroundingTypeLookup-label"><g:link controller="surroundingTypeLookup" action="show" id="${facilityInstance?.surroundingTypeLookup?.id}">${facilityInstance?.surroundingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.systems}">
				<li class="fieldcontain">
					<span id="systems-label" class="property-label"><g:message code="facility.systems.label" default="Systems" /></span>
					
						<g:each in="${facilityInstance.systems}" var="s">
						<span class="property-value" aria-labelledby="systems-label"><g:link controller="system" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="facility.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${facilityInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${facilityInstance?.waterUseMetrics}">
				<li class="fieldcontain">
					<span id="waterUseMetrics-label" class="property-label"><g:message code="facility.waterUseMetrics.label" default="Water Use Metrics" /></span>
					
						<g:each in="${facilityInstance.waterUseMetrics}" var="w">
						<span class="property-value" aria-labelledby="waterUseMetrics-label"><g:link controller="waterUseMetric" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${facilityInstance?.id}" />
					<g:link class="edit" action="edit" id="${facilityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
