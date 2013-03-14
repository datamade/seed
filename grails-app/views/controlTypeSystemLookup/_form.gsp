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
<%@ page import="gov.doe.seed.ControlTypeSystemLookup" %>



<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'controlTypeLookup', 'error')} required">
	<label for="controlTypeLookup">
		<g:message code="controlTypeSystemLookup.controlTypeLookup.label" default="Control Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeLookup" name="controlTypeLookup.id" from="${gov.doe.seed.ControlTypeLookup.list()}" optionKey="id" required="" value="${controlTypeSystemLookupInstance?.controlTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemConveyances', 'error')} ">
	<label for="systemConveyances">
		<g:message code="controlTypeSystemLookup.systemConveyances.label" default="System Conveyances" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemConveyances?}" var="s">
    <li><g:link controller="systemConveyance" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemConveyance" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemConveyance.label', default: 'SystemConveyance')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemCoolings', 'error')} ">
	<label for="systemCoolings">
		<g:message code="controlTypeSystemLookup.systemCoolings.label" default="System Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemCoolings?}" var="s">
    <li><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemCooling" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemCooling.label', default: 'SystemCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemHeatings', 'error')} ">
	<label for="systemHeatings">
		<g:message code="controlTypeSystemLookup.systemHeatings.label" default="System Heatings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemHeatings?}" var="s">
    <li><g:link controller="systemHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHeating" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHeating.label', default: 'SystemHeating')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemHotwaters', 'error')} ">
	<label for="systemHotwaters">
		<g:message code="controlTypeSystemLookup.systemHotwaters.label" default="System Hotwaters" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemHotwaters?}" var="s">
    <li><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHotwater" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHotwater.label', default: 'SystemHotwater')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemHvacs', 'error')} ">
	<label for="systemHvacs">
		<g:message code="controlTypeSystemLookup.systemHvacs.label" default="System Hvacs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemHvacs?}" var="s">
    <li><g:link controller="systemHvac" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHvac" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHvac.label', default: 'SystemHvac')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemPools', 'error')} ">
	<label for="systemPools">
		<g:message code="controlTypeSystemLookup.systemPools.label" default="System Pools" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemPools?}" var="s">
    <li><g:link controller="systemPool" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemPool" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemPool.label', default: 'SystemPool')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemTypeLookup', 'error')} required">
	<label for="systemTypeLookup">
		<g:message code="controlTypeSystemLookup.systemTypeLookup.label" default="System Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemTypeLookup" name="systemTypeLookup.id" from="${gov.doe.seed.SystemTypeLookup.list()}" optionKey="id" required="" value="${controlTypeSystemLookupInstance?.systemTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemZonalCoolings', 'error')} ">
	<label for="systemZonalCoolings">
		<g:message code="controlTypeSystemLookup.systemZonalCoolings.label" default="System Zonal Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemZonalCoolings?}" var="s">
    <li><g:link controller="systemZonalCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemZonalCooling" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemZonalCooling.label', default: 'SystemZonalCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: controlTypeSystemLookupInstance, field: 'systemZonalHeatings', 'error')} ">
	<label for="systemZonalHeatings">
		<g:message code="controlTypeSystemLookup.systemZonalHeatings.label" default="System Zonal Heatings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${controlTypeSystemLookupInstance?.systemZonalHeatings?}" var="s">
    <li><g:link controller="systemZonalHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemZonalHeating" action="create" params="['controlTypeSystemLookup.id': controlTypeSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemZonalHeating.label', default: 'SystemZonalHeating')])}</g:link>
</li>
</ul>

</div>

