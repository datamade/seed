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
<%@ page import="gov.doe.seed.SystemLaundry" %>



<div class="fieldcontain ${hasErrors(bean: systemLaundryInstance, field: 'yearOfManuLaundry', 'error')} ">
	<label for="yearOfManuLaundry">
		<g:message code="systemLaundry.yearOfManuLaundry.label" default="Year Of Manu Laundry" />
		
	</label>
	<g:field name="yearOfManuLaundry" type="number" value="${systemLaundryInstance.yearOfManuLaundry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLaundryInstance, field: 'energyStarLaundry', 'error')} ">
	<label for="energyStarLaundry">
		<g:message code="systemLaundry.energyStarLaundry.label" default="Energy Star Laundry" />
		
	</label>
	<g:checkBox name="energyStarLaundry" value="${systemLaundryInstance?.energyStarLaundry}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemLaundryInstance, field: 'quantityLaundry', 'error')} ">
	<label for="quantityLaundry">
		<g:message code="systemLaundry.quantityLaundry.label" default="Quantity Laundry" />
		
	</label>
	<g:field name="quantityLaundry" type="number" value="${systemLaundryInstance.quantityLaundry}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLaundryInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemLaundry.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemLaundryInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLaundryInstance, field: 'laundryTypeLookup', 'error')} required">
	<label for="laundryTypeLookup">
		<g:message code="systemLaundry.laundryTypeLookup.label" default="Laundry Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="laundryTypeLookup" name="laundryTypeLookup.id" from="${gov.doe.seed.LaundryTypeLookup.list()}" optionKey="id" required="" value="${systemLaundryInstance?.laundryTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemLaundryInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemLaundry.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemLaundryInstance?.system?.id}" class="many-to-one"/>
</div>

