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
<%@ page import="gov.doe.seed.SystemFoundation" %>



<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'perimeterInsulated', 'error')} ">
	<label for="perimeterInsulated">
		<g:message code="systemFoundation.perimeterInsulated.label" default="Perimeter Insulated" />
		
	</label>
	<g:checkBox name="perimeterInsulated" value="${systemFoundationInstance?.perimeterInsulated}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'floorInsulationThickness', 'error')} ">
	<label for="floorInsulationThickness">
		<g:message code="systemFoundation.floorInsulationThickness.label" default="Floor Insulation Thickness" />
		
	</label>
	<g:field name="floorInsulationThickness" value="${fieldValue(bean: systemFoundationInstance, field: 'floorInsulationThickness')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'floorRValue', 'error')} ">
	<label for="floorRValue">
		<g:message code="systemFoundation.floorRValue.label" default="Floor RV alue" />
		
	</label>
	<g:field name="floorRValue" type="number" value="${systemFoundationInstance.floorRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'carpet', 'error')} ">
	<label for="carpet">
		<g:message code="systemFoundation.carpet.label" default="Carpet" />
		
	</label>
	<g:checkBox name="carpet" value="${systemFoundationInstance?.carpet}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'plumbingSealing', 'error')} ">
	<label for="plumbingSealing">
		<g:message code="systemFoundation.plumbingSealing.label" default="Plumbing Sealing" />
		
	</label>
	<g:checkBox name="plumbingSealing" value="${systemFoundationInstance?.plumbingSealing}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'floorTypeLookup', 'error')} required">
	<label for="floorTypeLookup">
		<g:message code="systemFoundation.floorTypeLookup.label" default="Floor Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="floorTypeLookup" name="floorTypeLookup.id" from="${gov.doe.seed.FloorTypeLookup.list()}" optionKey="id" required="" value="${systemFoundationInstance?.floorTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'groundCouplingLookup', 'error')} required">
	<label for="groundCouplingLookup">
		<g:message code="systemFoundation.groundCouplingLookup.label" default="Ground Coupling Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="groundCouplingLookup" name="groundCouplingLookup.id" from="${gov.doe.seed.GroundCouplingLookup.list()}" optionKey="id" required="" value="${systemFoundationInstance?.groundCouplingLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFoundationInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemFoundation.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemFoundationInstance?.system?.id}" class="many-to-one"/>
</div>

