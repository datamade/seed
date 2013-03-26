<% /* 
	This layout is used for generating partial page content for embedding HTML 
	fragments into an existing page via AJAX.  It is the template used by most 
	of the views in the application, as most of them are children of the main
	Facility or Site classes.  Site and Facility will use the "main" template, 
	and will load the partials in as the user selects from the "tree" of 
	sub-components in the facility.
	
	Currently, this layout inserts the page into a div named "embedded" and 
	sets up a style that hides the default stuff you typically get on a 
	generated page (title, navigation, etc.).
*/ %>
<head>
	<style type="text/css">
		#embedded h1
		{
			display: none;
		}
	
		#embedded .nav,.skip
		{
			display: none;
		}	
		.form,.buttons
		{
			border: none;
		}
	</style>
</head>
<div id="embedded">
	<g:layoutBody />
</div>