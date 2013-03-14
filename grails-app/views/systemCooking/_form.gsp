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
<%@ page import="gov.doe.seed.SystemCooking" %>



<div class="fieldcontain ${hasErrors(bean: systemCookingInstance, field: 'capacityCooking', 'error')} ">
	<label for="capacityCooking">
		<g:message code="systemCooking.capacityCooking.label" default="Capacity Cooking" />
		
	</label>
	<g:field name="capacityCooking" value="${fieldValue(bean: systemCookingInstance, field: 'capacityCooking')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCookingInstance, field: 'capUnitCooking', 'error')} ">
	<label for="capUnitCooking">
		<g:message code="systemCooking.capUnitCooking.label" default="Cap Unit Cooking" />
		
	</label>
	<g:field name="capUnitCooking" type="number" value="${systemCookingInstance.capUnitCooking}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCookingInstance, field: 'quantityCooking', 'error')} ">
	<label for="quantityCooking">
		<g:message code="systemCooking.quantityCooking.label" default="Quantity Cooking" />
		
	</label>
	<g:field name="quantityCooking" type="number" value="${systemCookingInstance.quantityCooking}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCookingInstance, field: 'cookingTypeLookup', 'error')} required">
	<label for="cookingTypeLookup">
		<g:message code="systemCooking.cookingTypeLookup.label" default="Cooking Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cookingTypeLookup" name="cookingTypeLookup.id" from="${gov.doe.seed.CookingTypeLookup.list()}" optionKey="id" required="" value="${systemCookingInstance?.cookingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCookingInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemCooking.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemCookingInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemCookingInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemCooking.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemCookingInstance?.system?.id}" class="many-to-one"/>
</div>

