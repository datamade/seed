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
<%@ page import="gov.doe.seed.SystemDishwasher" %>



<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'yearOfManuDishwasher', 'error')} ">
	<label for="yearOfManuDishwasher">
		<g:message code="systemDishwasher.yearOfManuDishwasher.label" default="Year Of Manu Dishwasher" />
		
	</label>
	<g:field name="yearOfManuDishwasher" type="number" value="${systemDishwasherInstance.yearOfManuDishwasher}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'energyStarDishwasher', 'error')} ">
	<label for="energyStarDishwasher">
		<g:message code="systemDishwasher.energyStarDishwasher.label" default="Energy Star Dishwasher" />
		
	</label>
	<g:checkBox name="energyStarDishwasher" value="${systemDishwasherInstance?.energyStarDishwasher}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'quantityDishwasher', 'error')} ">
	<label for="quantityDishwasher">
		<g:message code="systemDishwasher.quantityDishwasher.label" default="Quantity Dishwasher" />
		
	</label>
	<g:field name="quantityDishwasher" type="number" value="${systemDishwasherInstance.quantityDishwasher}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'loadsPerWeek', 'error')} ">
	<label for="loadsPerWeek">
		<g:message code="systemDishwasher.loadsPerWeek.label" default="Loads Per Week" />
		
	</label>
	<g:field name="loadsPerWeek" value="${fieldValue(bean: systemDishwasherInstance, field: 'loadsPerWeek')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'dishwaterTypeLookup', 'error')} required">
	<label for="dishwaterTypeLookup">
		<g:message code="systemDishwasher.dishwaterTypeLookup.label" default="Dishwater Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="dishwaterTypeLookup" name="dishwaterTypeLookup.id" from="${gov.doe.seed.DishwaterTypeLookup.list()}" optionKey="id" required="" value="${systemDishwasherInstance?.dishwaterTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemDishwasher.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemDishwasherInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemDishwasherInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemDishwasher.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemDishwasherInstance?.system?.id}" class="many-to-one"/>
</div>

