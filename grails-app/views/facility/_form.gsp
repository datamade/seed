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



<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'operatorTypeIdFk', 'error')} ">
	<label for="operatorTypeIdFk">
		<g:message code="facility.operatorTypeIdFk.label" default="Operator Type Id Fk" />
		
	</label>
	<g:field name="operatorTypeIdFk" type="number" value="${facilityInstance.operatorTypeIdFk}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'yearCompleted', 'error')} ">
	<label for="yearCompleted">
		<g:message code="facility.yearCompleted.label" default="Year Completed" />
		
	</label>
	<g:field name="yearCompleted" type="number" value="${facilityInstance.yearCompleted}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'yearOccupied', 'error')} ">
	<label for="yearOccupied">
		<g:message code="facility.yearOccupied.label" default="Year Occupied" />
		
	</label>
	<g:field name="yearOccupied" type="number" value="${facilityInstance.yearOccupied}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'bldgFootprintArea', 'error')} ">
	<label for="bldgFootprintArea">
		<g:message code="facility.bldgFootprintArea.label" default="Bldg Footprint Area" />
		
	</label>
	<g:field name="bldgFootprintArea" value="${fieldValue(bean: facilityInstance, field: 'bldgFootprintArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'perimeter', 'error')} ">
	<label for="perimeter">
		<g:message code="facility.perimeter.label" default="Perimeter" />
		
	</label>
	<g:field name="perimeter" value="${fieldValue(bean: facilityInstance, field: 'perimeter')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'grossFloorArea', 'error')} ">
	<label for="grossFloorArea">
		<g:message code="facility.grossFloorArea.label" default="Gross Floor Area" />
		
	</label>
	<g:field name="grossFloorArea" value="${fieldValue(bean: facilityInstance, field: 'grossFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'netFloorArea', 'error')} ">
	<label for="netFloorArea">
		<g:message code="facility.netFloorArea.label" default="Net Floor Area" />
		
	</label>
	<g:field name="netFloorArea" value="${fieldValue(bean: facilityInstance, field: 'netFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'rentableFloorArea', 'error')} ">
	<label for="rentableFloorArea">
		<g:message code="facility.rentableFloorArea.label" default="Rentable Floor Area" />
		
	</label>
	<g:field name="rentableFloorArea" value="${fieldValue(bean: facilityInstance, field: 'rentableFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'occupiedFloorArea', 'error')} ">
	<label for="occupiedFloorArea">
		<g:message code="facility.occupiedFloorArea.label" default="Occupied Floor Area" />
		
	</label>
	<g:field name="occupiedFloorArea" value="${fieldValue(bean: facilityInstance, field: 'occupiedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'percentageOfCommon', 'error')} ">
	<label for="percentageOfCommon">
		<g:message code="facility.percentageOfCommon.label" default="Percentage Of Common" />
		
	</label>
	<g:field name="percentageOfCommon" value="${fieldValue(bean: facilityInstance, field: 'percentageOfCommon')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'lightedFloorArea', 'error')} ">
	<label for="lightedFloorArea">
		<g:message code="facility.lightedFloorArea.label" default="Lighted Floor Area" />
		
	</label>
	<g:field name="lightedFloorArea" value="${fieldValue(bean: facilityInstance, field: 'lightedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'heatedFloorArea', 'error')} ">
	<label for="heatedFloorArea">
		<g:message code="facility.heatedFloorArea.label" default="Heated Floor Area" />
		
	</label>
	<g:field name="heatedFloorArea" value="${fieldValue(bean: facilityInstance, field: 'heatedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'cooledFloorArea', 'error')} ">
	<label for="cooledFloorArea">
		<g:message code="facility.cooledFloorArea.label" default="Cooled Floor Area" />
		
	</label>
	<g:field name="cooledFloorArea" value="${fieldValue(bean: facilityInstance, field: 'cooledFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'unconditionalFloorArea', 'error')} ">
	<label for="unconditionalFloorArea">
		<g:message code="facility.unconditionalFloorArea.label" default="Unconditional Floor Area" />
		
	</label>
	<g:field name="unconditionalFloorArea" value="${fieldValue(bean: facilityInstance, field: 'unconditionalFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'volume', 'error')} ">
	<label for="volume">
		<g:message code="facility.volume.label" default="Volume" />
		
	</label>
	<g:field name="volume" value="${fieldValue(bean: facilityInstance, field: 'volume')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'conditionedBldgVol', 'error')} ">
	<label for="conditionedBldgVol">
		<g:message code="facility.conditionedBldgVol.label" default="Conditioned Bldg Vol" />
		
	</label>
	<g:field name="conditionedBldgVol" value="${fieldValue(bean: facilityInstance, field: 'conditionedBldgVol')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'aspectRatio', 'error')} ">
	<label for="aspectRatio">
		<g:message code="facility.aspectRatio.label" default="Aspect Ratio" />
		
	</label>
	<g:field name="aspectRatio" value="${fieldValue(bean: facilityInstance, field: 'aspectRatio')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'numberOfFloors', 'error')} ">
	<label for="numberOfFloors">
		<g:message code="facility.numberOfFloors.label" default="Number Of Floors" />
		
	</label>
	<g:field name="numberOfFloors" type="number" value="${facilityInstance.numberOfFloors}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'floorsAboveGround', 'error')} ">
	<label for="floorsAboveGround">
		<g:message code="facility.floorsAboveGround.label" default="Floors Above Ground" />
		
	</label>
	<g:field name="floorsAboveGround" type="number" value="${facilityInstance.floorsAboveGround}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'floorsBelowGround', 'error')} ">
	<label for="floorsBelowGround">
		<g:message code="facility.floorsBelowGround.label" default="Floors Below Ground" />
		
	</label>
	<g:field name="floorsBelowGround" type="number" value="${facilityInstance.floorsBelowGround}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'numberOfResidentsOccupants', 'error')} ">
	<label for="numberOfResidentsOccupants">
		<g:message code="facility.numberOfResidentsOccupants.label" default="Number Of Residents Occupants" />
		
	</label>
	<g:field name="numberOfResidentsOccupants" type="number" value="${facilityInstance.numberOfResidentsOccupants}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'yearOfLastRemodel', 'error')} ">
	<label for="yearOfLastRemodel">
		<g:message code="facility.yearOfLastRemodel.label" default="Year Of Last Remodel" />
		
	</label>
	<g:field name="yearOfLastRemodel" type="number" value="${facilityInstance.yearOfLastRemodel}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'facilityTaxFloorArea', 'error')} ">
	<label for="facilityTaxFloorArea">
		<g:message code="facility.facilityTaxFloorArea.label" default="Facility Tax Floor Area" />
		
	</label>
	<g:field name="facilityTaxFloorArea" value="${fieldValue(bean: facilityInstance, field: 'facilityTaxFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'enclosedFloorArea', 'error')} ">
	<label for="enclosedFloorArea">
		<g:message code="facility.enclosedFloorArea.label" default="Enclosed Floor Area" />
		
	</label>
	<g:field name="enclosedFloorArea" value="${fieldValue(bean: facilityInstance, field: 'enclosedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'conditionedFloorArea', 'error')} ">
	<label for="conditionedFloorArea">
		<g:message code="facility.conditionedFloorArea.label" default="Conditioned Floor Area" />
		
	</label>
	<g:field name="conditionedFloorArea" value="${fieldValue(bean: facilityInstance, field: 'conditionedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'semiConditionedFloorArea', 'error')} ">
	<label for="semiConditionedFloorArea">
		<g:message code="facility.semiConditionedFloorArea.label" default="Semi Conditioned Floor Area" />
		
	</label>
	<g:field name="semiConditionedFloorArea" value="${fieldValue(bean: facilityInstance, field: 'semiConditionedFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'heatedOnlyFloorArea', 'error')} ">
	<label for="heatedOnlyFloorArea">
		<g:message code="facility.heatedOnlyFloorArea.label" default="Heated Only Floor Area" />
		
	</label>
	<g:field name="heatedOnlyFloorArea" value="${fieldValue(bean: facilityInstance, field: 'heatedOnlyFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'cooledOnlyFloorArea', 'error')} ">
	<label for="cooledOnlyFloorArea">
		<g:message code="facility.cooledOnlyFloorArea.label" default="Cooled Only Floor Area" />
		
	</label>
	<g:field name="cooledOnlyFloorArea" value="${fieldValue(bean: facilityInstance, field: 'cooledOnlyFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'heatedAndCooledFloorArea', 'error')} ">
	<label for="heatedAndCooledFloorArea">
		<g:message code="facility.heatedAndCooledFloorArea.label" default="Heated And Cooled Floor Area" />
		
	</label>
	<g:field name="heatedAndCooledFloorArea" value="${fieldValue(bean: facilityInstance, field: 'heatedAndCooledFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'nonenclosedFloorAreaWithRoof', 'error')} ">
	<label for="nonenclosedFloorAreaWithRoof">
		<g:message code="facility.nonenclosedFloorAreaWithRoof.label" default="Nonenclosed Floor Area With Roof" />
		
	</label>
	<g:field name="nonenclosedFloorAreaWithRoof" value="${fieldValue(bean: facilityInstance, field: 'nonenclosedFloorAreaWithRoof')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'openFloorAreaWithoutRoof', 'error')} ">
	<label for="openFloorAreaWithoutRoof">
		<g:message code="facility.openFloorAreaWithoutRoof.label" default="Open Floor Area Without Roof" />
		
	</label>
	<g:field name="openFloorAreaWithoutRoof" value="${fieldValue(bean: facilityInstance, field: 'openFloorAreaWithoutRoof')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'basementFloorArea', 'error')} ">
	<label for="basementFloorArea">
		<g:message code="facility.basementFloorArea.label" default="Basement Floor Area" />
		
	</label>
	<g:field name="basementFloorArea" value="${fieldValue(bean: facilityInstance, field: 'basementFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'facilityHeight', 'error')} ">
	<label for="facilityHeight">
		<g:message code="facility.facilityHeight.label" default="Facility Height" />
		
	</label>
	<g:field name="facilityHeight" value="${fieldValue(bean: facilityInstance, field: 'facilityHeight')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'floorToFloorHeight', 'error')} ">
	<label for="floorToFloorHeight">
		<g:message code="facility.floorToFloorHeight.label" default="Floor To Floor Height" />
		
	</label>
	<g:field name="floorToFloorHeight" value="${fieldValue(bean: facilityInstance, field: 'floorToFloorHeight')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'numOfFloors', 'error')} ">
	<label for="numOfFloors">
		<g:message code="facility.numOfFloors.label" default="Num Of Floors" />
		
	</label>
	<g:field name="numOfFloors" type="number" value="${facilityInstance.numOfFloors}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'numOfCondFloorsAboveGnd', 'error')} ">
	<label for="numOfCondFloorsAboveGnd">
		<g:message code="facility.numOfCondFloorsAboveGnd.label" default="Num Of Cond Floors Above Gnd" />
		
	</label>
	<g:field name="numOfCondFloorsAboveGnd" type="number" value="${facilityInstance.numOfCondFloorsAboveGnd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'numOfConditionedFloorsBelowGnd', 'error')} ">
	<label for="numOfConditionedFloorsBelowGnd">
		<g:message code="facility.numOfConditionedFloorsBelowGnd.label" default="Num Of Conditioned Floors Below Gnd" />
		
	</label>
	<g:field name="numOfConditionedFloorsBelowGnd" type="number" value="${facilityInstance.numOfConditionedFloorsBelowGnd}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'facilityName', 'error')} ">
	<label for="facilityName">
		<g:message code="facility.facilityName.label" default="Facility Name" />
		
	</label>
	<g:textField name="facilityName" maxlength="150" value="${facilityInstance?.facilityName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="facility.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" maxlength="100" value="${facilityInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="facility.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" maxlength="100" value="${facilityInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'facilityContact', 'error')} ">
	<label for="facilityContact">
		<g:message code="facility.facilityContact.label" default="Facility Contact" />
		
	</label>
	<g:textField name="facilityContact" maxlength="100" value="${facilityInstance?.facilityContact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'facilityPhone', 'error')} ">
	<label for="facilityPhone">
		<g:message code="facility.facilityPhone.label" default="Facility Phone" />
		
	</label>
	<g:textField name="facilityPhone" maxlength="45" value="${facilityInstance?.facilityPhone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'agency', 'error')} ">
	<label for="agency">
		<g:message code="facility.agency.label" default="Agency" />
		
	</label>
	<g:textField name="agency" maxlength="45" value="${facilityInstance?.agency}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'department', 'error')} ">
	<label for="department">
		<g:message code="facility.department.label" default="Department" />
		
	</label>
	<g:textField name="department" maxlength="45" value="${facilityInstance?.department}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'pmUniqueBldIdentifier', 'error')} ">
	<label for="pmUniqueBldIdentifier">
		<g:message code="facility.pmUniqueBldIdentifier.label" default="Pm Unique Bld Identifier" />
		
	</label>
	<g:textField name="pmUniqueBldIdentifier" maxlength="45" value="${facilityInstance?.pmUniqueBldIdentifier}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'yearPmBenchmarked', 'error')} ">
	<label for="yearPmBenchmarked">
		<g:message code="facility.yearPmBenchmarked.label" default="Year Pm Benchmarked" />
		
	</label>
	<g:field name="yearPmBenchmarked" type="number" value="${facilityInstance.yearPmBenchmarked}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'federalRealPropertyId', 'error')} ">
	<label for="federalRealPropertyId">
		<g:message code="facility.federalRealPropertyId.label" default="Federal Real Property Id" />
		
	</label>
	<g:textField name="federalRealPropertyId" maxlength="45" value="${facilityInstance?.federalRealPropertyId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'administrator', 'error')} ">
	<label for="administrator">
		<g:message code="facility.administrator.label" default="Administrator" />
		
	</label>
	<g:textField name="administrator" maxlength="100" value="${facilityInstance?.administrator}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'sharedBy', 'error')} ">
	<label for="sharedBy">
		<g:message code="facility.sharedBy.label" default="Shared By" />
		
	</label>
	<g:textField name="sharedBy" maxlength="45" value="${facilityInstance?.sharedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'pmLastModifiedDate', 'error')} ">
	<label for="pmLastModifiedDate">
		<g:message code="facility.pmLastModifiedDate.label" default="Pm Last Modified Date" />
		
	</label>
	<g:datePicker name="pmLastModifiedDate" precision="day"  value="${facilityInstance?.pmLastModifiedDate}" default="none" noSelection="['': '']" />
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'baselineRating', 'error')} ">
	<label for="baselineRating">
		<g:message code="facility.baselineRating.label" default="Baseline Rating" />
		
	</label>
	<g:textField name="baselineRating" maxlength="45" value="${facilityInstance?.baselineRating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'targetRating', 'error')} ">
	<label for="targetRating">
		<g:message code="facility.targetRating.label" default="Target Rating" />
		
	</label>
	<g:textField name="targetRating" maxlength="45" value="${facilityInstance?.targetRating}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'federalSustainabilityPercent', 'error')} ">
	<label for="federalSustainabilityPercent">
		<g:message code="facility.federalSustainabilityPercent.label" default="Federal Sustainability Percent" />
		
	</label>
	<g:textField name="federalSustainabilityPercent" maxlength="45" value="${facilityInstance?.federalSustainabilityPercent}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="facility.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${facilityInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'serviceProductProvider', 'error')} ">
	<label for="serviceProductProvider">
		<g:message code="facility.serviceProductProvider.label" default="Service Product Provider" />
		
	</label>
	<g:textField name="serviceProductProvider" maxlength="45" value="${facilityInstance?.serviceProductProvider}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="facility.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${facilityInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="facility.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${facilityInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'activityAreas', 'error')} ">
	<label for="activityAreas">
		<g:message code="facility.activityAreas.label" default="Activity Areas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.activityAreas?}" var="a">
    <li><g:link controller="activityArea" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="activityArea" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'activityArea.label', default: 'ActivityArea')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'buildingProfileStatusLookup', 'error')} required">
	<label for="buildingProfileStatusLookup">
		<g:message code="facility.buildingProfileStatusLookup.label" default="Building Profile Status Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingProfileStatusLookup" name="buildingProfileStatusLookup.id" from="${gov.doe.seed.BuildingProfileStatusLookup.list()}" optionKey="id" required="" value="${facilityInstance?.buildingProfileStatusLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'certificationRatings', 'error')} ">
	<label for="certificationRatings">
		<g:message code="facility.certificationRatings.label" default="Certification Ratings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.certificationRatings?}" var="c">
    <li><g:link controller="certificationRating" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="certificationRating" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'certificationRating.label', default: 'CertificationRating')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'commercialFacilities', 'error')} ">
	<label for="commercialFacilities">
		<g:message code="facility.commercialFacilities.label" default="Commercial Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.commercialFacilities?}" var="c">
    <li><g:link controller="commercialFacility" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="commercialFacility" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commercialFacility.label', default: 'CommercialFacility')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="facility.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${facilityInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'energyEfficiencyMeasures', 'error')} ">
	<label for="energyEfficiencyMeasures">
		<g:message code="facility.energyEfficiencyMeasures.label" default="Energy Efficiency Measures" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.energyEfficiencyMeasures?}" var="e">
    <li><g:link controller="energyEfficiencyMeasure" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyEfficiencyMeasure" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyEfficiencyMeasure.label', default: 'EnergyEfficiencyMeasure')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'energyStarApplications', 'error')} ">
	<label for="energyStarApplications">
		<g:message code="facility.energyStarApplications.label" default="Energy Star Applications" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.energyStarApplications?}" var="e">
    <li><g:link controller="energyStarApplication" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyStarApplication" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyStarApplication.label', default: 'EnergyStarApplication')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'energyUseMetrics', 'error')} ">
	<label for="energyUseMetrics">
		<g:message code="facility.energyUseMetrics.label" default="Energy Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.energyUseMetrics?}" var="e">
    <li><g:link controller="energyUseMetric" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="energyUseMetric" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'energyUseMetric.label', default: 'EnergyUseMetric')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'facilityTypeLookup', 'error')} required">
	<label for="facilityTypeLookup">
		<g:message code="facility.facilityTypeLookup.label" default="Facility Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facilityTypeLookup" name="facilityTypeLookup.id" from="${gov.doe.seed.FacilityTypeLookup.list()}" optionKey="id" required="" value="${facilityInstance?.facilityTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'footprintShapeLookup', 'error')} required">
	<label for="footprintShapeLookup">
		<g:message code="facility.footprintShapeLookup.label" default="Footprint Shape Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="footprintShapeLookup" name="footprintShapeLookup.id" from="${gov.doe.seed.FootprintShapeLookup.list()}" optionKey="id" required="" value="${facilityInstance?.footprintShapeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'orientationTypeLookup', 'error')} required">
	<label for="orientationTypeLookup">
		<g:message code="facility.orientationTypeLookup.label" default="Orientation Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="orientationTypeLookup" name="orientationTypeLookup.id" from="${gov.doe.seed.OrientationTypeLookup.list()}" optionKey="id" required="" value="${facilityInstance?.orientationTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="facility.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${gov.doe.seed.Owner.list()}" optionKey="id" required="" value="${facilityInstance?.owner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'ownershipStatusLookup', 'error')} required">
	<label for="ownershipStatusLookup">
		<g:message code="facility.ownershipStatusLookup.label" default="Ownership Status Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ownershipStatusLookup" name="ownershipStatusLookup.id" from="${gov.doe.seed.OwnershipStatusLookup.list()}" optionKey="id" required="" value="${facilityInstance?.ownershipStatusLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'propertyManagement', 'error')} required">
	<label for="propertyManagement">
		<g:message code="facility.propertyManagement.label" default="Property Management" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="propertyManagement" name="propertyManagement.id" from="${gov.doe.seed.PropertyManagement.list()}" optionKey="id" required="" value="${facilityInstance?.propertyManagement?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'residentialFacilities', 'error')} ">
	<label for="residentialFacilities">
		<g:message code="facility.residentialFacilities.label" default="Residential Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.residentialFacilities?}" var="r">
    <li><g:link controller="residentialFacility" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="residentialFacility" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'residentialFacility.label', default: 'ResidentialFacility')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'site', 'error')} required">
	<label for="site">
		<g:message code="facility.site.label" default="Site" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="site" name="site.id" from="${gov.doe.seed.Site.list()}" optionKey="id" required="" value="${facilityInstance?.site?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'surroundingTypeLookup', 'error')} required">
	<label for="surroundingTypeLookup">
		<g:message code="facility.surroundingTypeLookup.label" default="Surrounding Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="surroundingTypeLookup" name="surroundingTypeLookup.id" from="${gov.doe.seed.SurroundingTypeLookup.list()}" optionKey="id" required="" value="${facilityInstance?.surroundingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'systems', 'error')} ">
	<label for="systems">
		<g:message code="facility.systems.label" default="Systems" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.systems?}" var="s">
    <li><g:link controller="system" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="system" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'system.label', default: 'System')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="facility.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${facilityInstance?.updatedDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: facilityInstance, field: 'waterUseMetrics', 'error')} ">
	<label for="waterUseMetrics">
		<g:message code="facility.waterUseMetrics.label" default="Water Use Metrics" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${facilityInstance?.waterUseMetrics?}" var="w">
    <li><g:link controller="waterUseMetric" action="show" id="${w.id}">${w?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="waterUseMetric" action="create" params="['facility.id': facilityInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'waterUseMetric.label', default: 'WaterUseMetric')])}</g:link>
</li>
</ul>

</div>

