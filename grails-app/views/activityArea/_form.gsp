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



<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'grossFloorArea', 'error')} ">
	<label for="grossFloorArea">
		<g:message code="activityArea.grossFloorArea.label" default="Gross Floor Area" />
		
	</label>
	<g:field name="grossFloorArea" type="number" value="${activityAreaInstance.grossFloorArea}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'heatedFloorArea', 'error')} ">
	<label for="heatedFloorArea">
		<g:message code="activityArea.heatedFloorArea.label" default="Heated Floor Area" />
		
	</label>
	<g:field name="heatedFloorArea" value="${fieldValue(bean: activityAreaInstance, field: 'heatedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'cooledFloorArea', 'error')} ">
	<label for="cooledFloorArea">
		<g:message code="activityArea.cooledFloorArea.label" default="Cooled Floor Area" />
		
	</label>
	<g:field name="cooledFloorArea" value="${fieldValue(bean: activityAreaInstance, field: 'cooledFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfFloors', 'error')} ">
	<label for="numOfFloors">
		<g:message code="activityArea.numOfFloors.label" default="Num Of Floors" />
		
	</label>
	<g:field name="numOfFloors" type="number" value="${activityAreaInstance.numOfFloors}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfFloorsAboveGnd', 'error')} ">
	<label for="numOfFloorsAboveGnd">
		<g:message code="activityArea.numOfFloorsAboveGnd.label" default="Num Of Floors Above Gnd" />
		
	</label>
	<g:field name="numOfFloorsAboveGnd" type="number" value="${activityAreaInstance.numOfFloorsAboveGnd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numFloorsBelowGnd', 'error')} ">
	<label for="numFloorsBelowGnd">
		<g:message code="activityArea.numFloorsBelowGnd.label" default="Num Floors Below Gnd" />
		
	</label>
	<g:field name="numFloorsBelowGnd" type="number" value="${activityAreaInstance.numFloorsBelowGnd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'floorHeight', 'error')} ">
	<label for="floorHeight">
		<g:message code="activityArea.floorHeight.label" default="Floor Height" />
		
	</label>
	<g:field name="floorHeight" type="number" value="${activityAreaInstance.floorHeight}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfUnits', 'error')} ">
	<label for="numOfUnits">
		<g:message code="activityArea.numOfUnits.label" default="Num Of Units" />
		
	</label>
	<g:field name="numOfUnits" type="number" value="${activityAreaInstance.numOfUnits}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'seatingCapacity', 'error')} ">
	<label for="seatingCapacity">
		<g:message code="activityArea.seatingCapacity.label" default="Seating Capacity" />
		
	</label>
	<g:field name="seatingCapacity" type="number" value="${activityAreaInstance.seatingCapacity}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfOccupants', 'error')} ">
	<label for="numOfOccupants">
		<g:message code="activityArea.numOfOccupants.label" default="Num Of Occupants" />
		
	</label>
	<g:field name="numOfOccupants" type="number" value="${activityAreaInstance.numOfOccupants}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfGuestRooms', 'error')} ">
	<label for="numOfGuestRooms">
		<g:message code="activityArea.numOfGuestRooms.label" default="Num Of Guest Rooms" />
		
	</label>
	<g:field name="numOfGuestRooms" type="number" value="${activityAreaInstance.numOfGuestRooms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numLicensedBeds', 'error')} ">
	<label for="numLicensedBeds">
		<g:message code="activityArea.numLicensedBeds.label" default="Num Licensed Beds" />
		
	</label>
	<g:field name="numLicensedBeds" type="number" value="${activityAreaInstance.numLicensedBeds}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'avgWeeklyOperatingHrs', 'error')} ">
	<label for="avgWeeklyOperatingHrs">
		<g:message code="activityArea.avgWeeklyOperatingHrs.label" default="Avg Weekly Operating Hrs" />
		
	</label>
	<g:field name="avgWeeklyOperatingHrs" value="${fieldValue(bean: activityAreaInstance, field: 'avgWeeklyOperatingHrs')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'avgWeeksPerYearInUse', 'error')} ">
	<label for="avgWeeksPerYearInUse">
		<g:message code="activityArea.avgWeeksPerYearInUse.label" default="Avg Weeks Per Year In Use" />
		
	</label>
	<g:field name="avgWeeksPerYearInUse" value="${fieldValue(bean: activityAreaInstance, field: 'avgWeeksPerYearInUse')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'activityAreaName', 'error')} ">
	<label for="activityAreaName">
		<g:message code="activityArea.activityAreaName.label" default="Activity Area Name" />
		
	</label>
	<g:textField name="activityAreaName" maxlength="100" value="${activityAreaInstance?.activityAreaName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'meteredSpace', 'error')} ">
	<label for="meteredSpace">
		<g:message code="activityArea.meteredSpace.label" default="Metered Space" />
		
	</label>
	<g:checkBox name="meteredSpace" value="${activityAreaInstance?.meteredSpace}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'extEntranceToPublic', 'error')} ">
	<label for="extEntranceToPublic">
		<g:message code="activityArea.extEntranceToPublic.label" default="Ext Entrance To Public" />
		
	</label>
	<g:checkBox name="extEntranceToPublic" value="${activityAreaInstance?.extEntranceToPublic}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'enclosedFloorArea', 'error')} ">
	<label for="enclosedFloorArea">
		<g:message code="activityArea.enclosedFloorArea.label" default="Enclosed Floor Area" />
		
	</label>
	<g:field name="enclosedFloorArea" value="${fieldValue(bean: activityAreaInstance, field: 'enclosedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'nonEnclosedFloorAreaWithRoof', 'error')} ">
	<label for="nonEnclosedFloorAreaWithRoof">
		<g:message code="activityArea.nonEnclosedFloorAreaWithRoof.label" default="Non Enclosed Floor Area With Roof" />
		
	</label>
	<g:field name="nonEnclosedFloorAreaWithRoof" value="${fieldValue(bean: activityAreaInstance, field: 'nonEnclosedFloorAreaWithRoof')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'openFloorAreaWithoutRoof', 'error')} ">
	<label for="openFloorAreaWithoutRoof">
		<g:message code="activityArea.openFloorAreaWithoutRoof.label" default="Open Floor Area Without Roof" />
		
	</label>
	<g:field name="openFloorAreaWithoutRoof" value="${fieldValue(bean: activityAreaInstance, field: 'openFloorAreaWithoutRoof')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'conditionedFloorArea', 'error')} ">
	<label for="conditionedFloorArea">
		<g:message code="activityArea.conditionedFloorArea.label" default="Conditioned Floor Area" />
		
	</label>
	<g:field name="conditionedFloorArea" value="${fieldValue(bean: activityAreaInstance, field: 'conditionedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'officeAirConditioned', 'error')} ">
	<label for="officeAirConditioned">
		<g:message code="activityArea.officeAirConditioned.label" default="Office Air Conditioned" />
		
	</label>
	<g:checkBox name="officeAirConditioned" value="${activityAreaInstance?.officeAirConditioned}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'officeHeated', 'error')} ">
	<label for="officeHeated">
		<g:message code="activityArea.officeHeated.label" default="Office Heated" />
		
	</label>
	<g:checkBox name="officeHeated" value="${activityAreaInstance?.officeHeated}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'seniorCareFacilityTotCapacityCnt', 'error')} ">
	<label for="seniorCareFacilityTotCapacityCnt">
		<g:message code="activityArea.seniorCareFacilityTotCapacityCnt.label" default="Senior Care Facility Tot Capacity Cnt" />
		
	</label>
	<g:field name="seniorCareFacilityTotCapacityCnt" type="number" value="${activityAreaInstance.seniorCareFacilityTotCapacityCnt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'occupantDensity', 'error')} ">
	<label for="occupantDensity">
		<g:message code="activityArea.occupantDensity.label" default="Occupant Density" />
		
	</label>
	<g:field name="occupantDensity" value="${fieldValue(bean: activityAreaInstance, field: 'occupantDensity')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'hrsPerDayGuestsOnSite', 'error')} ">
	<label for="hrsPerDayGuestsOnSite">
		<g:message code="activityArea.hrsPerDayGuestsOnSite.label" default="Hrs Per Day Guests On Site" />
		
	</label>
	<g:field name="hrsPerDayGuestsOnSite" value="${fieldValue(bean: activityAreaInstance, field: 'hrsPerDayGuestsOnSite')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfMonthsInUse', 'error')} ">
	<label for="numOfMonthsInUse">
		<g:message code="activityArea.numOfMonthsInUse.label" default="Num Of Months In Use" />
		
	</label>
	<g:field name="numOfMonthsInUse" value="${fieldValue(bean: activityAreaInstance, field: 'numOfMonthsInUse')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'avgOccupancyPercentage', 'error')} ">
	<label for="avgOccupancyPercentage">
		<g:message code="activityArea.avgOccupancyPercentage.label" default="Avg Occupancy Percentage" />
		
	</label>
	<g:field name="avgOccupancyPercentage" value="${fieldValue(bean: activityAreaInstance, field: 'avgOccupancyPercentage')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'roomDensity', 'error')} ">
	<label for="roomDensity">
		<g:message code="activityArea.roomDensity.label" default="Room Density" />
		
	</label>
	<g:field name="roomDensity" value="${fieldValue(bean: activityAreaInstance, field: 'roomDensity')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'numOfBusinesses', 'error')} ">
	<label for="numOfBusinesses">
		<g:message code="activityArea.numOfBusinesses.label" default="Num Of Businesses" />
		
	</label>
	<g:field name="numOfBusinesses" type="number" value="${activityAreaInstance.numOfBusinesses}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'weeklyHoursParkingAccess', 'error')} ">
	<label for="weeklyHoursParkingAccess">
		<g:message code="activityArea.weeklyHoursParkingAccess.label" default="Weekly Hours Parking Access" />
		
	</label>
	<g:field name="weeklyHoursParkingAccess" value="${fieldValue(bean: activityAreaInstance, field: 'weeklyHoursParkingAccess')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'k12SchoolsOpenWeekend', 'error')} ">
	<label for="k12SchoolsOpenWeekend">
		<g:message code="activityArea.k12SchoolsOpenWeekend.label" default="K12 Schools Open Weekend" />
		
	</label>
	<g:checkBox name="k12SchoolsOpenWeekend" value="${activityAreaInstance?.k12SchoolsOpenWeekend}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'floorAreaFullSpas', 'error')} ">
	<label for="floorAreaFullSpas">
		<g:message code="activityArea.floorAreaFullSpas.label" default="Floor Area Full Spas" />
		
	</label>
	<g:field name="floorAreaFullSpas" value="${fieldValue(bean: activityAreaInstance, field: 'floorAreaFullSpas')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'floorAreaOfGym', 'error')} ">
	<label for="floorAreaOfGym">
		<g:message code="activityArea.floorAreaOfGym.label" default="Floor Area Of Gym" />
		
	</label>
	<g:field name="floorAreaOfGym" value="${fieldValue(bean: activityAreaInstance, field: 'floorAreaOfGym')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'dormComputerLab', 'error')} ">
	<label for="dormComputerLab">
		<g:message code="activityArea.dormComputerLab.label" default="Dorm Computer Lab" />
		
	</label>
	<g:checkBox name="dormComputerLab" value="${activityAreaInstance?.dormComputerLab}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'hospitalTertiaryCare', 'error')} ">
	<label for="hospitalTertiaryCare">
		<g:message code="activityArea.hospitalTertiaryCare.label" default="Hospital Tertiary Care" />
		
	</label>
	<g:checkBox name="hospitalTertiaryCare" value="${activityAreaInstance?.hospitalTertiaryCare}" />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="activityArea.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${activityAreaInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="activityArea.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${activityAreaInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'activityAreaTypeLookup', 'error')} required">
	<label for="activityAreaTypeLookup">
		<g:message code="activityArea.activityAreaTypeLookup.label" default="Activity Area Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="activityAreaTypeLookup" name="activityAreaTypeLookup.id" from="${gov.doe.seed.ActivityAreaTypeLookup.list()}" optionKey="id" required="" value="${activityAreaInstance?.activityAreaTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="activityArea.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${activityAreaInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="activityArea.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${activityAreaInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: activityAreaInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="activityArea.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${activityAreaInstance?.updatedDate}"  />
</div>

