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



<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'percOccupiedOwner', 'error')} ">
	<label for="percOccupiedOwner">
		<g:message code="residentialFacility.percOccupiedOwner.label" default="Perc Occupied Owner" />
		
	</label>
	<g:field name="percOccupiedOwner" value="${fieldValue(bean: residentialFacilityInstance, field: 'percOccupiedOwner')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'basementHeatedFloorArea', 'error')} ">
	<label for="basementHeatedFloorArea">
		<g:message code="residentialFacility.basementHeatedFloorArea.label" default="Basement Heated Floor Area" />
		
	</label>
	<g:field name="basementHeatedFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'basementHeatedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'basementCooledFloorArea', 'error')} ">
	<label for="basementCooledFloorArea">
		<g:message code="residentialFacility.basementCooledFloorArea.label" default="Basement Cooled Floor Area" />
		
	</label>
	<g:field name="basementCooledFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'basementCooledFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'atticFloorArea', 'error')} ">
	<label for="atticFloorArea">
		<g:message code="residentialFacility.atticFloorArea.label" default="Attic Floor Area" />
		
	</label>
	<g:field name="atticFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'atticFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'atticHeatedFloorArea', 'error')} ">
	<label for="atticHeatedFloorArea">
		<g:message code="residentialFacility.atticHeatedFloorArea.label" default="Attic Heated Floor Area" />
		
	</label>
	<g:field name="atticHeatedFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'atticHeatedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'atticCooledFloorArea', 'error')} ">
	<label for="atticCooledFloorArea">
		<g:message code="residentialFacility.atticCooledFloorArea.label" default="Attic Cooled Floor Area" />
		
	</label>
	<g:field name="atticCooledFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'atticCooledFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'garageFloorArea', 'error')} ">
	<label for="garageFloorArea">
		<g:message code="residentialFacility.garageFloorArea.label" default="Garage Floor Area" />
		
	</label>
	<g:field name="garageFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'garageFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'garageHeatedFloorArea', 'error')} ">
	<label for="garageHeatedFloorArea">
		<g:message code="residentialFacility.garageHeatedFloorArea.label" default="Garage Heated Floor Area" />
		
	</label>
	<g:field name="garageHeatedFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'garageHeatedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'garageCooledFloorArea', 'error')} ">
	<label for="garageCooledFloorArea">
		<g:message code="residentialFacility.garageCooledFloorArea.label" default="Garage Cooled Floor Area" />
		
	</label>
	<g:field name="garageCooledFloorArea" value="${fieldValue(bean: residentialFacilityInstance, field: 'garageCooledFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfDwellingUnits', 'error')} ">
	<label for="numOfDwellingUnits">
		<g:message code="residentialFacility.numOfDwellingUnits.label" default="Num Of Dwelling Units" />
		
	</label>
	<g:field name="numOfDwellingUnits" type="number" value="${residentialFacilityInstance.numOfDwellingUnits}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfBedrooms', 'error')} ">
	<label for="numOfBedrooms">
		<g:message code="residentialFacility.numOfBedrooms.label" default="Num Of Bedrooms" />
		
	</label>
	<g:field name="numOfBedrooms" type="number" value="${residentialFacilityInstance.numOfBedrooms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfCompleteBaths', 'error')} ">
	<label for="numOfCompleteBaths">
		<g:message code="residentialFacility.numOfCompleteBaths.label" default="Num Of Complete Baths" />
		
	</label>
	<g:field name="numOfCompleteBaths" type="number" value="${residentialFacilityInstance.numOfCompleteBaths}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfHalfBaths', 'error')} ">
	<label for="numOfHalfBaths">
		<g:message code="residentialFacility.numOfHalfBaths.label" default="Num Of Half Baths" />
		
	</label>
	<g:field name="numOfHalfBaths" type="number" value="${residentialFacilityInstance.numOfHalfBaths}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfRooms', 'error')} ">
	<label for="numOfRooms">
		<g:message code="residentialFacility.numOfRooms.label" default="Num Of Rooms" />
		
	</label>
	<g:field name="numOfRooms" type="number" value="${residentialFacilityInstance.numOfRooms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfOccupants', 'error')} ">
	<label for="numOfOccupants">
		<g:message code="residentialFacility.numOfOccupants.label" default="Num Of Occupants" />
		
	</label>
	<g:field name="numOfOccupants" type="number" value="${residentialFacilityInstance.numOfOccupants}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'yearCompletedRange', 'error')} ">
	<label for="yearCompletedRange">
		<g:message code="residentialFacility.yearCompletedRange.label" default="Year Completed Range" />
		
	</label>
	<g:textField name="yearCompletedRange" maxlength="45" value="${residentialFacilityInstance?.yearCompletedRange}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfFloorPlans', 'error')} ">
	<label for="numOfFloorPlans">
		<g:message code="residentialFacility.numOfFloorPlans.label" default="Num Of Floor Plans" />
		
	</label>
	<g:field name="numOfFloorPlans" type="number" value="${residentialFacilityInstance.numOfFloorPlans}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfUnitsPerFloorPlan', 'error')} ">
	<label for="numOfUnitsPerFloorPlan">
		<g:message code="residentialFacility.numOfUnitsPerFloorPlan.label" default="Num Of Units Per Floor Plan" />
		
	</label>
	<g:field name="numOfUnitsPerFloorPlan" type="number" value="${residentialFacilityInstance.numOfUnitsPerFloorPlan}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'govtSubsidizedHousing', 'error')} ">
	<label for="govtSubsidizedHousing">
		<g:message code="residentialFacility.govtSubsidizedHousing.label" default="Govt Subsidized Housing" />
		
	</label>
	<g:field name="govtSubsidizedHousing" type="number" value="${residentialFacilityInstance.govtSubsidizedHousing}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfAdults', 'error')} ">
	<label for="numOfAdults">
		<g:message code="residentialFacility.numOfAdults.label" default="Num Of Adults" />
		
	</label>
	<g:field name="numOfAdults" type="number" value="${residentialFacilityInstance.numOfAdults}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfChildren', 'error')} ">
	<label for="numOfChildren">
		<g:message code="residentialFacility.numOfChildren.label" default="Num Of Children" />
		
	</label>
	<g:field name="numOfChildren" type="number" value="${residentialFacilityInstance.numOfChildren}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'numOfNonBedrooms', 'error')} ">
	<label for="numOfNonBedrooms">
		<g:message code="residentialFacility.numOfNonBedrooms.label" default="Num Of Non Bedrooms" />
		
	</label>
	<g:field name="numOfNonBedrooms" type="number" value="${residentialFacilityInstance.numOfNonBedrooms}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="residentialFacility.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${residentialFacilityInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="residentialFacility.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${residentialFacilityInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'updatedDate', 'error')} ">
	<label for="updatedDate">
		<g:message code="residentialFacility.updatedDate.label" default="Updated Date" />
		
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${residentialFacilityInstance?.updatedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="residentialFacility.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${residentialFacilityInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="residentialFacility.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'floorPlanTypeLookup', 'error')} required">
	<label for="floorPlanTypeLookup">
		<g:message code="residentialFacility.floorPlanTypeLookup.label" default="Floor Plan Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorPlanTypeLookup" name="floorPlanTypeLookup.id" from="${gov.doe.seed.FloorPlanTypeLookup.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.floorPlanTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'householdTypeLookup', 'error')} required">
	<label for="householdTypeLookup">
		<g:message code="residentialFacility.householdTypeLookup.label" default="Household Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="householdTypeLookup" name="householdTypeLookup.id" from="${gov.doe.seed.HouseholdTypeLookup.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.householdTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'occupantEducationLookup', 'error')} required">
	<label for="occupantEducationLookup">
		<g:message code="residentialFacility.occupantEducationLookup.label" default="Occupant Education Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="occupantEducationLookup" name="occupantEducationLookup.id" from="${gov.doe.seed.OccupantEducationLookup.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.occupantEducationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'occupantIncomeLookup', 'error')} required">
	<label for="occupantIncomeLookup">
		<g:message code="residentialFacility.occupantIncomeLookup.label" default="Occupant Income Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="occupantIncomeLookup" name="occupantIncomeLookup.id" from="${gov.doe.seed.OccupantIncomeLookup.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.occupantIncomeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'resFacilityTypeLookup', 'error')} required">
	<label for="resFacilityTypeLookup">
		<g:message code="residentialFacility.resFacilityTypeLookup.label" default="Res Facility Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resFacilityTypeLookup" name="resFacilityTypeLookup.id" from="${gov.doe.seed.ResFacilityTypeLookup.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.resFacilityTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: residentialFacilityInstance, field: 'resPopulationLookup', 'error')} required">
	<label for="resPopulationLookup">
		<g:message code="residentialFacility.resPopulationLookup.label" default="Res Population Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="resPopulationLookup" name="resPopulationLookup.id" from="${gov.doe.seed.ResPopulationLookup.list()}" optionKey="id" required="" value="${residentialFacilityInstance?.resPopulationLookup?.id}" class="many-to-one"/>
</div>

