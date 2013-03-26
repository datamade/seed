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

<%@ page import="gov.doe.seed.WaterTimeSeries" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="partial">
		<g:set var="entityName" value="${message(code: 'waterTimeSeries.label', default: 'WaterTimeSeries')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-waterTimeSeries" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-waterTimeSeries" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list waterTimeSeries">
			
				<g:if test="${waterTimeSeriesInstance?.readingNumber}">
				<li class="fieldcontain">
					<span id="readingNumber-label" class="property-label"><g:message code="waterTimeSeries.readingNumber.label" default="Reading Number" /></span>
					
						<span class="property-value" aria-labelledby="readingNumber-label"><g:fieldValue bean="${waterTimeSeriesInstance}" field="readingNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.intervalPeak}">
				<li class="fieldcontain">
					<span id="intervalPeak-label" class="property-label"><g:message code="waterTimeSeries.intervalPeak.label" default="Interval Peak" /></span>
					
						<span class="property-value" aria-labelledby="intervalPeak-label"><g:fieldValue bean="${waterTimeSeriesInstance}" field="intervalPeak"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.intervalMinimum}">
				<li class="fieldcontain">
					<span id="intervalMinimum-label" class="property-label"><g:message code="waterTimeSeries.intervalMinimum.label" default="Interval Minimum" /></span>
					
						<span class="property-value" aria-labelledby="intervalMinimum-label"><g:fieldValue bean="${waterTimeSeriesInstance}" field="intervalMinimum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="waterTimeSeries.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${waterTimeSeriesInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="waterTimeSeries.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${waterTimeSeriesInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="waterTimeSeries.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${waterTimeSeriesInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="waterTimeSeries.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${waterTimeSeriesInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="waterTimeSeries.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${waterTimeSeriesInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="waterTimeSeries.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${waterTimeSeriesInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${waterTimeSeriesInstance?.waterUseMetric}">
				<li class="fieldcontain">
					<span id="waterUseMetric-label" class="property-label"><g:message code="waterTimeSeries.waterUseMetric.label" default="Water Use Metric" /></span>
					
						<span class="property-value" aria-labelledby="waterUseMetric-label"><g:link controller="waterUseMetric" action="show" id="${waterTimeSeriesInstance?.waterUseMetric?.id}">${waterTimeSeriesInstance?.waterUseMetric?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${waterTimeSeriesInstance?.id}" />
					<g:link class="edit" action="edit" id="${waterTimeSeriesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
