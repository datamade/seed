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

<%@ page import="gov.doe.seed.ResidentialFacility" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'residentialFacility.label', default: 'ResidentialFacility')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-residentialFacility" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-residentialFacility" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list residentialFacility">
			
				<g:if test="${residentialFacilityInstance?.percOccupiedOwner}">
				<li class="fieldcontain">
					<span id="percOccupiedOwner-label" class="property-label"><g:message code="residentialFacility.percOccupiedOwner.label" default="Perc Occupied Owner" /></span>
					
						<span class="property-value" aria-labelledby="percOccupiedOwner-label"><g:fieldValue bean="${residentialFacilityInstance}" field="percOccupiedOwner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.basementHeatedFloorArea}">
				<li class="fieldcontain">
					<span id="basementHeatedFloorArea-label" class="property-label"><g:message code="residentialFacility.basementHeatedFloorArea.label" default="Basement Heated Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="basementHeatedFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="basementHeatedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.basementCooledFloorArea}">
				<li class="fieldcontain">
					<span id="basementCooledFloorArea-label" class="property-label"><g:message code="residentialFacility.basementCooledFloorArea.label" default="Basement Cooled Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="basementCooledFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="basementCooledFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.atticFloorArea}">
				<li class="fieldcontain">
					<span id="atticFloorArea-label" class="property-label"><g:message code="residentialFacility.atticFloorArea.label" default="Attic Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="atticFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="atticFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.atticHeatedFloorArea}">
				<li class="fieldcontain">
					<span id="atticHeatedFloorArea-label" class="property-label"><g:message code="residentialFacility.atticHeatedFloorArea.label" default="Attic Heated Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="atticHeatedFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="atticHeatedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.atticCooledFloorArea}">
				<li class="fieldcontain">
					<span id="atticCooledFloorArea-label" class="property-label"><g:message code="residentialFacility.atticCooledFloorArea.label" default="Attic Cooled Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="atticCooledFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="atticCooledFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.garageFloorArea}">
				<li class="fieldcontain">
					<span id="garageFloorArea-label" class="property-label"><g:message code="residentialFacility.garageFloorArea.label" default="Garage Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="garageFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="garageFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.garageHeatedFloorArea}">
				<li class="fieldcontain">
					<span id="garageHeatedFloorArea-label" class="property-label"><g:message code="residentialFacility.garageHeatedFloorArea.label" default="Garage Heated Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="garageHeatedFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="garageHeatedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.garageCooledFloorArea}">
				<li class="fieldcontain">
					<span id="garageCooledFloorArea-label" class="property-label"><g:message code="residentialFacility.garageCooledFloorArea.label" default="Garage Cooled Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="garageCooledFloorArea-label"><g:fieldValue bean="${residentialFacilityInstance}" field="garageCooledFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfDwellingUnits}">
				<li class="fieldcontain">
					<span id="numOfDwellingUnits-label" class="property-label"><g:message code="residentialFacility.numOfDwellingUnits.label" default="Num Of Dwelling Units" /></span>
					
						<span class="property-value" aria-labelledby="numOfDwellingUnits-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfDwellingUnits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfBedrooms}">
				<li class="fieldcontain">
					<span id="numOfBedrooms-label" class="property-label"><g:message code="residentialFacility.numOfBedrooms.label" default="Num Of Bedrooms" /></span>
					
						<span class="property-value" aria-labelledby="numOfBedrooms-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfBedrooms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfCompleteBaths}">
				<li class="fieldcontain">
					<span id="numOfCompleteBaths-label" class="property-label"><g:message code="residentialFacility.numOfCompleteBaths.label" default="Num Of Complete Baths" /></span>
					
						<span class="property-value" aria-labelledby="numOfCompleteBaths-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfCompleteBaths"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfHalfBaths}">
				<li class="fieldcontain">
					<span id="numOfHalfBaths-label" class="property-label"><g:message code="residentialFacility.numOfHalfBaths.label" default="Num Of Half Baths" /></span>
					
						<span class="property-value" aria-labelledby="numOfHalfBaths-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfHalfBaths"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfRooms}">
				<li class="fieldcontain">
					<span id="numOfRooms-label" class="property-label"><g:message code="residentialFacility.numOfRooms.label" default="Num Of Rooms" /></span>
					
						<span class="property-value" aria-labelledby="numOfRooms-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfRooms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfOccupants}">
				<li class="fieldcontain">
					<span id="numOfOccupants-label" class="property-label"><g:message code="residentialFacility.numOfOccupants.label" default="Num Of Occupants" /></span>
					
						<span class="property-value" aria-labelledby="numOfOccupants-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfOccupants"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.yearCompletedRange}">
				<li class="fieldcontain">
					<span id="yearCompletedRange-label" class="property-label"><g:message code="residentialFacility.yearCompletedRange.label" default="Year Completed Range" /></span>
					
						<span class="property-value" aria-labelledby="yearCompletedRange-label"><g:fieldValue bean="${residentialFacilityInstance}" field="yearCompletedRange"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfFloorPlans}">
				<li class="fieldcontain">
					<span id="numOfFloorPlans-label" class="property-label"><g:message code="residentialFacility.numOfFloorPlans.label" default="Num Of Floor Plans" /></span>
					
						<span class="property-value" aria-labelledby="numOfFloorPlans-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfFloorPlans"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfUnitsPerFloorPlan}">
				<li class="fieldcontain">
					<span id="numOfUnitsPerFloorPlan-label" class="property-label"><g:message code="residentialFacility.numOfUnitsPerFloorPlan.label" default="Num Of Units Per Floor Plan" /></span>
					
						<span class="property-value" aria-labelledby="numOfUnitsPerFloorPlan-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfUnitsPerFloorPlan"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.govtSubsidizedHousing}">
				<li class="fieldcontain">
					<span id="govtSubsidizedHousing-label" class="property-label"><g:message code="residentialFacility.govtSubsidizedHousing.label" default="Govt Subsidized Housing" /></span>
					
						<span class="property-value" aria-labelledby="govtSubsidizedHousing-label"><g:fieldValue bean="${residentialFacilityInstance}" field="govtSubsidizedHousing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfAdults}">
				<li class="fieldcontain">
					<span id="numOfAdults-label" class="property-label"><g:message code="residentialFacility.numOfAdults.label" default="Num Of Adults" /></span>
					
						<span class="property-value" aria-labelledby="numOfAdults-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfAdults"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfChildren}">
				<li class="fieldcontain">
					<span id="numOfChildren-label" class="property-label"><g:message code="residentialFacility.numOfChildren.label" default="Num Of Children" /></span>
					
						<span class="property-value" aria-labelledby="numOfChildren-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfChildren"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.numOfNonBedrooms}">
				<li class="fieldcontain">
					<span id="numOfNonBedrooms-label" class="property-label"><g:message code="residentialFacility.numOfNonBedrooms.label" default="Num Of Non Bedrooms" /></span>
					
						<span class="property-value" aria-labelledby="numOfNonBedrooms-label"><g:fieldValue bean="${residentialFacilityInstance}" field="numOfNonBedrooms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="residentialFacility.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${residentialFacilityInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="residentialFacility.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${residentialFacilityInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="residentialFacility.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${residentialFacilityInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="residentialFacility.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${residentialFacilityInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="residentialFacility.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${residentialFacilityInstance?.facility?.id}">${residentialFacilityInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.floorPlanTypeLookup}">
				<li class="fieldcontain">
					<span id="floorPlanTypeLookup-label" class="property-label"><g:message code="residentialFacility.floorPlanTypeLookup.label" default="Floor Plan Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="floorPlanTypeLookup-label"><g:link controller="floorPlanTypeLookup" action="show" id="${residentialFacilityInstance?.floorPlanTypeLookup?.id}">${residentialFacilityInstance?.floorPlanTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.householdTypeLookup}">
				<li class="fieldcontain">
					<span id="householdTypeLookup-label" class="property-label"><g:message code="residentialFacility.householdTypeLookup.label" default="Household Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="householdTypeLookup-label"><g:link controller="householdTypeLookup" action="show" id="${residentialFacilityInstance?.householdTypeLookup?.id}">${residentialFacilityInstance?.householdTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.occupantEducationLookup}">
				<li class="fieldcontain">
					<span id="occupantEducationLookup-label" class="property-label"><g:message code="residentialFacility.occupantEducationLookup.label" default="Occupant Education Lookup" /></span>
					
						<span class="property-value" aria-labelledby="occupantEducationLookup-label"><g:link controller="occupantEducationLookup" action="show" id="${residentialFacilityInstance?.occupantEducationLookup?.id}">${residentialFacilityInstance?.occupantEducationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.occupantIncomeLookup}">
				<li class="fieldcontain">
					<span id="occupantIncomeLookup-label" class="property-label"><g:message code="residentialFacility.occupantIncomeLookup.label" default="Occupant Income Lookup" /></span>
					
						<span class="property-value" aria-labelledby="occupantIncomeLookup-label"><g:link controller="occupantIncomeLookup" action="show" id="${residentialFacilityInstance?.occupantIncomeLookup?.id}">${residentialFacilityInstance?.occupantIncomeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.resFacilityTypeLookup}">
				<li class="fieldcontain">
					<span id="resFacilityTypeLookup-label" class="property-label"><g:message code="residentialFacility.resFacilityTypeLookup.label" default="Res Facility Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="resFacilityTypeLookup-label"><g:link controller="resFacilityTypeLookup" action="show" id="${residentialFacilityInstance?.resFacilityTypeLookup?.id}">${residentialFacilityInstance?.resFacilityTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${residentialFacilityInstance?.resPopulationLookup}">
				<li class="fieldcontain">
					<span id="resPopulationLookup-label" class="property-label"><g:message code="residentialFacility.resPopulationLookup.label" default="Res Population Lookup" /></span>
					
						<span class="property-value" aria-labelledby="resPopulationLookup-label"><g:link controller="resPopulationLookup" action="show" id="${residentialFacilityInstance?.resPopulationLookup?.id}">${residentialFacilityInstance?.resPopulationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${residentialFacilityInstance?.id}" />
					<g:link class="edit" action="edit" id="${residentialFacilityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
