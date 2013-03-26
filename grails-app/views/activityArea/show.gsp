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

<%@ page import="gov.doe.seed.ActivityArea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'activityArea.label', default: 'ActivityArea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-activityArea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-activityArea" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list activityArea">
			
				<g:if test="${activityAreaInstance?.grossFloorArea}">
				<li class="fieldcontain">
					<span id="grossFloorArea-label" class="property-label"><g:message code="activityArea.grossFloorArea.label" default="Gross Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="grossFloorArea-label"><g:fieldValue bean="${activityAreaInstance}" field="grossFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.heatedFloorArea}">
				<li class="fieldcontain">
					<span id="heatedFloorArea-label" class="property-label"><g:message code="activityArea.heatedFloorArea.label" default="Heated Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="heatedFloorArea-label"><g:fieldValue bean="${activityAreaInstance}" field="heatedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.cooledFloorArea}">
				<li class="fieldcontain">
					<span id="cooledFloorArea-label" class="property-label"><g:message code="activityArea.cooledFloorArea.label" default="Cooled Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="cooledFloorArea-label"><g:fieldValue bean="${activityAreaInstance}" field="cooledFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfFloors}">
				<li class="fieldcontain">
					<span id="numOfFloors-label" class="property-label"><g:message code="activityArea.numOfFloors.label" default="Num Of Floors" /></span>
					
						<span class="property-value" aria-labelledby="numOfFloors-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfFloors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfFloorsAboveGnd}">
				<li class="fieldcontain">
					<span id="numOfFloorsAboveGnd-label" class="property-label"><g:message code="activityArea.numOfFloorsAboveGnd.label" default="Num Of Floors Above Gnd" /></span>
					
						<span class="property-value" aria-labelledby="numOfFloorsAboveGnd-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfFloorsAboveGnd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numFloorsBelowGnd}">
				<li class="fieldcontain">
					<span id="numFloorsBelowGnd-label" class="property-label"><g:message code="activityArea.numFloorsBelowGnd.label" default="Num Floors Below Gnd" /></span>
					
						<span class="property-value" aria-labelledby="numFloorsBelowGnd-label"><g:fieldValue bean="${activityAreaInstance}" field="numFloorsBelowGnd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.floorHeight}">
				<li class="fieldcontain">
					<span id="floorHeight-label" class="property-label"><g:message code="activityArea.floorHeight.label" default="Floor Height" /></span>
					
						<span class="property-value" aria-labelledby="floorHeight-label"><g:fieldValue bean="${activityAreaInstance}" field="floorHeight"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfUnits}">
				<li class="fieldcontain">
					<span id="numOfUnits-label" class="property-label"><g:message code="activityArea.numOfUnits.label" default="Num Of Units" /></span>
					
						<span class="property-value" aria-labelledby="numOfUnits-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfUnits"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.seatingCapacity}">
				<li class="fieldcontain">
					<span id="seatingCapacity-label" class="property-label"><g:message code="activityArea.seatingCapacity.label" default="Seating Capacity" /></span>
					
						<span class="property-value" aria-labelledby="seatingCapacity-label"><g:fieldValue bean="${activityAreaInstance}" field="seatingCapacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfOccupants}">
				<li class="fieldcontain">
					<span id="numOfOccupants-label" class="property-label"><g:message code="activityArea.numOfOccupants.label" default="Num Of Occupants" /></span>
					
						<span class="property-value" aria-labelledby="numOfOccupants-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfOccupants"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfGuestRooms}">
				<li class="fieldcontain">
					<span id="numOfGuestRooms-label" class="property-label"><g:message code="activityArea.numOfGuestRooms.label" default="Num Of Guest Rooms" /></span>
					
						<span class="property-value" aria-labelledby="numOfGuestRooms-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfGuestRooms"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numLicensedBeds}">
				<li class="fieldcontain">
					<span id="numLicensedBeds-label" class="property-label"><g:message code="activityArea.numLicensedBeds.label" default="Num Licensed Beds" /></span>
					
						<span class="property-value" aria-labelledby="numLicensedBeds-label"><g:fieldValue bean="${activityAreaInstance}" field="numLicensedBeds"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.avgWeeklyOperatingHrs}">
				<li class="fieldcontain">
					<span id="avgWeeklyOperatingHrs-label" class="property-label"><g:message code="activityArea.avgWeeklyOperatingHrs.label" default="Avg Weekly Operating Hrs" /></span>
					
						<span class="property-value" aria-labelledby="avgWeeklyOperatingHrs-label"><g:fieldValue bean="${activityAreaInstance}" field="avgWeeklyOperatingHrs"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.avgWeeksPerYearInUse}">
				<li class="fieldcontain">
					<span id="avgWeeksPerYearInUse-label" class="property-label"><g:message code="activityArea.avgWeeksPerYearInUse.label" default="Avg Weeks Per Year In Use" /></span>
					
						<span class="property-value" aria-labelledby="avgWeeksPerYearInUse-label"><g:fieldValue bean="${activityAreaInstance}" field="avgWeeksPerYearInUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.activityAreaName}">
				<li class="fieldcontain">
					<span id="activityAreaName-label" class="property-label"><g:message code="activityArea.activityAreaName.label" default="Activity Area Name" /></span>
					
						<span class="property-value" aria-labelledby="activityAreaName-label"><g:fieldValue bean="${activityAreaInstance}" field="activityAreaName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.meteredSpace}">
				<li class="fieldcontain">
					<span id="meteredSpace-label" class="property-label"><g:message code="activityArea.meteredSpace.label" default="Metered Space" /></span>
					
						<span class="property-value" aria-labelledby="meteredSpace-label"><g:formatBoolean boolean="${activityAreaInstance?.meteredSpace}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.extEntranceToPublic}">
				<li class="fieldcontain">
					<span id="extEntranceToPublic-label" class="property-label"><g:message code="activityArea.extEntranceToPublic.label" default="Ext Entrance To Public" /></span>
					
						<span class="property-value" aria-labelledby="extEntranceToPublic-label"><g:formatBoolean boolean="${activityAreaInstance?.extEntranceToPublic}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.enclosedFloorArea}">
				<li class="fieldcontain">
					<span id="enclosedFloorArea-label" class="property-label"><g:message code="activityArea.enclosedFloorArea.label" default="Enclosed Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="enclosedFloorArea-label"><g:fieldValue bean="${activityAreaInstance}" field="enclosedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.nonEnclosedFloorAreaWithRoof}">
				<li class="fieldcontain">
					<span id="nonEnclosedFloorAreaWithRoof-label" class="property-label"><g:message code="activityArea.nonEnclosedFloorAreaWithRoof.label" default="Non Enclosed Floor Area With Roof" /></span>
					
						<span class="property-value" aria-labelledby="nonEnclosedFloorAreaWithRoof-label"><g:fieldValue bean="${activityAreaInstance}" field="nonEnclosedFloorAreaWithRoof"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.openFloorAreaWithoutRoof}">
				<li class="fieldcontain">
					<span id="openFloorAreaWithoutRoof-label" class="property-label"><g:message code="activityArea.openFloorAreaWithoutRoof.label" default="Open Floor Area Without Roof" /></span>
					
						<span class="property-value" aria-labelledby="openFloorAreaWithoutRoof-label"><g:fieldValue bean="${activityAreaInstance}" field="openFloorAreaWithoutRoof"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.conditionedFloorArea}">
				<li class="fieldcontain">
					<span id="conditionedFloorArea-label" class="property-label"><g:message code="activityArea.conditionedFloorArea.label" default="Conditioned Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="conditionedFloorArea-label"><g:fieldValue bean="${activityAreaInstance}" field="conditionedFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.officeAirConditioned}">
				<li class="fieldcontain">
					<span id="officeAirConditioned-label" class="property-label"><g:message code="activityArea.officeAirConditioned.label" default="Office Air Conditioned" /></span>
					
						<span class="property-value" aria-labelledby="officeAirConditioned-label"><g:formatBoolean boolean="${activityAreaInstance?.officeAirConditioned}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.officeHeated}">
				<li class="fieldcontain">
					<span id="officeHeated-label" class="property-label"><g:message code="activityArea.officeHeated.label" default="Office Heated" /></span>
					
						<span class="property-value" aria-labelledby="officeHeated-label"><g:formatBoolean boolean="${activityAreaInstance?.officeHeated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.seniorCareFacilityTotCapacityCnt}">
				<li class="fieldcontain">
					<span id="seniorCareFacilityTotCapacityCnt-label" class="property-label"><g:message code="activityArea.seniorCareFacilityTotCapacityCnt.label" default="Senior Care Facility Tot Capacity Cnt" /></span>
					
						<span class="property-value" aria-labelledby="seniorCareFacilityTotCapacityCnt-label"><g:fieldValue bean="${activityAreaInstance}" field="seniorCareFacilityTotCapacityCnt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.occupantDensity}">
				<li class="fieldcontain">
					<span id="occupantDensity-label" class="property-label"><g:message code="activityArea.occupantDensity.label" default="Occupant Density" /></span>
					
						<span class="property-value" aria-labelledby="occupantDensity-label"><g:fieldValue bean="${activityAreaInstance}" field="occupantDensity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.hrsPerDayGuestsOnSite}">
				<li class="fieldcontain">
					<span id="hrsPerDayGuestsOnSite-label" class="property-label"><g:message code="activityArea.hrsPerDayGuestsOnSite.label" default="Hrs Per Day Guests On Site" /></span>
					
						<span class="property-value" aria-labelledby="hrsPerDayGuestsOnSite-label"><g:fieldValue bean="${activityAreaInstance}" field="hrsPerDayGuestsOnSite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfMonthsInUse}">
				<li class="fieldcontain">
					<span id="numOfMonthsInUse-label" class="property-label"><g:message code="activityArea.numOfMonthsInUse.label" default="Num Of Months In Use" /></span>
					
						<span class="property-value" aria-labelledby="numOfMonthsInUse-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfMonthsInUse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.avgOccupancyPercentage}">
				<li class="fieldcontain">
					<span id="avgOccupancyPercentage-label" class="property-label"><g:message code="activityArea.avgOccupancyPercentage.label" default="Avg Occupancy Percentage" /></span>
					
						<span class="property-value" aria-labelledby="avgOccupancyPercentage-label"><g:fieldValue bean="${activityAreaInstance}" field="avgOccupancyPercentage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.roomDensity}">
				<li class="fieldcontain">
					<span id="roomDensity-label" class="property-label"><g:message code="activityArea.roomDensity.label" default="Room Density" /></span>
					
						<span class="property-value" aria-labelledby="roomDensity-label"><g:fieldValue bean="${activityAreaInstance}" field="roomDensity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.numOfBusinesses}">
				<li class="fieldcontain">
					<span id="numOfBusinesses-label" class="property-label"><g:message code="activityArea.numOfBusinesses.label" default="Num Of Businesses" /></span>
					
						<span class="property-value" aria-labelledby="numOfBusinesses-label"><g:fieldValue bean="${activityAreaInstance}" field="numOfBusinesses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.weeklyHoursParkingAccess}">
				<li class="fieldcontain">
					<span id="weeklyHoursParkingAccess-label" class="property-label"><g:message code="activityArea.weeklyHoursParkingAccess.label" default="Weekly Hours Parking Access" /></span>
					
						<span class="property-value" aria-labelledby="weeklyHoursParkingAccess-label"><g:fieldValue bean="${activityAreaInstance}" field="weeklyHoursParkingAccess"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.k12SchoolsOpenWeekend}">
				<li class="fieldcontain">
					<span id="k12SchoolsOpenWeekend-label" class="property-label"><g:message code="activityArea.k12SchoolsOpenWeekend.label" default="K12 Schools Open Weekend" /></span>
					
						<span class="property-value" aria-labelledby="k12SchoolsOpenWeekend-label"><g:formatBoolean boolean="${activityAreaInstance?.k12SchoolsOpenWeekend}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.floorAreaFullSpas}">
				<li class="fieldcontain">
					<span id="floorAreaFullSpas-label" class="property-label"><g:message code="activityArea.floorAreaFullSpas.label" default="Floor Area Full Spas" /></span>
					
						<span class="property-value" aria-labelledby="floorAreaFullSpas-label"><g:fieldValue bean="${activityAreaInstance}" field="floorAreaFullSpas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.floorAreaOfGym}">
				<li class="fieldcontain">
					<span id="floorAreaOfGym-label" class="property-label"><g:message code="activityArea.floorAreaOfGym.label" default="Floor Area Of Gym" /></span>
					
						<span class="property-value" aria-labelledby="floorAreaOfGym-label"><g:fieldValue bean="${activityAreaInstance}" field="floorAreaOfGym"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.dormComputerLab}">
				<li class="fieldcontain">
					<span id="dormComputerLab-label" class="property-label"><g:message code="activityArea.dormComputerLab.label" default="Dorm Computer Lab" /></span>
					
						<span class="property-value" aria-labelledby="dormComputerLab-label"><g:formatBoolean boolean="${activityAreaInstance?.dormComputerLab}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.hospitalTertiaryCare}">
				<li class="fieldcontain">
					<span id="hospitalTertiaryCare-label" class="property-label"><g:message code="activityArea.hospitalTertiaryCare.label" default="Hospital Tertiary Care" /></span>
					
						<span class="property-value" aria-labelledby="hospitalTertiaryCare-label"><g:formatBoolean boolean="${activityAreaInstance?.hospitalTertiaryCare}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="activityArea.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${activityAreaInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="activityArea.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${activityAreaInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.activityAreaTypeLookup}">
				<li class="fieldcontain">
					<span id="activityAreaTypeLookup-label" class="property-label"><g:message code="activityArea.activityAreaTypeLookup.label" default="Activity Area Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="activityAreaTypeLookup-label"><g:link controller="activityAreaTypeLookup" action="show" id="${activityAreaInstance?.activityAreaTypeLookup?.id}">${activityAreaInstance?.activityAreaTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="activityArea.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${activityAreaInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="activityArea.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${activityAreaInstance?.facility?.id}">${activityAreaInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${activityAreaInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="activityArea.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${activityAreaInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${activityAreaInstance?.id}" />
					<g:link class="edit" action="edit" id="${activityAreaInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
