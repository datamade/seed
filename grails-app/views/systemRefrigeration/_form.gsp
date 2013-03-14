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
<%@ page import="gov.doe.seed.SystemRefrigeration" %>



<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'quantityRefrig', 'error')} ">
	<label for="quantityRefrig">
		<g:message code="systemRefrigeration.quantityRefrig.label" default="Quantity Refrig" />
		
	</label>
	<g:field name="quantityRefrig" type="number" value="${systemRefrigerationInstance.quantityRefrig}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'sizeRefirg', 'error')} ">
	<label for="sizeRefirg">
		<g:message code="systemRefrigeration.sizeRefirg.label" default="Size Refirg" />
		
	</label>
	<g:field name="sizeRefirg" value="${fieldValue(bean: systemRefrigerationInstance, field: 'sizeRefirg')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'yearOfManufactureRefrig', 'error')} ">
	<label for="yearOfManufactureRefrig">
		<g:message code="systemRefrigeration.yearOfManufactureRefrig.label" default="Year Of Manufacture Refrig" />
		
	</label>
	<g:field name="yearOfManufactureRefrig" type="number" value="${systemRefrigerationInstance.yearOfManufactureRefrig}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'energyStarRefrig', 'error')} ">
	<label for="energyStarRefrig">
		<g:message code="systemRefrigeration.energyStarRefrig.label" default="Energy Star Refrig" />
		
	</label>
	<g:checkBox name="energyStarRefrig" value="${systemRefrigerationInstance?.energyStarRefrig}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'densityRefrig', 'error')} ">
	<label for="densityRefrig">
		<g:message code="systemRefrigeration.densityRefrig.label" default="Density Refrig" />
		
	</label>
	<g:field name="densityRefrig" value="${fieldValue(bean: systemRefrigerationInstance, field: 'densityRefrig')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'refrigDoorTypeLookup', 'error')} required">
	<label for="refrigDoorTypeLookup">
		<g:message code="systemRefrigeration.refrigDoorTypeLookup.label" default="Refrig Door Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="refrigDoorTypeLookup" name="refrigDoorTypeLookup.id" from="${gov.doe.seed.RefrigDoorTypeLookup.list()}" optionKey="id" required="" value="${systemRefrigerationInstance?.refrigDoorTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'refrigTypeLookup', 'error')} required">
	<label for="refrigTypeLookup">
		<g:message code="systemRefrigeration.refrigTypeLookup.label" default="Refrig Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="refrigTypeLookup" name="refrigTypeLookup.id" from="${gov.doe.seed.RefrigTypeLookup.list()}" optionKey="id" required="" value="${systemRefrigerationInstance?.refrigTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRefrigerationInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemRefrigeration.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemRefrigerationInstance?.system?.id}" class="many-to-one"/>
</div>

