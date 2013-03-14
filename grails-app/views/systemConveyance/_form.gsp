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
<%@ page import="gov.doe.seed.SystemConveyance" %>



<div class="fieldcontain ${hasErrors(bean: systemConveyanceInstance, field: 'quantityConveyance', 'error')} ">
	<label for="quantityConveyance">
		<g:message code="systemConveyance.quantityConveyance.label" default="Quantity Conveyance" />
		
	</label>
	<g:field name="quantityConveyance" type="number" value="${systemConveyanceInstance.quantityConveyance}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConveyanceInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemConveyance.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemConveyanceInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConveyanceInstance, field: 'conveyanceTypeLookup', 'error')} required">
	<label for="conveyanceTypeLookup">
		<g:message code="systemConveyance.conveyanceTypeLookup.label" default="Conveyance Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="conveyanceTypeLookup" name="conveyanceTypeLookup.id" from="${gov.doe.seed.ConveyanceTypeLookup.list()}" optionKey="id" required="" value="${systemConveyanceInstance?.conveyanceTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemConveyanceInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemConveyance.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemConveyanceInstance?.system?.id}" class="many-to-one"/>
</div>

