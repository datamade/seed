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
<%@ page import="gov.doe.seed.System" %>



<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'createdBy', 'error')} ">
	<label for="createdBy">
		<g:message code="system.createdBy.label" default="Created By" />
		
	</label>
	<g:textField name="createdBy" maxlength="45" value="${systemInstance?.createdBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'updatedBy', 'error')} ">
	<label for="updatedBy">
		<g:message code="system.updatedBy.label" default="Updated By" />
		
	</label>
	<g:textField name="updatedBy" maxlength="45" value="${systemInstance?.updatedBy}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="system.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${systemInstance?.createdDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'facility', 'error')} required">
	<label for="facility">
		<g:message code="system.facility.label" default="Facility" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="facility" name="facility.id" from="${gov.doe.seed.Facility.list()}" optionKey="id" required="" value="${systemInstance?.facility?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemAirs', 'error')} ">
	<label for="systemAirs">
		<g:message code="system.systemAirs.label" default="System Airs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemAirs?}" var="s">
    <li><g:link controller="systemAir" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemAir" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemAir.label', default: 'SystemAir')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemConveyances', 'error')} ">
	<label for="systemConveyances">
		<g:message code="system.systemConveyances.label" default="System Conveyances" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemConveyances?}" var="s">
    <li><g:link controller="systemConveyance" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemConveyance" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemConveyance.label', default: 'SystemConveyance')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemCookings', 'error')} ">
	<label for="systemCookings">
		<g:message code="system.systemCookings.label" default="System Cookings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemCookings?}" var="s">
    <li><g:link controller="systemCooking" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemCooking" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemCooking.label', default: 'SystemCooking')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemCoolings', 'error')} ">
	<label for="systemCoolings">
		<g:message code="system.systemCoolings.label" default="System Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemCoolings?}" var="s">
    <li><g:link controller="systemCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemCooling" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemCooling.label', default: 'SystemCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemDishwashers', 'error')} ">
	<label for="systemDishwashers">
		<g:message code="system.systemDishwashers.label" default="System Dishwashers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemDishwashers?}" var="s">
    <li><g:link controller="systemDishwasher" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemDishwasher" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemDishwasher.label', default: 'SystemDishwasher')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemEnergyStorages', 'error')} ">
	<label for="systemEnergyStorages">
		<g:message code="system.systemEnergyStorages.label" default="System Energy Storages" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemEnergyStorages?}" var="s">
    <li><g:link controller="systemEnergyStorage" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemEnergyStorage" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemEnergyStorage.label', default: 'SystemEnergyStorage')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemFenestrations', 'error')} ">
	<label for="systemFenestrations">
		<g:message code="system.systemFenestrations.label" default="System Fenestrations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemFenestrations?}" var="s">
    <li><g:link controller="systemFenestration" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemFenestration" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemFenestration.label', default: 'SystemFenestration')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemFoundations', 'error')} ">
	<label for="systemFoundations">
		<g:message code="system.systemFoundations.label" default="System Foundations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemFoundations?}" var="s">
    <li><g:link controller="systemFoundation" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemFoundation" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemFoundation.label', default: 'SystemFoundation')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemGenerals', 'error')} ">
	<label for="systemGenerals">
		<g:message code="system.systemGenerals.label" default="System Generals" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemGenerals?}" var="s">
    <li><g:link controller="systemGeneral" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemGeneral" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemGeneral.label', default: 'SystemGeneral')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemHotwaters', 'error')} ">
	<label for="systemHotwaters">
		<g:message code="system.systemHotwaters.label" default="System Hotwaters" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemHotwaters?}" var="s">
    <li><g:link controller="systemHotwater" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHotwater" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHotwater.label', default: 'SystemHotwater')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemIts', 'error')} ">
	<label for="systemIts">
		<g:message code="system.systemIts.label" default="System Its" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemIts?}" var="s">
    <li><g:link controller="systemIt" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemIt" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemIt.label', default: 'SystemIt')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemLaundries', 'error')} ">
	<label for="systemLaundries">
		<g:message code="system.systemLaundries.label" default="System Laundries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemLaundries?}" var="s">
    <li><g:link controller="systemLaundry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemLaundry" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemLaundry.label', default: 'SystemLaundry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemLightings', 'error')} ">
	<label for="systemLightings">
		<g:message code="system.systemLightings.label" default="System Lightings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemLightings?}" var="s">
    <li><g:link controller="systemLighting" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemLighting" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemLighting.label', default: 'SystemLighting')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemOnsites', 'error')} ">
	<label for="systemOnsites">
		<g:message code="system.systemOnsites.label" default="System Onsites" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemOnsites?}" var="s">
    <li><g:link controller="systemOnsite" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemOnsite" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemOnsite.label', default: 'SystemOnsite')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemPools', 'error')} ">
	<label for="systemPools">
		<g:message code="system.systemPools.label" default="System Pools" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemPools?}" var="s">
    <li><g:link controller="systemPool" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemPool" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemPool.label', default: 'SystemPool')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemProcessLoads', 'error')} ">
	<label for="systemProcessLoads">
		<g:message code="system.systemProcessLoads.label" default="System Process Loads" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemProcessLoads?}" var="s">
    <li><g:link controller="systemProcessLoad" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemProcessLoad" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemProcessLoad.label', default: 'SystemProcessLoad')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemRefrigerations', 'error')} ">
	<label for="systemRefrigerations">
		<g:message code="system.systemRefrigerations.label" default="System Refrigerations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemRefrigerations?}" var="s">
    <li><g:link controller="systemRefrigeration" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemRefrigeration" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemRefrigeration.label', default: 'SystemRefrigeration')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemRoofs', 'error')} ">
	<label for="systemRoofs">
		<g:message code="system.systemRoofs.label" default="System Roofs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemRoofs?}" var="s">
    <li><g:link controller="systemRoof" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemRoof" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemRoof.label', default: 'SystemRoof')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemTypeLookup', 'error')} required">
	<label for="systemTypeLookup">
		<g:message code="system.systemTypeLookup.label" default="System Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="systemTypeLookup" name="systemTypeLookup.id" from="${gov.doe.seed.SystemTypeLookup.list()}" optionKey="id" required="" value="${systemInstance?.systemTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemWalls', 'error')} ">
	<label for="systemWalls">
		<g:message code="system.systemWalls.label" default="System Walls" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemWalls?}" var="s">
    <li><g:link controller="systemWall" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemWall" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemWall.label', default: 'SystemWall')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemZonalCoolings', 'error')} ">
	<label for="systemZonalCoolings">
		<g:message code="system.systemZonalCoolings.label" default="System Zonal Coolings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemZonalCoolings?}" var="s">
    <li><g:link controller="systemZonalCooling" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemZonalCooling" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemZonalCooling.label', default: 'SystemZonalCooling')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'systemZonalHeatings', 'error')} ">
	<label for="systemZonalHeatings">
		<g:message code="system.systemZonalHeatings.label" default="System Zonal Heatings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemInstance?.systemZonalHeatings?}" var="s">
    <li><g:link controller="systemZonalHeating" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemZonalHeating" action="create" params="['system.id': systemInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemZonalHeating.label', default: 'SystemZonalHeating')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: systemInstance, field: 'updatedDate', 'error')} required">
	<label for="updatedDate">
		<g:message code="system.updatedDate.label" default="Updated Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updatedDate" precision="day"  value="${systemInstance?.updatedDate}"  />
</div>

