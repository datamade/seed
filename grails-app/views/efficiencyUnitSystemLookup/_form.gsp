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
<%@ page import="gov.doe.seed.EfficiencyUnitSystemLookup" %>



<div class="fieldcontain ${hasErrors(bean: efficiencyUnitSystemLookupInstance, field: 'efficiencyUnitLookup', 'error')} required">
	<label for="efficiencyUnitLookup">
		<g:message code="efficiencyUnitSystemLookup.efficiencyUnitLookup.label" default="Efficiency Unit Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="efficiencyUnitLookup" name="efficiencyUnitLookup.id" from="${gov.doe.seed.EfficiencyUnitLookup.list()}" optionKey="id" required="" value="${efficiencyUnitSystemLookupInstance?.efficiencyUnitLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitSystemLookupInstance, field: 'systemAirs', 'error')} ">
	<label for="systemAirs">
		<g:message code="efficiencyUnitSystemLookup.systemAirs.label" default="System Airs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${efficiencyUnitSystemLookupInstance?.systemAirs?}" var="s">
    <li><g:link controller="systemAir" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemAir" action="create" params="['efficiencyUnitSystemLookup.id': efficiencyUnitSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemAir.label', default: 'SystemAir')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitSystemLookupInstance, field: 'systemCoolings', 'error')} ">
	<label for="systemCoolings">
		<g:message code="efficiencyUnitSystemLookup.systemCoolings.label" default="System Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${efficiencyUnitSystemLookupInstance?.systemCoolings?}" var="s">
    <li><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemCooling" action="create" params="['efficiencyUnitSystemLookup.id': efficiencyUnitSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemCooling.label', default: 'SystemCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitSystemLookupInstance, field: 'systemHeatings', 'error')} ">
	<label for="systemHeatings">
		<g:message code="efficiencyUnitSystemLookup.systemHeatings.label" default="System Heatings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${efficiencyUnitSystemLookupInstance?.systemHeatings?}" var="s">
    <li><g:link controller="systemHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHeating" action="create" params="['efficiencyUnitSystemLookup.id': efficiencyUnitSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHeating.label', default: 'SystemHeating')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitSystemLookupInstance, field: 'systemHotwaters', 'error')} ">
	<label for="systemHotwaters">
		<g:message code="efficiencyUnitSystemLookup.systemHotwaters.label" default="System Hotwaters" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${efficiencyUnitSystemLookupInstance?.systemHotwaters?}" var="s">
    <li><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHotwater" action="create" params="['efficiencyUnitSystemLookup.id': efficiencyUnitSystemLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHotwater.label', default: 'SystemHotwater')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: efficiencyUnitSystemLookupInstance, field: 'systemTypeLookup', 'error')} required">
	<label for="systemTypeLookup">
		<g:message code="efficiencyUnitSystemLookup.systemTypeLookup.label" default="System Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemTypeLookup" name="systemTypeLookup.id" from="${gov.doe.seed.SystemTypeLookup.list()}" optionKey="id" required="" value="${efficiencyUnitSystemLookupInstance?.systemTypeLookup?.id}" class="many-to-one"/>
</div>

