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
<%@ page import="gov.doe.seed.SiteCityCode" %>



<div class="fieldcontain ${hasErrors(bean: siteCityCodeInstance, field: 'cityCodeId', 'error')} ">
	<label for="cityCodeId">
		<g:message code="siteCityCode.cityCodeId.label" default="City Code Id" />
		
	</label>
	<g:textField name="cityCodeId" maxlength="45" value="${siteCityCodeInstance?.cityCodeId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteCityCodeInstance, field: 'cityCodeName', 'error')} ">
	<label for="cityCodeName">
		<g:message code="siteCityCode.cityCodeName.label" default="City Code Name" />
		
	</label>
	<g:textField name="cityCodeName" maxlength="45" value="${siteCityCodeInstance?.cityCodeName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: siteCityCodeInstance, field: 'site', 'error')} required">
	<label for="site">
		<g:message code="siteCityCode.site.label" default="Site" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="site" name="site.id" from="${gov.doe.seed.Site.list()}" optionKey="id" required="" value="${siteCityCodeInstance?.site?.id}" class="many-to-one"/>
</div>

