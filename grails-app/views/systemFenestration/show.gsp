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

<%@ page import="gov.doe.seed.SystemFenestration" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'systemFenestration.label', default: 'SystemFenestration')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-systemFenestration" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-systemFenestration" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list systemFenestration">
			
				<g:if test="${systemFenestrationInstance?.operableWindows}">
				<li class="fieldcontain">
					<span id="operableWindows-label" class="property-label"><g:message code="systemFenestration.operableWindows.label" default="Operable Windows" /></span>
					
						<span class="property-value" aria-labelledby="operableWindows-label"><g:formatBoolean boolean="${systemFenestrationInstance?.operableWindows}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowsGlassFilled}">
				<li class="fieldcontain">
					<span id="windowsGlassFilled-label" class="property-label"><g:message code="systemFenestration.windowsGlassFilled.label" default="Windows Glass Filled" /></span>
					
						<span class="property-value" aria-labelledby="windowsGlassFilled-label"><g:formatBoolean boolean="${systemFenestrationInstance?.windowsGlassFilled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowRValue}">
				<li class="fieldcontain">
					<span id="windowRValue-label" class="property-label"><g:message code="systemFenestration.windowRValue.label" default="Window RV alue" /></span>
					
						<span class="property-value" aria-labelledby="windowRValue-label"><g:fieldValue bean="${systemFenestrationInstance}" field="windowRValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.shgc}">
				<li class="fieldcontain">
					<span id="shgc-label" class="property-label"><g:message code="systemFenestration.shgc.label" default="Shgc" /></span>
					
						<span class="property-value" aria-labelledby="shgc-label"><g:fieldValue bean="${systemFenestrationInstance}" field="shgc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowVisibleTrans}">
				<li class="fieldcontain">
					<span id="windowVisibleTrans-label" class="property-label"><g:message code="systemFenestration.windowVisibleTrans.label" default="Window Visible Trans" /></span>
					
						<span class="property-value" aria-labelledby="windowVisibleTrans-label"><g:fieldValue bean="${systemFenestrationInstance}" field="windowVisibleTrans"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowWallRatio}">
				<li class="fieldcontain">
					<span id="windowWallRatio-label" class="property-label"><g:message code="systemFenestration.windowWallRatio.label" default="Window Wall Ratio" /></span>
					
						<span class="property-value" aria-labelledby="windowWallRatio-label"><g:fieldValue bean="${systemFenestrationInstance}" field="windowWallRatio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.skylights}">
				<li class="fieldcontain">
					<span id="skylights-label" class="property-label"><g:message code="systemFenestration.skylights.label" default="Skylights" /></span>
					
						<span class="property-value" aria-labelledby="skylights-label"><g:formatBoolean boolean="${systemFenestrationInstance?.skylights}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowWeatherStripped}">
				<li class="fieldcontain">
					<span id="windowWeatherStripped-label" class="property-label"><g:message code="systemFenestration.windowWeatherStripped.label" default="Window Weather Stripped" /></span>
					
						<span class="property-value" aria-labelledby="windowWeatherStripped-label"><g:formatBoolean boolean="${systemFenestrationInstance?.windowWeatherStripped}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.doorWeatherStripped}">
				<li class="fieldcontain">
					<span id="doorWeatherStripped-label" class="property-label"><g:message code="systemFenestration.doorWeatherStripped.label" default="Door Weather Stripped" /></span>
					
						<span class="property-value" aria-labelledby="doorWeatherStripped-label"><g:formatBoolean boolean="${systemFenestrationInstance?.doorWeatherStripped}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowArea}">
				<li class="fieldcontain">
					<span id="windowArea-label" class="property-label"><g:message code="systemFenestration.windowArea.label" default="Window Area" /></span>
					
						<span class="property-value" aria-labelledby="windowArea-label"><g:fieldValue bean="${systemFenestrationInstance}" field="windowArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.groundFloor}">
				<li class="fieldcontain">
					<span id="groundFloor-label" class="property-label"><g:message code="systemFenestration.groundFloor.label" default="Ground Floor" /></span>
					
						<span class="property-value" aria-labelledby="groundFloor-label"><g:formatBoolean boolean="${systemFenestrationInstance?.groundFloor}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.percGlazing}">
				<li class="fieldcontain">
					<span id="percGlazing-label" class="property-label"><g:message code="systemFenestration.percGlazing.label" default="Perc Glazing" /></span>
					
						<span class="property-value" aria-labelledby="percGlazing-label"><g:fieldValue bean="${systemFenestrationInstance}" field="percGlazing"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.yearLastWinReplaced}">
				<li class="fieldcontain">
					<span id="yearLastWinReplaced-label" class="property-label"><g:message code="systemFenestration.yearLastWinReplaced.label" default="Year Last Win Replaced" /></span>
					
						<span class="property-value" aria-labelledby="yearLastWinReplaced-label"><g:fieldValue bean="${systemFenestrationInstance}" field="yearLastWinReplaced"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.percWinAreaShaded}">
				<li class="fieldcontain">
					<span id="percWinAreaShaded-label" class="property-label"><g:message code="systemFenestration.percWinAreaShaded.label" default="Perc Win Area Shaded" /></span>
					
						<span class="property-value" aria-labelledby="percWinAreaShaded-label"><g:fieldValue bean="${systemFenestrationInstance}" field="percWinAreaShaded"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.percSkylightArea}">
				<li class="fieldcontain">
					<span id="percSkylightArea-label" class="property-label"><g:message code="systemFenestration.percSkylightArea.label" default="Perc Skylight Area" /></span>
					
						<span class="property-value" aria-labelledby="percSkylightArea-label"><g:fieldValue bean="${systemFenestrationInstance}" field="percSkylightArea"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.skylightShgc}">
				<li class="fieldcontain">
					<span id="skylightShgc-label" class="property-label"><g:message code="systemFenestration.skylightShgc.label" default="Skylight Shgc" /></span>
					
						<span class="property-value" aria-labelledby="skylightShgc-label"><g:fieldValue bean="${systemFenestrationInstance}" field="skylightShgc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.skylightVisibleTransmittance}">
				<li class="fieldcontain">
					<span id="skylightVisibleTransmittance-label" class="property-label"><g:message code="systemFenestration.skylightVisibleTransmittance.label" default="Skylight Visible Transmittance" /></span>
					
						<span class="property-value" aria-labelledby="skylightVisibleTransmittance-label"><g:fieldValue bean="${systemFenestrationInstance}" field="skylightVisibleTransmittance"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.numExtDoors}">
				<li class="fieldcontain">
					<span id="numExtDoors-label" class="property-label"><g:message code="systemFenestration.numExtDoors.label" default="Num Ext Doors" /></span>
					
						<span class="property-value" aria-labelledby="numExtDoors-label"><g:fieldValue bean="${systemFenestrationInstance}" field="numExtDoors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.extDoorTypeLookup}">
				<li class="fieldcontain">
					<span id="extDoorTypeLookup-label" class="property-label"><g:message code="systemFenestration.extDoorTypeLookup.label" default="Ext Door Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="extDoorTypeLookup-label"><g:link controller="extDoorTypeLookup" action="show" id="${systemFenestrationInstance?.extDoorTypeLookup?.id}">${systemFenestrationInstance?.extDoorTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.extShadingOrientationLookup}">
				<li class="fieldcontain">
					<span id="extShadingOrientationLookup-label" class="property-label"><g:message code="systemFenestration.extShadingOrientationLookup.label" default="Ext Shading Orientation Lookup" /></span>
					
						<span class="property-value" aria-labelledby="extShadingOrientationLookup-label"><g:link controller="extShadingOrientationLookup" action="show" id="${systemFenestrationInstance?.extShadingOrientationLookup?.id}">${systemFenestrationInstance?.extShadingOrientationLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.extShadingTypeLookup}">
				<li class="fieldcontain">
					<span id="extShadingTypeLookup-label" class="property-label"><g:message code="systemFenestration.extShadingTypeLookup.label" default="Ext Shading Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="extShadingTypeLookup-label"><g:link controller="extShadingTypeLookup" action="show" id="${systemFenestrationInstance?.extShadingTypeLookup?.id}">${systemFenestrationInstance?.extShadingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.intShadingTypeLookup}">
				<li class="fieldcontain">
					<span id="intShadingTypeLookup-label" class="property-label"><g:message code="systemFenestration.intShadingTypeLookup.label" default="Int Shading Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="intShadingTypeLookup-label"><g:link controller="intShadingTypeLookup" action="show" id="${systemFenestrationInstance?.intShadingTypeLookup?.id}">${systemFenestrationInstance?.intShadingTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.system}">
				<li class="fieldcontain">
					<span id="system-label" class="property-label"><g:message code="systemFenestration.system.label" default="System" /></span>
					
						<span class="property-value" aria-labelledby="system-label"><g:link controller="system" action="show" id="${systemFenestrationInstance?.system?.id}">${systemFenestrationInstance?.system?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowFrameTypeLookup}">
				<li class="fieldcontain">
					<span id="windowFrameTypeLookup-label" class="property-label"><g:message code="systemFenestration.windowFrameTypeLookup.label" default="Window Frame Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="windowFrameTypeLookup-label"><g:link controller="windowFrameTypeLookup" action="show" id="${systemFenestrationInstance?.windowFrameTypeLookup?.id}">${systemFenestrationInstance?.windowFrameTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowGlassLayerLookup}">
				<li class="fieldcontain">
					<span id="windowGlassLayerLookup-label" class="property-label"><g:message code="systemFenestration.windowGlassLayerLookup.label" default="Window Glass Layer Lookup" /></span>
					
						<span class="property-value" aria-labelledby="windowGlassLayerLookup-label"><g:link controller="windowGlassLayerLookup" action="show" id="${systemFenestrationInstance?.windowGlassLayerLookup?.id}">${systemFenestrationInstance?.windowGlassLayerLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${systemFenestrationInstance?.windowGlassTypeLookup}">
				<li class="fieldcontain">
					<span id="windowGlassTypeLookup-label" class="property-label"><g:message code="systemFenestration.windowGlassTypeLookup.label" default="Window Glass Type Lookup" /></span>
					
						<span class="property-value" aria-labelledby="windowGlassTypeLookup-label"><g:link controller="windowGlassTypeLookup" action="show" id="${systemFenestrationInstance?.windowGlassTypeLookup?.id}">${systemFenestrationInstance?.windowGlassTypeLookup?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${systemFenestrationInstance?.id}" />
					<g:link class="edit" action="edit" id="${systemFenestrationInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
