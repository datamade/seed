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

<%@ page import="gov.doe.seed.SystemHeating" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemHeating.label', default: 'SystemHeating')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemHeating" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemHeating" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="systemIdFk" title="${message(code: 'systemHeating.systemIdFk.label', default: 'System Id Fk')}" />
					
						<g:sortableColumn property="quantityHeating" title="${message(code: 'systemHeating.quantityHeating.label', default: 'Quantity Heating')}" />
					
						<g:sortableColumn property="capacityHeating" title="${message(code: 'systemHeating.capacityHeating.label', default: 'Capacity Heating')}" />
					
						<g:sortableColumn property="yearOfManufactureHeating" title="${message(code: 'systemHeating.yearOfManufactureHeating.label', default: 'Year Of Manufacture Heating')}" />
					
						<g:sortableColumn property="primaryHeating" title="${message(code: 'systemHeating.primaryHeating.label', default: 'Primary Heating')}" />
					
						<g:sortableColumn property="efficiencyHeating" title="${message(code: 'systemHeating.efficiencyHeating.label', default: 'Efficiency Heating')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemHeatingInstanceList}" status="i" var="systemHeatingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemHeatingInstance.id}">${fieldValue(bean: systemHeatingInstance, field: "systemIdFk")}</g:link></td>
					
						<td>${fieldValue(bean: systemHeatingInstance, field: "quantityHeating")}</td>
					
						<td>${fieldValue(bean: systemHeatingInstance, field: "capacityHeating")}</td>
					
						<td>${fieldValue(bean: systemHeatingInstance, field: "yearOfManufactureHeating")}</td>
					
						<td><g:formatBoolean boolean="${systemHeatingInstance.primaryHeating}" /></td>
					
						<td>${fieldValue(bean: systemHeatingInstance, field: "efficiencyHeating")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${systemHeatingInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
