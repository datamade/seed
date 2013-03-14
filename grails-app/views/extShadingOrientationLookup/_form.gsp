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
<%@ page import="gov.doe.seed.ExtShadingOrientationLookup" %>



<div class="fieldcontain ${hasErrors(bean: extShadingOrientationLookupInstance, field: 'exteriorShadingOrientation', 'error')} ">
	<label for="exteriorShadingOrientation">
		<g:message code="extShadingOrientationLookup.exteriorShadingOrientation.label" default="Exterior Shading Orientation" />
		
	</label>
	<g:textField name="exteriorShadingOrientation" maxlength="45" value="${extShadingOrientationLookupInstance?.exteriorShadingOrientation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: extShadingOrientationLookupInstance, field: 'sortOrder', 'error')} ">
	<label for="sortOrder">
		<g:message code="extShadingOrientationLookup.sortOrder.label" default="Sort Order" />
		
	</label>
	<g:field name="sortOrder" type="number" value="${extShadingOrientationLookupInstance.sortOrder}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: extShadingOrientationLookupInstance, field: 'systemFenestrations', 'error')} ">
	<label for="systemFenestrations">
		<g:message code="extShadingOrientationLookup.systemFenestrations.label" default="System Fenestrations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${extShadingOrientationLookupInstance?.systemFenestrations?}" var="s">
    <li><g:link controller="systemFenestration" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemFenestration" action="create" params="['extShadingOrientationLookup.id': extShadingOrientationLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemFenestration.label', default: 'SystemFenestration')])}</g:link>
</li>
</ul>

</div>

