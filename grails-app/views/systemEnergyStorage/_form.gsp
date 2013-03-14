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
<%@ page import="gov.doe.seed.SystemEnergyStorage" %>



<div class="fieldcontain ${hasErrors(bean: systemEnergyStorageInstance, field: 'quantityEnergy', 'error')} ">
	<label for="quantityEnergy">
		<g:message code="systemEnergyStorage.quantityEnergy.label" default="Quantity Energy" />
		
	</label>
	<g:field name="quantityEnergy" type="number" value="${systemEnergyStorageInstance.quantityEnergy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemEnergyStorageInstance, field: 'energyStorageCapacity', 'error')} ">
	<label for="energyStorageCapacity">
		<g:message code="systemEnergyStorage.energyStorageCapacity.label" default="Energy Storage Capacity" />
		
	</label>
	<g:field name="energyStorageCapacity" value="${fieldValue(bean: systemEnergyStorageInstance, field: 'energyStorageCapacity')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemEnergyStorageInstance, field: 'energyStorageTypeLookup', 'error')} required">
	<label for="energyStorageTypeLookup">
		<g:message code="systemEnergyStorage.energyStorageTypeLookup.label" default="Energy Storage Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="energyStorageTypeLookup" name="energyStorageTypeLookup.id" from="${gov.doe.seed.EnergyStorageTypeLookup.list()}" optionKey="id" required="" value="${systemEnergyStorageInstance?.energyStorageTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemEnergyStorageInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemEnergyStorage.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemEnergyStorageInstance?.system?.id}" class="many-to-one"/>
</div>

