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
<%@ page import="gov.doe.seed.SystemHvacLocationLookup" %>



<div class="fieldcontain ${hasErrors(bean: systemHvacLocationLookupInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="systemHvacLocationLookup.location.label" default="Location" />
		
	</label>
	<g:textField name="location" maxlength="45" value="${systemHvacLocationLookupInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: systemHvacLocationLookupInstance, field: 'systemHvacs', 'error')} ">
	<label for="systemHvacs">
		<g:message code="systemHvacLocationLookup.systemHvacs.label" default="System Hvacs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${systemHvacLocationLookupInstance?.systemHvacs?}" var="s">
    <li><g:link controller="systemHvac" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="systemHvac" action="create" params="['systemHvacLocationLookup.id': systemHvacLocationLookupInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'systemHvac.label', default: 'SystemHvac')])}</g:link>
</li>
</ul>

</div>

