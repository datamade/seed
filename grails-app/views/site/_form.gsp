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
<%@ page import="gov.doe.seed.Site" %>



<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="site.city.label" default="City" />
		
	</label>
	<g:textField name="city" maxlength="45" value="${siteInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="site.state.label" default="State" />
		
	</label>
	<g:textField name="state" maxlength="45" value="${siteInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'postalCode', 'error')} ">
	<label for="postalCode">
		<g:message code="site.postalCode.label" default="Postal Code" />
		
	</label>
	<g:textField name="postalCode" maxlength="45" value="${siteInstance?.postalCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'county', 'error')} ">
	<label for="county">
		<g:message code="site.county.label" default="County" />
		
	</label>
	<g:textField name="county" maxlength="45" value="${siteInstance?.county}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'country', 'error')} ">
	<label for="country">
		<g:message code="site.country.label" default="Country" />
		
	</label>
	<g:textField name="country" maxlength="45" value="${siteInstance?.country}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'elevation', 'error')} ">
	<label for="elevation">
		<g:message code="site.elevation.label" default="Elevation" />
		
	</label>
	<g:field name="elevation" value="${fieldValue(bean: siteInstance, field: 'elevation')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'numOfFacilities', 'error')} ">
	<label for="numOfFacilities">
		<g:message code="site.numOfFacilities.label" default="Num Of Facilities" />
		
	</label>
	<g:textField name="numOfFacilities" maxlength="45" value="${siteInstance?.numOfFacilities}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'schoolDistrict', 'error')} ">
	<label for="schoolDistrict">
		<g:message code="site.schoolDistrict.label" default="School District" />
		
	</label>
	<g:textField name="schoolDistrict" maxlength="50" value="${siteInstance?.schoolDistrict}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'egridRegion', 'error')} ">
	<label for="egridRegion">
		<g:message code="site.egridRegion.label" default="Egrid Region" />
		
	</label>
	<g:textField name="egridRegion" maxlength="45" value="${siteInstance?.egridRegion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'taxFloorArea', 'error')} ">
	<label for="taxFloorArea">
		<g:message code="site.taxFloorArea.label" default="Tax Floor Area" />
		
	</label>
	<g:field name="taxFloorArea" value="${fieldValue(bean: siteInstance, field: 'taxFloorArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'address1', 'error')} ">
	<label for="address1">
		<g:message code="site.address1.label" default="Address1" />
		
	</label>
	<g:textField name="address1" maxlength="100" value="${siteInstance?.address1}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'address2', 'error')} ">
	<label for="address2">
		<g:message code="site.address2.label" default="Address2" />
		
	</label>
	<g:textField name="address2" maxlength="100" value="${siteInstance?.address2}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'longitude', 'error')} ">
	<label for="longitude">
		<g:message code="site.longitude.label" default="Longitude" />
		
	</label>
	<g:textField name="longitude" maxlength="45" value="${siteInstance?.longitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'latitude', 'error')} ">
	<label for="latitude">
		<g:message code="site.latitude.label" default="Latitude" />
		
	</label>
	<g:textField name="latitude" maxlength="45" value="${siteInstance?.latitude}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="site.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${siteInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="site.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${siteInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'climateZoneLookup', 'error')} required">
	<label for="climateZoneLookup">
		<g:message code="site.climateZoneLookup.label" default="Climate Zone Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="climateZoneLookup" name="climateZoneLookup.id" from="${gov.doe.seed.ClimateZoneLookup.list()}" optionKey="id" required="" value="${siteInstance?.climateZoneLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="site.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${siteInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'facilities', 'error')} ">
	<label for="facilities">
		<g:message code="site.facilities.label" default="Facilities" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${siteInstance?.facilities?}" var="f">
    <li><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="facility" action="create" params="['site.id': siteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'facility.label', default: 'Facility')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'siteCityCodes', 'error')} ">
	<label for="siteCityCodes">
		<g:message code="site.siteCityCodes.label" default="Site City Codes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${siteInstance?.siteCityCodes?}" var="s">
    <li><g:link controller="siteCityCode" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="siteCityCode" action="create" params="['site.id': siteInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'siteCityCode.label', default: 'SiteCityCode')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'siteComplexTypeLookup', 'error')} required">
	<label for="siteComplexTypeLookup">
		<g:message code="site.siteComplexTypeLookup.label" default="Site Complex Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="siteComplexTypeLookup" name="siteComplexTypeLookup.id" from="${gov.doe.seed.SiteComplexTypeLookup.list()}" optionKey="id" required="" value="${siteInstance?.siteComplexTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'siteTypeLookup', 'error')} required">
	<label for="siteTypeLookup">
		<g:message code="site.siteTypeLookup.label" default="Site Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="siteTypeLookup" name="siteTypeLookup.id" from="${gov.doe.seed.SiteTypeLookup.list()}" optionKey="id" required="" value="${siteInstance?.siteTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="site.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${siteInstance?.updatedDate}"  />
</div>

