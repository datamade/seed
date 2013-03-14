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
<%@ page import="gov.doe.seed.SystemLighting" %>



<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'installedPower', 'error')} ">
	<label for="installedPower">
		<g:message code="systemLighting.installedPower.label" default="Installed Power" />
		
	</label>
	<g:field name="installedPower" value="${fieldValue(bean: systemLightingInstance, field: 'installedPower')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'percTotInstalledPowerHeating', 'error')} ">
	<label for="percTotInstalledPowerHeating">
		<g:message code="systemLighting.percTotInstalledPowerHeating.label" default="Perc Tot Installed Power Heating" />
		
	</label>
	<g:field name="percTotInstalledPowerHeating" value="${fieldValue(bean: systemLightingInstance, field: 'percTotInstalledPowerHeating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'percFloorAreaServedHeating', 'error')} ">
	<label for="percFloorAreaServedHeating">
		<g:message code="systemLighting.percFloorAreaServedHeating.label" default="Perc Floor Area Served Heating" />
		
	</label>
	<g:field name="percFloorAreaServedHeating" value="${fieldValue(bean: systemLightingInstance, field: 'percFloorAreaServedHeating')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'outsideLighting', 'error')} ">
	<label for="outsideLighting">
		<g:message code="systemLighting.outsideLighting.label" default="Outside Lighting" />
		
	</label>
	<g:field name="outsideLighting" value="${fieldValue(bean: systemLightingInstance, field: 'outsideLighting')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'lightingEfficacy', 'error')} ">
	<label for="lightingEfficacy">
		<g:message code="systemLighting.lightingEfficacy.label" default="Lighting Efficacy" />
		
	</label>
	<g:field name="lightingEfficacy" value="${fieldValue(bean: systemLightingInstance, field: 'lightingEfficacy')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'specularReflectors', 'error')} ">
	<label for="specularReflectors">
		<g:message code="systemLighting.specularReflectors.label" default="Specular Reflectors" />
		
	</label>
	<g:checkBox name="specularReflectors" value="${systemLightingInstance?.specularReflectors}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'percLitOpen', 'error')} ">
	<label for="percLitOpen">
		<g:message code="systemLighting.percLitOpen.label" default="Perc Lit Open" />
		
	</label>
	<g:field name="percLitOpen" value="${fieldValue(bean: systemLightingInstance, field: 'percLitOpen')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'percLitClosed', 'error')} ">
	<label for="percLitClosed">
		<g:message code="systemLighting.percLitClosed.label" default="Perc Lit Closed" />
		
	</label>
	<g:field name="percLitClosed" value="${fieldValue(bean: systemLightingInstance, field: 'percLitClosed')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'ballastTypeLookup', 'error')} required">
	<label for="ballastTypeLookup">
		<g:message code="systemLighting.ballastTypeLookup.label" default="Ballast Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="ballastTypeLookup" name="ballastTypeLookup.id" from="${gov.doe.seed.BallastTypeLookup.list()}" optionKey="id" required="" value="${systemLightingInstance?.ballastTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'lightingControlType', 'error')} required">
	<label for="lightingControlType">
		<g:message code="systemLighting.lightingControlType.label" default="Lighting Control Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lightingControlType" name="lightingControlType.id" from="${gov.doe.seed.LightingControlType.list()}" optionKey="id" required="" value="${systemLightingInstance?.lightingControlType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'lightingHourLookup', 'error')} required">
	<label for="lightingHourLookup">
		<g:message code="systemLighting.lightingHourLookup.label" default="Lighting Hour Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lightingHourLookup" name="lightingHourLookup.id" from="${gov.doe.seed.LightingHourLookup.list()}" optionKey="id" required="" value="${systemLightingInstance?.lightingHourLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'lightingTypeLookup', 'error')} required">
	<label for="lightingTypeLookup">
		<g:message code="systemLighting.lightingTypeLookup.label" default="Lighting Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lightingTypeLookup" name="lightingTypeLookup.id" from="${gov.doe.seed.LightingTypeLookup.list()}" optionKey="id" required="" value="${systemLightingInstance?.lightingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLightingInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemLighting.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemLightingInstance?.system?.id}" class="many-to-one"/>
</div>

