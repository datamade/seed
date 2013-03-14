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
<%@ page import="gov.doe.seed.SystemFenestration" %>



<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'operableWindows', 'error')} ">
	<label for="operableWindows">
		<g:message code="systemFenestration.operableWindows.label" default="Operable Windows" />
		
	</label>
	<g:checkBox name="operableWindows" value="${systemFenestrationInstance?.operableWindows}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowsGlassFilled', 'error')} ">
	<label for="windowsGlassFilled">
		<g:message code="systemFenestration.windowsGlassFilled.label" default="Windows Glass Filled" />
		
	</label>
	<g:checkBox name="windowsGlassFilled" value="${systemFenestrationInstance?.windowsGlassFilled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowRValue', 'error')} ">
	<label for="windowRValue">
		<g:message code="systemFenestration.windowRValue.label" default="Window RV alue" />
		
	</label>
	<g:field name="windowRValue" type="number" value="${systemFenestrationInstance.windowRValue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'shgc', 'error')} ">
	<label for="shgc">
		<g:message code="systemFenestration.shgc.label" default="Shgc" />
		
	</label>
	<g:field name="shgc" value="${fieldValue(bean: systemFenestrationInstance, field: 'shgc')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowVisibleTrans', 'error')} ">
	<label for="windowVisibleTrans">
		<g:message code="systemFenestration.windowVisibleTrans.label" default="Window Visible Trans" />
		
	</label>
	<g:field name="windowVisibleTrans" value="${fieldValue(bean: systemFenestrationInstance, field: 'windowVisibleTrans')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowWallRatio', 'error')} ">
	<label for="windowWallRatio">
		<g:message code="systemFenestration.windowWallRatio.label" default="Window Wall Ratio" />
		
	</label>
	<g:field name="windowWallRatio" value="${fieldValue(bean: systemFenestrationInstance, field: 'windowWallRatio')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'skylights', 'error')} ">
	<label for="skylights">
		<g:message code="systemFenestration.skylights.label" default="Skylights" />
		
	</label>
	<g:checkBox name="skylights" value="${systemFenestrationInstance?.skylights}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowWeatherStripped', 'error')} ">
	<label for="windowWeatherStripped">
		<g:message code="systemFenestration.windowWeatherStripped.label" default="Window Weather Stripped" />
		
	</label>
	<g:checkBox name="windowWeatherStripped" value="${systemFenestrationInstance?.windowWeatherStripped}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'doorWeatherStripped', 'error')} ">
	<label for="doorWeatherStripped">
		<g:message code="systemFenestration.doorWeatherStripped.label" default="Door Weather Stripped" />
		
	</label>
	<g:checkBox name="doorWeatherStripped" value="${systemFenestrationInstance?.doorWeatherStripped}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowArea', 'error')} ">
	<label for="windowArea">
		<g:message code="systemFenestration.windowArea.label" default="Window Area" />
		
	</label>
	<g:field name="windowArea" value="${fieldValue(bean: systemFenestrationInstance, field: 'windowArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'groundFloor', 'error')} ">
	<label for="groundFloor">
		<g:message code="systemFenestration.groundFloor.label" default="Ground Floor" />
		
	</label>
	<g:checkBox name="groundFloor" value="${systemFenestrationInstance?.groundFloor}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'percGlazing', 'error')} ">
	<label for="percGlazing">
		<g:message code="systemFenestration.percGlazing.label" default="Perc Glazing" />
		
	</label>
	<g:field name="percGlazing" value="${fieldValue(bean: systemFenestrationInstance, field: 'percGlazing')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'yearLastWinReplaced', 'error')} ">
	<label for="yearLastWinReplaced">
		<g:message code="systemFenestration.yearLastWinReplaced.label" default="Year Last Win Replaced" />
		
	</label>
	<g:field name="yearLastWinReplaced" type="number" value="${systemFenestrationInstance.yearLastWinReplaced}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'percWinAreaShaded', 'error')} ">
	<label for="percWinAreaShaded">
		<g:message code="systemFenestration.percWinAreaShaded.label" default="Perc Win Area Shaded" />
		
	</label>
	<g:field name="percWinAreaShaded" value="${fieldValue(bean: systemFenestrationInstance, field: 'percWinAreaShaded')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'percSkylightArea', 'error')} ">
	<label for="percSkylightArea">
		<g:message code="systemFenestration.percSkylightArea.label" default="Perc Skylight Area" />
		
	</label>
	<g:field name="percSkylightArea" value="${fieldValue(bean: systemFenestrationInstance, field: 'percSkylightArea')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'skylightShgc', 'error')} ">
	<label for="skylightShgc">
		<g:message code="systemFenestration.skylightShgc.label" default="Skylight Shgc" />
		
	</label>
	<g:field name="skylightShgc" value="${fieldValue(bean: systemFenestrationInstance, field: 'skylightShgc')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'skylightVisibleTransmittance', 'error')} ">
	<label for="skylightVisibleTransmittance">
		<g:message code="systemFenestration.skylightVisibleTransmittance.label" default="Skylight Visible Transmittance" />
		
	</label>
	<g:field name="skylightVisibleTransmittance" value="${fieldValue(bean: systemFenestrationInstance, field: 'skylightVisibleTransmittance')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'numExtDoors', 'error')} ">
	<label for="numExtDoors">
		<g:message code="systemFenestration.numExtDoors.label" default="Num Ext Doors" />
		
	</label>
	<g:field name="numExtDoors" type="number" value="${systemFenestrationInstance.numExtDoors}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'extDoorTypeLookup', 'error')} required">
	<label for="extDoorTypeLookup">
		<g:message code="systemFenestration.extDoorTypeLookup.label" default="Ext Door Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="extDoorTypeLookup" name="extDoorTypeLookup.id" from="${gov.doe.seed.ExtDoorTypeLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.extDoorTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'extShadingOrientationLookup', 'error')} required">
	<label for="extShadingOrientationLookup">
		<g:message code="systemFenestration.extShadingOrientationLookup.label" default="Ext Shading Orientation Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="extShadingOrientationLookup" name="extShadingOrientationLookup.id" from="${gov.doe.seed.ExtShadingOrientationLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.extShadingOrientationLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'extShadingTypeLookup', 'error')} required">
	<label for="extShadingTypeLookup">
		<g:message code="systemFenestration.extShadingTypeLookup.label" default="Ext Shading Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="extShadingTypeLookup" name="extShadingTypeLookup.id" from="${gov.doe.seed.ExtShadingTypeLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.extShadingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'intShadingTypeLookup', 'error')} required">
	<label for="intShadingTypeLookup">
		<g:message code="systemFenestration.intShadingTypeLookup.label" default="Int Shading Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="intShadingTypeLookup" name="intShadingTypeLookup.id" from="${gov.doe.seed.IntShadingTypeLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.intShadingTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemFenestration.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowFrameTypeLookup', 'error')} required">
	<label for="windowFrameTypeLookup">
		<g:message code="systemFenestration.windowFrameTypeLookup.label" default="Window Frame Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="windowFrameTypeLookup" name="windowFrameTypeLookup.id" from="${gov.doe.seed.WindowFrameTypeLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.windowFrameTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowGlassLayerLookup', 'error')} required">
	<label for="windowGlassLayerLookup">
		<g:message code="systemFenestration.windowGlassLayerLookup.label" default="Window Glass Layer Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="windowGlassLayerLookup" name="windowGlassLayerLookup.id" from="${gov.doe.seed.WindowGlassLayerLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.windowGlassLayerLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemFenestrationInstance, field: 'windowGlassTypeLookup', 'error')} required">
	<label for="windowGlassTypeLookup">
		<g:message code="systemFenestration.windowGlassTypeLookup.label" default="Window Glass Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="windowGlassTypeLookup" name="windowGlassTypeLookup.id" from="${gov.doe.seed.WindowGlassTypeLookup.list()}" optionKey="id" required="" value="${systemFenestrationInstance?.windowGlassTypeLookup?.id}" class="many-to-one"/>
</div>

