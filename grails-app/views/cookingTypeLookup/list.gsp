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

<%@ page import="gov.doe.seed.CookingTypeLookup" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cookingTypeLookup.label', default: 'CookingTypeLookup')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cookingTypeLookup" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cookingTypeLookup" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="cookingType" title="${message(code: 'cookingTypeLookup.cookingType.label', default: 'Cooking Type')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'cookingTypeLookup.createdBy.label', default: 'Created By')}" />
					
						<g:sortableColumn property="createdDate" title="${message(code: 'cookingTypeLookup.createdDate.label', default: 'Created Date')}" />
					
						<g:sortableColumn property="updatedBy" title="${message(code: 'cookingTypeLookup.updatedBy.label', default: 'Updated By')}" />
					
						<g:sortableColumn property="updatedDate" title="${message(code: 'cookingTypeLookup.updatedDate.label', default: 'Updated Date')}" />
					
						<g:sortableColumn property="sortOrder" title="${message(code: 'cookingTypeLookup.sortOrder.label', default: 'Sort Order')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${cookingTypeLookupInstanceList}" status="i" var="cookingTypeLookupInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${cookingTypeLookupInstance.id}">${fieldValue(bean: cookingTypeLookupInstance, field: "cookingType")}</g:link></td>
					
						<td>${fieldValue(bean: cookingTypeLookupInstance, field: "createdBy")}</td>
					
						<td><g:formatDate date="${cookingTypeLookupInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: cookingTypeLookupInstance, field: "updatedBy")}</td>
					
						<td><g:formatDate date="${cookingTypeLookupInstance.updatedDate}" /></td>
					
						<td>${fieldValue(bean: cookingTypeLookupInstance, field: "sortOrder")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${cookingTypeLookupInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
