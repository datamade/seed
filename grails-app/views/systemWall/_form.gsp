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
<%@ page import="gov.doe.seed.SystemWall" %>



<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'wallRValue', 'error')} ">
	<label for="wallRValue">
		<g:message code="systemWall.wallRValue.label" default="Wall RV alue" />
		
	</label>
	<g:field name="wallRValue" type="number" value="${systemWallInstance.wallRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'percTotWallArea', 'error')} ">
	<label for="percTotWallArea">
		<g:message code="systemWall.percTotWallArea.label" default="Perc Tot Wall Area" />
		
	</label>
	<g:field name="percTotWallArea" value="${fieldValue(bean: systemWallInstance, field: 'percTotWallArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'wallInsulationThickness', 'error')} ">
	<label for="wallInsulationThickness">
		<g:message code="systemWall.wallInsulationThickness.label" default="Wall Insulation Thickness" />
		
	</label>
	<g:field name="wallInsulationThickness" value="${fieldValue(bean: systemWallInstance, field: 'wallInsulationThickness')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'basementWallInsulThickness', 'error')} ">
	<label for="basementWallInsulThickness">
		<g:message code="systemWall.basementWallInsulThickness.label" default="Basement Wall Insul Thickness" />
		
	</label>
	<g:field name="basementWallInsulThickness" value="${fieldValue(bean: systemWallInstance, field: 'basementWallInsulThickness')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'wallArea', 'error')} ">
	<label for="wallArea">
		<g:message code="systemWall.wallArea.label" default="Wall Area" />
		
	</label>
	<g:field name="wallArea" value="${fieldValue(bean: systemWallInstance, field: 'wallArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'extWallColorLookup', 'error')} required">
	<label for="extWallColorLookup">
		<g:message code="systemWall.extWallColorLookup.label" default="Ext Wall Color Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="extWallColorLookup" name="extWallColorLookup.id" from="${gov.doe.seed.ExtWallColorLookup.list()}" optionKey="id" required="" value="${systemWallInstance?.extWallColorLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'extWallTypeLookup', 'error')} required">
	<label for="extWallTypeLookup">
		<g:message code="systemWall.extWallTypeLookup.label" default="Ext Wall Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="extWallTypeLookup" name="extWallTypeLookup.id" from="${gov.doe.seed.ExtWallTypeLookup.list()}" optionKey="id" required="" value="${systemWallInstance?.extWallTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemWall.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemWallInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'wallInsulationTypeLookup', 'error')} required">
	<label for="wallInsulationTypeLookup">
		<g:message code="systemWall.wallInsulationTypeLookup.label" default="Wall Insulation Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="wallInsulationTypeLookup" name="wallInsulationTypeLookup.id" from="${gov.doe.seed.WallInsulationTypeLookup.list()}" optionKey="id" required="" value="${systemWallInstance?.wallInsulationTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemWallInstance, field: 'wallTightnessLookup', 'error')} required">
	<label for="wallTightnessLookup">
		<g:message code="systemWall.wallTightnessLookup.label" default="Wall Tightness Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="wallTightnessLookup" name="wallTightnessLookup.id" from="${gov.doe.seed.WallTightnessLookup.list()}" optionKey="id" required="" value="${systemWallInstance?.wallTightnessLookup?.id}" class="many-to-one"/>
</div>

