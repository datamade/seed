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

<%@ page import="gov.doe.seed.EnergyTimeSeries" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'energyTimeSeries.label', default: 'EnergyTimeSeries')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-energyTimeSeries" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-energyTimeSeries" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list energyTimeSeries">
			
				<g:if test="${energyTimeSeriesInstance?.readingNumber}">
				<li class="fieldcontain">
					<span id="readingNumber-label" class="property-label"><g:message code="energyTimeSeries.readingNumber.label" default="Reading Number" /></span>
					
						<span class="property-value" aria-labelledby="readingNumber-label"><g:fieldValue bean="${energyTimeSeriesInstance}" field="readingNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.intervalPeak}">
				<li class="fieldcontain">
					<span id="intervalPeak-label" class="property-label"><g:message code="energyTimeSeries.intervalPeak.label" default="Interval Peak" /></span>
					
						<span class="property-value" aria-labelledby="intervalPeak-label"><g:fieldValue bean="${energyTimeSeriesInstance}" field="intervalPeak"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.intervalMinimum}">
				<li class="fieldcontain">
					<span id="intervalMinimum-label" class="property-label"><g:message code="energyTimeSeries.intervalMinimum.label" default="Interval Minimum" /></span>
					
						<span class="property-value" aria-labelledby="intervalMinimum-label"><g:fieldValue bean="${energyTimeSeriesInstance}" field="intervalMinimum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.createdBy}">
				<li class="fieldcontain">
					<span id="createdBy-label" class="property-label"><g:message code="energyTimeSeries.createdBy.label" default="Created By" /></span>
					
						<span class="property-value" aria-labelledby="createdBy-label"><g:fieldValue bean="${energyTimeSeriesInstance}" field="createdBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.updatedBy}">
				<li class="fieldcontain">
					<span id="updatedBy-label" class="property-label"><g:message code="energyTimeSeries.updatedBy.label" default="Updated By" /></span>
					
						<span class="property-value" aria-labelledby="updatedBy-label"><g:fieldValue bean="${energyTimeSeriesInstance}" field="updatedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="energyTimeSeries.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${energyTimeSeriesInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="energyTimeSeries.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${energyTimeSeriesInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.energyUseMetric}">
				<li class="fieldcontain">
					<span id="energyUseMetric-label" class="property-label"><g:message code="energyTimeSeries.energyUseMetric.label" default="Energy Use Metric" /></span>
					
						<span class="property-value" aria-labelledby="energyUseMetric-label"><g:link controller="energyUseMetric" action="show" id="${energyTimeSeriesInstance?.energyUseMetric?.id}">${energyTimeSeriesInstance?.energyUseMetric?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="energyTimeSeries.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${energyTimeSeriesInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyTimeSeriesInstance?.updatedDate}">
				<li class="fieldcontain">
					<span id="updatedDate-label" class="property-label"><g:message code="energyTimeSeries.updatedDate.label" default="Updated Date" /></span>
					
						<span class="property-value" aria-labelledby="updatedDate-label"><g:formatDate date="${energyTimeSeriesInstance?.updatedDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${energyTimeSeriesInstance?.id}" />
					<g:link class="edit" action="edit" id="${energyTimeSeriesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
