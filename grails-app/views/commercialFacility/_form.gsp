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
<%@ page import="gov.doe.seed.CommercialFacility" %>



<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'percentOccupiedByOwner', 'error')} ">
	<label for="percentOccupiedByOwner">
		<g:message code="commercialFacility.percentOccupiedByOwner.label" default="Percent Occupied By Owner" />
		
	</label>
	<g:field name="percentOccupiedByOwner" value="${fieldValue(bean: commercialFacilityInstance, field: 'percentOccupiedByOwner')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'noOfActivityAreas', 'error')} ">
	<label for="noOfActivityAreas">
		<g:message code="commercialFacility.noOfActivityAreas.label" default="No Of Activity Areas" />
		
	</label>
	<g:field name="noOfActivityAreas" type="number" value="${commercialFacilityInstance.noOfActivityAreas}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'naicsCode', 'error')} ">
	<label for="naicsCode">
		<g:message code="commercialFacility.naicsCode.label" default="Naics Code" />
		
	</label>
	<g:textField name="naicsCode" maxlength="45" value="${commercialFacilityInstance?.naicsCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'ownerCareOfName', 'error')} ">
	<label for="ownerCareOfName">
		<g:message code="commercialFacility.ownerCareOfName.label" default="Owner Care Of Name" />
		
	</label>
	<g:textField name="ownerCareOfName" maxlength="45" value="${commercialFacilityInstance?.ownerCareOfName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'basementFloorArea', 'error')} ">
	<label for="basementFloorArea">
		<g:message code="commercialFacility.basementFloorArea.label" default="Basement Floor Area" />
		
	</label>
	<g:field name="basementFloorArea" value="${fieldValue(bean: commercialFacilityInstance, field: 'basementFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'buildingOperator', 'error')} ">
	<label for="buildingOperator">
		<g:message code="commercialFacility.buildingOperator.label" default="Building Operator" />
		
	</label>
	<g:textField name="buildingOperator" maxlength="100" value="${commercialFacilityInstance?.buildingOperator}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'buildingOperatorCertNum', 'error')} ">
	<label for="buildingOperatorCertNum">
		<g:message code="commercialFacility.buildingOperatorCertNum.label" default="Building Operator Cert Num" />
		
	</label>
	<g:textField name="buildingOperatorCertNum" maxlength="45" value="${commercialFacilityInstance?.buildingOperatorCertNum}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'buildingOperatorCertState', 'error')} ">
	<label for="buildingOperatorCertState">
		<g:message code="commercialFacility.buildingOperatorCertState.label" default="Building Operator Cert State" />
		
	</label>
	<g:textField name="buildingOperatorCertState" maxlength="45" value="${commercialFacilityInstance?.buildingOperatorCertState}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="commercialFacility.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${commercialFacilityInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="commercialFacility.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${commercialFacilityInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'buildingOperCertLookup', 'error')} required">
	<label for="buildingOperCertLookup">
		<g:message code="commercialFacility.buildingOperCertLookup.label" default="Building Oper Cert Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="buildingOperCertLookup" name="buildingOperCertLookup.id" from="${gov.doe.seed.BuildingOperCertLookup.list()}" optionKey="id" required="" value="${commercialFacilityInstance?.buildingOperCertLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'commercialFacilityLookup', 'error')} required">
	<label for="commercialFacilityLookup">
		<g:message code="commercialFacility.commercialFacilityLookup.label" default="Commercial Facility Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="commercialFacilityLookup" name="commercialFacilityLookup.id" from="${gov.doe.seed.CommercialFacilityLookup.list()}" optionKey="id" required="" value="${commercialFacilityInstance?.commercialFacilityLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="commercialFacility.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${commercialFacilityInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="commercialFacility.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${commercialFacilityInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'ownerTypeLookup', 'error')} required">
	<label for="ownerTypeLookup">
		<g:message code="commercialFacility.ownerTypeLookup.label" default="Owner Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ownerTypeLookup" name="ownerTypeLookup.id" from="${gov.doe.seed.OwnerTypeLookup.list()}" optionKey="id" required="" value="${commercialFacilityInstance?.ownerTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commercialFacilityInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="commercialFacility.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${commercialFacilityInstance?.updatedDate}"  />
</div>

