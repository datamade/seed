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
<%@ page import="gov.doe.seed.SystemRoof" %>



<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'locationAtticIdFk', 'error')} ">
	<label for="locationAtticIdFk">
		<g:message code="systemRoof.locationAtticIdFk.label" default="Location Attic Id Fk" />
		
	</label>
	<g:field name="locationAtticIdFk" type="number" value="${systemRoofInstance.locationAtticIdFk}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofRValue', 'error')} ">
	<label for="roofRValue">
		<g:message code="systemRoof.roofRValue.label" default="Roof RV alue" />
		
	</label>
	<g:field name="roofRValue" type="number" value="${systemRoofInstance.roofRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'percTotRoofArea', 'error')} ">
	<label for="percTotRoofArea">
		<g:message code="systemRoof.percTotRoofArea.label" default="Perc Tot Roof Area" />
		
	</label>
	<g:field name="percTotRoofArea" value="${fieldValue(bean: systemRoofInstance, field: 'percTotRoofArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofInsulationThickness', 'error')} ">
	<label for="roofInsulationThickness">
		<g:message code="systemRoof.roofInsulationThickness.label" default="Roof Insulation Thickness" />
		
	</label>
	<g:field name="roofInsulationThickness" value="${fieldValue(bean: systemRoofInstance, field: 'roofInsulationThickness')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'atticRValue', 'error')} ">
	<label for="atticRValue">
		<g:message code="systemRoof.atticRValue.label" default="Attic RV alue" />
		
	</label>
	<g:field name="atticRValue" type="number" value="${systemRoofInstance.atticRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'atticInsulationThickness', 'error')} ">
	<label for="atticInsulationThickness">
		<g:message code="systemRoof.atticInsulationThickness.label" default="Attic Insulation Thickness" />
		
	</label>
	<g:field name="atticInsulationThickness" value="${fieldValue(bean: systemRoofInstance, field: 'atticInsulationThickness')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'radiantBarrier', 'error')} ">
	<label for="radiantBarrier">
		<g:message code="systemRoof.radiantBarrier.label" default="Radiant Barrier" />
		
	</label>
	<g:checkBox name="radiantBarrier" value="${systemRoofInstance?.radiantBarrier}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofArea', 'error')} ">
	<label for="roofArea">
		<g:message code="systemRoof.roofArea.label" default="Roof Area" />
		
	</label>
	<g:field name="roofArea" value="${fieldValue(bean: systemRoofInstance, field: 'roofArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'percRoofTerrace', 'error')} ">
	<label for="percRoofTerrace">
		<g:message code="systemRoof.percRoofTerrace.label" default="Perc Roof Terrace" />
		
	</label>
	<g:field name="percRoofTerrace" value="${fieldValue(bean: systemRoofInstance, field: 'percRoofTerrace')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'terraceRValue', 'error')} ">
	<label for="terraceRValue">
		<g:message code="systemRoof.terraceRValue.label" default="Terrace RV alue" />
		
	</label>
	<g:field name="terraceRValue" value="${fieldValue(bean: systemRoofInstance, field: 'terraceRValue')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'atticInsulationLookup', 'error')} required">
	<label for="atticInsulationLookup">
		<g:message code="systemRoof.atticInsulationLookup.label" default="Attic Insulation Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="atticInsulationLookup" name="atticInsulationLookup.id" from="${gov.doe.seed.AtticInsulationLookup.list()}" optionKey="id" required="" value="${systemRoofInstance?.atticInsulationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'atticTypeLookup', 'error')} required">
	<label for="atticTypeLookup">
		<g:message code="systemRoof.atticTypeLookup.label" default="Attic Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="atticTypeLookup" name="atticTypeLookup.id" from="${gov.doe.seed.AtticTypeLookup.list()}" optionKey="id" required="" value="${systemRoofInstance?.atticTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofColorLookup', 'error')} required">
	<label for="roofColorLookup">
		<g:message code="systemRoof.roofColorLookup.label" default="Roof Color Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roofColorLookup" name="roofColorLookup.id" from="${gov.doe.seed.RoofColorLookup.list()}" optionKey="id" required="" value="${systemRoofInstance?.roofColorLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofDeckTypeLookup', 'error')} required">
	<label for="roofDeckTypeLookup">
		<g:message code="systemRoof.roofDeckTypeLookup.label" default="Roof Deck Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roofDeckTypeLookup" name="roofDeckTypeLookup.id" from="${gov.doe.seed.RoofDeckTypeLookup.list()}" optionKey="id" required="" value="${systemRoofInstance?.roofDeckTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofInsulationType', 'error')} required">
	<label for="roofInsulationType">
		<g:message code="systemRoof.roofInsulationType.label" default="Roof Insulation Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roofInsulationType" name="roofInsulationType.id" from="${gov.doe.seed.RoofInsulationType.list()}" optionKey="id" required="" value="${systemRoofInstance?.roofInsulationType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofSlopeLookup', 'error')} required">
	<label for="roofSlopeLookup">
		<g:message code="systemRoof.roofSlopeLookup.label" default="Roof Slope Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roofSlopeLookup" name="roofSlopeLookup.id" from="${gov.doe.seed.RoofSlopeLookup.list()}" optionKey="id" required="" value="${systemRoofInstance?.roofSlopeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'roofTypeLookup', 'error')} required">
	<label for="roofTypeLookup">
		<g:message code="systemRoof.roofTypeLookup.label" default="Roof Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="roofTypeLookup" name="roofTypeLookup.id" from="${gov.doe.seed.RoofTypeLookup.list()}" optionKey="id" required="" value="${systemRoofInstance?.roofTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemRoofInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemRoof.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemRoofInstance?.system?.id}" class="many-to-one"/>
</div>

