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

<%@ page import="gov.doe.seed.SystemIt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'systemIt.label', default: 'SystemIt')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-systemIt" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-systemIt" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="quantityIt" title="${message(code: 'systemIt.quantityIt.label', default: 'Quantity It')}" />
					
						<g:sortableColumn property="electricalPlugIntensity" title="${message(code: 'systemIt.electricalPlugIntensity.label', default: 'Electrical Plug Intensity')}" />
					
						<g:sortableColumn property="energyStarIt" title="${message(code: 'systemIt.energyStarIt.label', default: 'Energy Star It')}" />
					
						<g:sortableColumn property="upsRedundancy" title="${message(code: 'systemIt.upsRedundancy.label', default: 'Ups Redundancy')}" />
					
						<g:sortableColumn property="density" title="${message(code: 'systemIt.density.label', default: 'Density')}" />
					
						<th><g:message code="systemIt.itSystemTypeLookup.label" default="It System Type Lookup" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${systemItInstanceList}" status="i" var="systemItInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${systemItInstance.id}">${fieldValue(bean: systemItInstance, field: "quantityIt")}</g:link></td>
					
						<td>${fieldValue(bean: systemItInstance, field: "electricalPlugIntensity")}</td>
					
						<td><g:formatBoolean boolean="${systemItInstance.energyStarIt}" /></td>
					
						<td><g:formatBoolean boolean="${systemItInstance.upsRedundancy}" /></td>
					
						<td>${fieldValue(bean: systemItInstance, field: "density")}</td>
					
						<td>${fieldValue(bean: systemItInstance, field: "itSystemTypeLookup")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${systemItInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
