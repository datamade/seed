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

<%@ page import="gov.doe.seed.SystemAir" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemAir.label', default: 'SystemAir')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemAir" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemAir" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="airDistributionSize" title="${message(code: 'systemAir.airDistributionSize.label', default: 'Air Distribution Size')}" />
					
						<g:sortableColumn property="airDistributionPower" title="${message(code: 'systemAir.airDistributionPower.label', default: 'Air Distribution Power')}" />
					
						<g:sortableColumn property="airDistributionPrimary" title="${message(code: 'systemAir.airDistributionPrimary.label', default: 'Air Distribution Primary')}" />
					
						<g:sortableColumn property="percTotInstalledCapacityAir" title="${message(code: 'systemAir.percTotInstalledCapacityAir.label', default: 'Perc Tot Installed Capacity Air')}" />
					
						<g:sortableColumn property="percOfFloorAreaServedAir" title="${message(code: 'systemAir.percOfFloorAreaServedAir.label', default: 'Perc Of Floor Area Served Air')}" />
					
						<g:sortableColumn property="staticPressureResetControl" title="${message(code: 'systemAir.staticPressureResetControl.label', default: 'Static Pressure Reset Control')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemAirInstanceList}" status="i" var="systemAirInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemAirInstance.id}">${fieldValue(bean: systemAirInstance, field: "airDistributionSize")}</g:link></td>
					
						<td>${fieldValue(bean: systemAirInstance, field: "airDistributionPower")}</td>
					
						<td><g:formatBoolean boolean="${systemAirInstance.airDistributionPrimary}" /></td>
					
						<td>${fieldValue(bean: systemAirInstance, field: "percTotInstalledCapacityAir")}</td>
					
						<td>${fieldValue(bean: systemAirInstance, field: "percOfFloorAreaServedAir")}</td>
					
						<td><g:formatBoolean boolean="${systemAirInstance.staticPressureResetControl}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${systemAirInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
