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
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-commercialFacility" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-commercialFacility" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="percentOccupiedByOwner" title="${message(code: 'commercialFacility.percentOccupiedByOwner.label', default: 'Percent Occupied By Owner')}" />
					
						<g:sortableColumn property="noOfActivityAreas" title="${message(code: 'commercialFacility.noOfActivityAreas.label', default: 'No Of Activity Areas')}" />
					
						<g:sortableColumn property="naicsCode" title="${message(code: 'commercialFacility.naicsCode.label', default: 'Naics Code')}" />
					
						<g:sortableColumn property="ownerCareOfName" title="${message(code: 'commercialFacility.ownerCareOfName.label', default: 'Owner Care Of Name')}" />
					
						<g:sortableColumn property="basementFloorArea" title="${message(code: 'commercialFacility.basementFloorArea.label', default: 'Basement Floor Area')}" />
					
						<g:sortableColumn property="buildingOperator" title="${message(code: 'commercialFacility.buildingOperator.label', default: 'Building Operator')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${commercialFacilityInstanceList}" status="i" var="commercialFacilityInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${commercialFacilityInstance.id}">${fieldValue(bean: commercialFacilityInstance, field: "percentOccupiedByOwner")}</g:link></td>
					
						<td>${fieldValue(bean: commercialFacilityInstance, field: "noOfActivityAreas")}</td>
					
						<td>${fieldValue(bean: commercialFacilityInstance, field: "naicsCode")}</td>
					
						<td>${fieldValue(bean: commercialFacilityInstance, field: "ownerCareOfName")}</td>
					
						<td>${fieldValue(bean: commercialFacilityInstance, field: "basementFloorArea")}</td>
					
						<td>${fieldValue(bean: commercialFacilityInstance, field: "buildingOperator")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${commercialFacilityInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
