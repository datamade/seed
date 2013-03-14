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

<%@ page import="gov.doe.seed.EnergyEffReport" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'energyEffReport.label', default: 'EnergyEffReport')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-energyEffReport" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-energyEffReport" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list energyEffReport">
			
				<g:if test="${energyEffReportInstance?.eerSubmittedBy}">
				<li class="fieldcontain">
					<span id="eerSubmittedBy-label" class="property-label"><g:message code="energyEffReport.eerSubmittedBy.label" default="Eer Submitted By" /></span>
					
						<span class="property-value" aria-labelledby="eerSubmittedBy-label"><g:fieldValue bean="${energyEffReportInstance}" field="eerSubmittedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEffReportInstance?.eerSubmittedComp}">
				<li class="fieldcontain">
					<span id="eerSubmittedComp-label" class="property-label"><g:message code="energyEffReport.eerSubmittedComp.label" default="Eer Submitted Comp" /></span>
					
						<span class="property-value" aria-labelledby="eerSubmittedComp-label"><g:fieldValue bean="${energyEffReportInstance}" field="eerSubmittedComp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEffReportInstance?.eerSubmittedEmail}">
				<li class="fieldcontain">
					<span id="eerSubmittedEmail-label" class="property-label"><g:message code="energyEffReport.eerSubmittedEmail.label" default="Eer Submitted Email" /></span>
					
						<span class="property-value" aria-labelledby="eerSubmittedEmail-label"><g:fieldValue bean="${energyEffReportInstance}" field="eerSubmittedEmail"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEffReportInstance?.eerSubmittedDate}">
				<li class="fieldcontain">
					<span id="eerSubmittedDate-label" class="property-label"><g:message code="energyEffReport.eerSubmittedDate.label" default="Eer Submitted Date" /></span>
					
						<span class="property-value" aria-labelledby="eerSubmittedDate-label"><g:formatDate date="${energyEffReportInstance?.eerSubmittedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${energyEffReportInstance?.energyEfficiencyMeasure}">
				<li class="fieldcontain">
					<span id="energyEfficiencyMeasure-label" class="property-label"><g:message code="energyEffReport.energyEfficiencyMeasure.label" default="Energy Efficiency Measure" /></span>
					
						<span class="property-value" aria-labelledby="energyEfficiencyMeasure-label"><g:link controller="energyEfficiencyMeasure" action="show" id="${energyEffReportInstance?.energyEfficiencyMeasure?.id}">${energyEffReportInstance?.energyEfficiencyMeasure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${energyEffReportInstance?.id}" />
					<g:link class="edit" action="edit" id="${energyEffReportInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
