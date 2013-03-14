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
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commercialFacility.label', default: 'CommercialFacility')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-commercialFacility" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-commercialFacility" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list commercialFacility">
			
				<g:if test="${commercialFacilityInstance?.percentOccupiedByOwner}">
				<li class="fieldcontain">
					<span id="percentOccupiedByOwner-label" class="property-label"><g:message code="commercialFacility.percentOccupiedByOwner.label" default="Percent Occupied By Owner" /></span>
					
						<span class="property-value" aria-labelledby="percentOccupiedByOwner-label"><g:fieldValue bean="${commercialFacilityInstance}" field="percentOccupiedByOwner"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.noOfActivityAreas}">
				<li class="fieldcontain">
					<span id="noOfActivityAreas-label" class="property-label"><g:message code="commercialFacility.noOfActivityAreas.label" default="No Of Activity Areas" /></span>
					
						<span class="property-value" aria-labelledby="noOfActivityAreas-label"><g:fieldValue bean="${commercialFacilityInstance}" field="noOfActivityAreas"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.naicsCode}">
				<li class="fieldcontain">
					<span id="naicsCode-label" class="property-label"><g:message code="commercialFacility.naicsCode.label" default="Naics Code" /></span>
					
						<span class="property-value" aria-labelledby="naicsCode-label"><g:fieldValue bean="${commercialFacilityInstance}" field="naicsCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.ownerCareOfName}">
				<li class="fieldcontain">
					<span id="ownerCareOfName-label" class="property-label"><g:message code="commercialFacility.ownerCareOfName.label" default="Owner Care Of Name" /></span>
					
						<span class="property-value" aria-labelledby="ownerCareOfName-label"><g:fieldValue bean="${commercialFacilityInstance}" field="ownerCareOfName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.basementFloorArea}">
				<li class="fieldcontain">
					<span id="basementFloorArea-label" class="property-label"><g:message code="commercialFacility.basementFloorArea.label" default="Basement Floor Area" /></span>
					
						<span class="property-value" aria-labelledby="basementFloorArea-label"><g:fieldValue bean="${commercialFacilityInstance}" field="basementFloorArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.buildingOperator}">
				<li class="fieldcontain">
					<span id="buildingOperator-label" class="property-label"><g:message code="commercialFacility.buildingOperator.label" default="Building Operator" /></span>
					
						<span class="property-value" aria-labelledby="buildingOperator-label"><g:fieldValue bean="${commercialFacilityInstance}" field="buildingOperator"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.buildingOperatorCertNum}">
				<li class="fieldcontain">
					<span id="buildingOperatorCertNum-label" class="property-label"><g:message code="commercialFacility.buildingOperatorCertNum.label" default="Building Operator Cert Num" /></span>
					
						<span class="property-value" aria-labelledby="buildingOperatorCertNum-label"><g:fieldValue bean="${commercialFacilityInstance}" field="buildingOperatorCertNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.buildingOperatorCertState}">
				<li class="fieldcontain">
					<span id="buildingOperatorCertState-label" class="property-label"><g:message code="commercialFacility.buildingOperatorCertState.label" default="Building Operator Cert State" /></span>
					
						<span class="property-value" aria-labelledby="buildingOperatorCertState-label"><g:fieldValue bean="${commercialFacilityInstance}" field="buildingOperatorCertState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="commercialFacility.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${commercialFacilityInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="commercialFacility.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${commercialFacilityInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.buildingOperCertLookup}">
				<li class="fieldcontain">
					<span id="buildingOperCertLookup-label" class="property-label"><g:message code="commercialFacility.buildingOperCertLookup.label" default="Building Oper Cert Lookup" /></span>
					
						<span class="property-value" aria-labelledby="buildingOperCertLookup-label"><g:link controller="buildingOperCertLookup" action="show" id="${commercialFacilityInstance?.buildingOperCertLookup?.id}">${commercialFacilityInstance?.buildingOperCertLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.commercialFacilityLookup}">
				<li class="fieldcontain">
					<span id="commercialFacilityLookup-label" class="property-label"><g:message code="commercialFacility.commercialFacilityLookup.label" default="Commercial Facility Lookup" /></span>
					
						<span class="property-value" aria-labelledby="commercialFacilityLookup-label"><g:link controller="commercialFacilityLookup" action="show" id="${commercialFacilityInstance?.commercialFacilityLookup?.id}">${commercialFacilityInstance?.commercialFacilityLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="commercialFacility.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${commercialFacilityInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.facility}">
				<li class="fieldcontain">
					<span id="facility-label" class="property-label"><g:message code="commercialFacility.facility.label" default="Facility" /></span>
					
						<span class="property-value" aria-labelledby="facility-label"><g:link controller="facility" action="show" id="${commercialFacilityInstance?.facility?.id}">${commercialFacilityInstance?.facility?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.ownerTypeLookup}">
				<li class="fieldcontain">
					<span id="ownerTypeLookup-label" class="property-label"><g:message code="commercialFacility.ownerTypeLookup.label" default="Owner Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="ownerTypeLookup-label"><g:link controller="ownerTypeLookup" action="show" id="${commercialFacilityInstance?.ownerTypeLookup?.id}">${commercialFacilityInstance?.ownerTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commercialFacilityInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="commercialFacility.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${commercialFacilityInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${commercialFacilityInstance?.id}" />
					<g:link class="edit" action="edit" id="${commercialFacilityInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
