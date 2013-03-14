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



<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'quantityIt', 'error')} ">
	<label for="quantityIt">
		<g:message code="systemIt.quantityIt.label" default="Quantity It" />
		
	</label>
	<g:field name="quantityIt" type="number" value="${systemItInstance.quantityIt}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'electricalPlugIntensity', 'error')} ">
	<label for="electricalPlugIntensity">
		<g:message code="systemIt.electricalPlugIntensity.label" default="Electrical Plug Intensity" />
		
	</label>
	<g:field name="electricalPlugIntensity" value="${fieldValue(bean: systemItInstance, field: 'electricalPlugIntensity')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'energyStarIt', 'error')} ">
	<label for="energyStarIt">
		<g:message code="systemIt.energyStarIt.label" default="Energy Star It" />
		
	</label>
	<g:checkBox name="energyStarIt" value="${systemItInstance?.energyStarIt}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'upsRedundancy', 'error')} ">
	<label for="upsRedundancy">
		<g:message code="systemIt.upsRedundancy.label" default="Ups Redundancy" />
		
	</label>
	<g:checkBox name="upsRedundancy" value="${systemItInstance?.upsRedundancy}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'density', 'error')} ">
	<label for="density">
		<g:message code="systemIt.density.label" default="Density" />
		
	</label>
	<g:field name="density" value="${fieldValue(bean: systemItInstance, field: 'density')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'itSystemTypeLookup', 'error')} required">
	<label for="itSystemTypeLookup">
		<g:message code="systemIt.itSystemTypeLookup.label" default="It System Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="itSystemTypeLookup" name="itSystemTypeLookup.id" from="${gov.doe.seed.ItSystemTypeLookup.list()}" optionKey="id" required="" value="${systemItInstance?.itSystemTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemItInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemIt.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemItInstance?.system?.id}" class="many-to-one"/>
</div>

