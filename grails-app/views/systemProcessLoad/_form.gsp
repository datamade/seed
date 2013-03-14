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
<%@ page import="gov.doe.seed.SystemProcessLoad" %>



<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'quantityProcess', 'error')} ">
	<label for="quantityProcess">
		<g:message code="systemProcessLoad.quantityProcess.label" default="Quantity Process" />
		
	</label>
	<g:field name="quantityProcess" type="number" value="${systemProcessLoadInstance.quantityProcess}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'efficiencyProcess', 'error')} ">
	<label for="efficiencyProcess">
		<g:message code="systemProcessLoad.efficiencyProcess.label" default="Efficiency Process" />
		
	</label>
	<g:field name="efficiencyProcess" value="${fieldValue(bean: systemProcessLoadInstance, field: 'efficiencyProcess')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'efficiencyUnitProcess', 'error')} ">
	<label for="efficiencyUnitProcess">
		<g:message code="systemProcessLoad.efficiencyUnitProcess.label" default="Efficiency Unit Process" />
		
	</label>
	<g:textField name="efficiencyUnitProcess" maxlength="10" value="${systemProcessLoadInstance?.efficiencyUnitProcess}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'capacityProcessLoad', 'error')} ">
	<label for="capacityProcessLoad">
		<g:message code="systemProcessLoad.capacityProcessLoad.label" default="Capacity Process Load" />
		
	</label>
	<g:field name="capacityProcessLoad" value="${fieldValue(bean: systemProcessLoadInstance, field: 'capacityProcessLoad')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'capUnitProcessLoad', 'error')} ">
	<label for="capUnitProcessLoad">
		<g:message code="systemProcessLoad.capUnitProcessLoad.label" default="Cap Unit Process Load" />
		
	</label>
	<g:field name="capUnitProcessLoad" type="number" value="${systemProcessLoadInstance.capUnitProcessLoad}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemProcessLoad.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemProcessLoadInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'processLoadLookup', 'error')} required">
	<label for="processLoadLookup">
		<g:message code="systemProcessLoad.processLoadLookup.label" default="Process Load Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="processLoadLookup" name="processLoadLookup.id" from="${gov.doe.seed.ProcessLoadLookup.list()}" optionKey="id" required="" value="${systemProcessLoadInstance?.processLoadLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemProcessLoadInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemProcessLoad.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemProcessLoadInstance?.system?.id}" class="many-to-one"/>
</div>

