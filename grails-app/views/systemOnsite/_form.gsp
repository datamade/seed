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
<%@ page import="gov.doe.seed.SystemOnsite" %>



<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'quantityOnsite', 'error')} ">
	<label for="quantityOnsite">
		<g:message code="systemOnsite.quantityOnsite.label" default="Quantity Onsite" />
		
	</label>
	<g:field name="quantityOnsite" type="number" value="${systemOnsiteInstance.quantityOnsite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'capacityOnsite', 'error')} ">
	<label for="capacityOnsite">
		<g:message code="systemOnsite.capacityOnsite.label" default="Capacity Onsite" />
		
	</label>
	<g:field name="capacityOnsite" type="number" value="${systemOnsiteInstance.capacityOnsite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'annualOperHrs', 'error')} ">
	<label for="annualOperHrs">
		<g:message code="systemOnsite.annualOperHrs.label" default="Annual Oper Hrs" />
		
	</label>
	<g:field name="annualOperHrs" value="${fieldValue(bean: systemOnsiteInstance, field: 'annualOperHrs')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemOnsite.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemOnsiteInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'onsiteGenTypeLookup', 'error')} required">
	<label for="onsiteGenTypeLookup">
		<g:message code="systemOnsite.onsiteGenTypeLookup.label" default="Onsite Gen Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="onsiteGenTypeLookup" name="onsiteGenTypeLookup.id" from="${gov.doe.seed.OnsiteGenTypeLookup.list()}" optionKey="id" required="" value="${systemOnsiteInstance?.onsiteGenTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemOnsite.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemOnsiteInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemOnsiteInstance, field: 'unitTypeLookup', 'error')} required">
	<label for="unitTypeLookup">
		<g:message code="systemOnsite.unitTypeLookup.label" default="Unit Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="unitTypeLookup" name="unitTypeLookup.id" from="${gov.doe.seed.UnitTypeLookup.list()}" optionKey="id" required="" value="${systemOnsiteInstance?.unitTypeLookup?.id}" class="many-to-one"/>
</div>

