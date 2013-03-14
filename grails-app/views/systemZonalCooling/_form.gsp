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
<%@ page import="gov.doe.seed.SystemZonalCooling" %>



<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'yearOfManufactureZonalCooling', 'error')} ">
	<label for="yearOfManufactureZonalCooling">
		<g:message code="systemZonalCooling.yearOfManufactureZonalCooling.label" default="Year Of Manufacture Zonal Cooling" />
		
	</label>
	<g:field name="yearOfManufactureZonalCooling" type="number" value="${systemZonalCoolingInstance.yearOfManufactureZonalCooling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'quantityZonalCooling', 'error')} ">
	<label for="quantityZonalCooling">
		<g:message code="systemZonalCooling.quantityZonalCooling.label" default="Quantity Zonal Cooling" />
		
	</label>
	<g:field name="quantityZonalCooling" type="number" value="${systemZonalCoolingInstance.quantityZonalCooling}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'percTotInstalledCapZonalCooling', 'error')} ">
	<label for="percTotInstalledCapZonalCooling">
		<g:message code="systemZonalCooling.percTotInstalledCapZonalCooling.label" default="Perc Tot Installed Cap Zonal Cooling" />
		
	</label>
	<g:field name="percTotInstalledCapZonalCooling" value="${fieldValue(bean: systemZonalCoolingInstance, field: 'percTotInstalledCapZonalCooling')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'percFloorAreaServedZonalCooling', 'error')} ">
	<label for="percFloorAreaServedZonalCooling">
		<g:message code="systemZonalCooling.percFloorAreaServedZonalCooling.label" default="Perc Floor Area Served Zonal Cooling" />
		
	</label>
	<g:field name="percFloorAreaServedZonalCooling" value="${fieldValue(bean: systemZonalCoolingInstance, field: 'percFloorAreaServedZonalCooling')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'downstreamDistribution', 'error')} ">
	<label for="downstreamDistribution">
		<g:message code="systemZonalCooling.downstreamDistribution.label" default="Downstream Distribution" />
		
	</label>
	<g:checkBox name="downstreamDistribution" value="${systemZonalCoolingInstance?.downstreamDistribution}" />
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'avgOperHrs', 'error')} ">
	<label for="avgOperHrs">
		<g:message code="systemZonalCooling.avgOperHrs.label" default="Avg Oper Hrs" />
		
	</label>
	<g:field name="avgOperHrs" value="${fieldValue(bean: systemZonalCoolingInstance, field: 'avgOperHrs')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'numMonthsOper', 'error')} ">
	<label for="numMonthsOper">
		<g:message code="systemZonalCooling.numMonthsOper.label" default="Num Months Oper" />
		
	</label>
	<g:field name="numMonthsOper" value="${fieldValue(bean: systemZonalCoolingInstance, field: 'numMonthsOper')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'controlTypeSystemLookup', 'error')} required">
	<label for="controlTypeSystemLookup">
		<g:message code="systemZonalCooling.controlTypeSystemLookup.label" default="Control Type System Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="controlTypeSystemLookup" name="controlTypeSystemLookup.id" from="${gov.doe.seed.ControlTypeSystemLookup.list()}" optionKey="id" required="" value="${systemZonalCoolingInstance?.controlTypeSystemLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'fuelTypeLookup', 'error')} required">
	<label for="fuelTypeLookup">
		<g:message code="systemZonalCooling.fuelTypeLookup.label" default="Fuel Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="fuelTypeLookup" name="fuelTypeLookup.id" from="${gov.doe.seed.FuelTypeLookup.list()}" optionKey="id" required="" value="${systemZonalCoolingInstance?.fuelTypeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'system', 'error')} required">
	<label for="system">
		<g:message code="systemZonalCooling.system.label" default="System" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="system" name="system.id" from="${gov.doe.seed.System.list()}" optionKey="id" required="" value="${systemZonalCoolingInstance?.system?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'zonalCoolingSizeRangeLookup', 'error')} required">
	<label for="zonalCoolingSizeRangeLookup">
		<g:message code="systemZonalCooling.zonalCoolingSizeRangeLookup.label" default="Zonal Cooling Size Range Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="zonalCoolingSizeRangeLookup" name="zonalCoolingSizeRangeLookup.id" from="${gov.doe.seed.ZonalCoolingSizeRangeLookup.list()}" optionKey="id" required="" value="${systemZonalCoolingInstance?.zonalCoolingSizeRangeLookup?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemZonalCoolingInstance, field: 'zonalCoolingTypeLookup', 'error')} required">
	<label for="zonalCoolingTypeLookup">
		<g:message code="systemZonalCooling.zonalCoolingTypeLookup.label" default="Zonal Cooling Type Lookup" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="zonalCoolingTypeLookup" name="zonalCoolingTypeLookup.id" from="${gov.doe.seed.ZonalCoolingTypeLookup.list()}" optionKey="id" required="" value="${systemZonalCoolingInstance?.zonalCoolingTypeLookup?.id}" class="many-to-one"/>
</div>

