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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'site.label', default: 'Site')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-site" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-site" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list site">
			
				<g:if test="${siteInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="site.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${siteInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="site.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${siteInstance}" field="state"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.postalCode}">
				<li class="fieldcontain">
					<span id="postalCode-label" class="property-label"><g:message code="site.postalCode.label" default="Postal Code" /></span>
					
						<span class="property-value" aria-labelledby="postalCode-label"><g:fieldValue bean="${siteInstance}" field="postalCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.county}">
				<li class="fieldcontain">
					<span id="county-label" class="property-label"><g:message code="site.county.label" default="County" /></span>
					
						<span class="property-value" aria-labelledby="county-label"><g:fieldValue bean="${siteInstance}" field="county"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.country}">
				<li class="fieldcontain">
					<span id="country-label" class="property-label"><g:message code="site.country.label" default="Country" /></span>
					
						<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${siteInstance}" field="country"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.elevation}">
				<li class="fieldcontain">
					<span id="elevation-label" class="property-label"><g:message code="site.elevation.label" default="Elevation" /></span>
					
						<span class="property-value" aria-labelledby="elevation-label"><g:fieldValue bean="${siteInstance}" field="elevation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.numOfFacilities}">
				<li class="fieldcontain">
					<span id="numOfFacilities-label" class="property-label"><g:message code="site.numOfFacilities.label" default="Num Of Facilities" /></span>
					
						<span class="property-value" aria-labelledby="numOfFacilities-label"><g:fieldValue bean="${siteInstance}" field="numOfFacilities"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.schoolDistrict}">
				<li class="fieldcontain">
					<span id="schoolDistrict-label" class="property-label"><g:message code="site.schoolDistrict.label" default="School District" /></span>
					
						<span class="property-value" aria-labelledby="schoolDistrict-label"><g:fieldValue bean="${siteInstance}" field="schoolDistrict"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.egridRegion}">
				<li class="fieldcontain">
					<span id="egridRegion-label" class="property-label"><g:message code="site.egridRegion.label" default="Egrid Region" /></span>
					
						<span class="property-value" aria-labelledby="egridRegion-label"><g:fieldValue bean="${siteInstance}" field="egridRegion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.taxFloorArea}">
				<li class="fieldcontain">
					<span id="taxFloorArea-label" class="property-label"><g:message code="site.taxFloorArea.label" default="Tax Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="taxFloorArea-label"><g:fieldValue bean="${siteInstance}" field="taxFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.address1}">
				<li class="fieldcontain">
					<span id="address1-label" class="property-label"><g:message code="site.address1.label" default="Address1" /></span>
					
						<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${siteInstance}" field="address1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.address2}">
				<li class="fieldcontain">
					<span id="address2-label" class="property-label"><g:message code="site.address2.label" default="Address2" /></span>
					
						<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${siteInstance}" field="address2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="site.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${siteInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="site.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${siteInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="site.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${siteInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="site.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${siteInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.climateZoneLookup}">
				<li class="fieldcontain">
					<span id="climateZoneLookup-label" class="property-label"><g:message code="site.climateZoneLookup.label" default="Climate Zone Lookup" /></span>
					
						<span class="property-value" aria-labelledby="climateZoneLookup-label"><g:link controller="climateZoneLookup" action="show" id="${siteInstance?.climateZoneLookup?.id}">${siteInstance?.climateZoneLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="site.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${siteInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.facilities}">
				<li class="fieldcontain">
					<span id="facilities-label" class="property-label"><g:message code="site.facilities.label" default="Facilities" /></span>
					
						<g:each in="${siteInstance.facilities}" var="f">
						<span class="property-value" aria-labelledby="facilities-label"><g:link controller="facility" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.siteCityCodes}">
				<li class="fieldcontain">
					<span id="siteCityCodes-label" class="property-label"><g:message code="site.siteCityCodes.label" default="Site City Codes" /></span>
					
						<g:each in="${siteInstance.siteCityCodes}" var="s">
						<span class="property-value" aria-labelledby="siteCityCodes-label"><g:link controller="siteCityCode" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.siteComplexTypeLookup}">
				<li class="fieldcontain">
					<span id="siteComplexTypeLookup-label" class="property-label"><g:message code="site.siteComplexTypeLookup.label" default="Site Complex Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="siteComplexTypeLookup-label"><g:link controller="siteComplexTypeLookup" action="show" id="${siteInstance?.siteComplexTypeLookup?.id}">${siteInstance?.siteComplexTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.siteTypeLookup}">
				<li class="fieldcontain">
					<span id="siteTypeLookup-label" class="property-label"><g:message code="site.siteTypeLookup.label" default="Site Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="siteTypeLookup-label"><g:link controller="siteTypeLookup" action="show" id="${siteInstance?.siteTypeLookup?.id}">${siteInstance?.siteTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${siteInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="site.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${siteInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${siteInstance?.id}" />
					<g:link class="edit" action="edit" id="${siteInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
