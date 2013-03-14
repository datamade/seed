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
<%@ page import="gov.doe.seed.SystemPool" %>



<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'quantityPool', 'error')} ">
	<label for="quantityPool">
		<g:message code="systemPool.quantityPool.label" default="Quantity Pool" />
		
	</label>
	<g:field name="quantityPool" type="number" value="${systemPoolInstance.quantityPool}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'heatedPool', 'error')} ">
	<label for="heatedPool">
		<g:message code="systemPool.heatedPool.label" default="Heated Pool" />
		
	</label>
	<g:checkBox name="heatedPool" value="${systemPoolInstance?.heatedPool}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'poolVolume', 'error')} ">
	<label for="poolVolume">
		<g:message code="systemPool.poolVolume.label" default="Pool Volume" />
		
	</label>
	<g:field name="poolVolume" value="${fieldValue(bean: systemPoolInstance, field: 'poolVolume')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'numPoolPumps', 'error')} ">
	<label for="numPoolPumps">
		<g:message code="systemPool.numPoolPumps.label" default="Num Pool Pumps" />
		
	</label>
	<g:field name="numPoolPumps" type="number" value="${systemPoolInstance.numPoolPumps}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'indoorPool', 'error')} ">
	<label for="indoorPool">
		<g:message code="systemPool.indoorPool.label" default="Indoor Pool" />
		
	</label>
	<g:checkBox name="indoorPool" value="${systemPoolInstance?.indoorPool}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'poolArea', 'error')} ">
	<label for="poolArea">
		<g:message code="systemPool.poolArea.label" default="Pool Area" />
		
	</label>
	<g:field name="poolArea" value="${fieldValue(bean: systemPoolInstance, field: 'poolArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemPool.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemPoolInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemPool.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemPoolInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'poolTypeLookup', 'error')} required">
	<label for="poolTypeLookup">
		<g:message code="systemPool.poolTypeLookup.label" default="Pool Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="poolTypeLookup" name="poolTypeLookup.id" from="${gov.doe.seed.PoolTypeLookup.list()}" optionKey="id" required="" value="${systemPoolInstance?.poolTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemPoolInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemPool.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemPoolInstance?.system?.id}" class="many-to-one"/>
</div>

