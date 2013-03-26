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

<%@ page import="gov.doe.seed.Facility" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'facility.label', default: 'Facility')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type="text/css">
			#tree {
			    float:left;
			    width:240px;
			    margin-right: 15px;
			    margin-top: 7px;
			}
			#edit[pane] {
			    float:right;
			    width:720px;
			    height:400px; 
			}		
			#edit-legend {
				font-size: .9em;
			}
	</style>


	</head>
	<body>
		<g:javascript src="jquery.jstree.js" />
		<script type="text/javascript">
			$(function () {
		    $("#tree-container").jstree({
		        "json_data" : {
		            "data" : [
		                {
		                    "data" : "123 Main Street",
		                    "metadata" : { domain: 'facility', id : 23 },
		                    "state" : "open",
		                    "children" : [
	                         { 
	                         	"data" : "Activity Areas",
	                    		"metadata" : { domain: 'activityArea', id : 23 }
	                         },
	                         { 
	                         	"data" : "Certifications",
	                    		"metadata" : { domain: 'certificationRating', id : 23 }
		                     },
	                         { 
	                         	"data" : "Metrics",
			                    "state" : "open",
	                         	"children" : ["Energy Use", "Financial", "Water Use"]
	                         },
	                         { 
	                         	"data" : "Systems",
			                    "state" : "open",
	                         	"children" : ["Air Distribution", "Conveying", "Cooking"]
		                     }]
		                }
		            ]
		        },
		        "themes" : {
		        	            "theme" : "classic"
		        	        },

		        "plugins" : [ "themes", "json_data", "ui" ]
		
		    }).bind("select_node.jstree", function (e, data) { loadRemoteForm(data.rslt.obj.data("domain"),data.rslt.obj.data("id")); });
		});	
			
		/* when ready add: "ajax" : { "url" : "${createLink(uri: '/')}facility/getJsonTree/id" } */	
			
	</script>
	<div id="tree">
		<fieldset id="tree-container"></fieldset>
		</div>
		<div id="edit-pane" >
				<fieldset>
				  <legend id="edit-legend">Edit Facility: 123 Main St.</legend> <!--  will be: ${facility?.name } -->
				  <div id="remote"></div>
				</fieldset>
		</div>
			<script type="text/javascript">
			function loadRemoteForm(controller, id)
			{
				if (controller)
				{
					$("#remote").load("${createLink(uri: '/')}" + controller + "/create"); // Will be "/edit/" + id
				}
			}
		</script>
	</body>
</html>
