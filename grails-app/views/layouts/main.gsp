<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title><g:layoutTitle default="SEED" /></title>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon"
	href="${resource(dir: 'images', file: 'favicon.ico')}"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
<link rel="apple-touch-icon" sizes="114x114"
	href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">

<link rel="stylesheet" type="text/css" media="all"
	href="${resource(dir: 'css', file: 'global.css')}" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" media="all" href="${resource(dir: 'css', file: 'ie.css')}" />
<![endif]-->
<link rel="stylesheet" type="text/css" media="all"
	href="${resource(dir: 'css', file: 'seed.css')}" />
<link rel="stylesheet" type="text/css" media="all"
	href="${resource(dir: 'css', file: 'jquery-ui.css')}" />

<g:layoutHead />
<r:layoutResources />
</head>
<body>
	<g:javascript library="application" />
	<div id="wrapper_block" role="application">
		<div class="wp-inner">
			<div id="skip"><a href="#main-content" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;" /></a></div>
			<div id="header_block" role="banner">
				<div class="hd-inner">
					<a href="/" class="branding">SEED [beta] - Standard Energy Efficiency Data Platform</a>
			<div style="position:relative; right:10px; top:10px; text-align: right; padding:1.0em">
				<shiro:authenticated>Welcome <shiro:principal/></shiro:authenticated>&nbsp;
			</div>
			<div style="position:relative; right:10px; top:10px; text-align: right; padding:1.0em">
				<shiro:authenticated><a href="<g:createLink controller="auth" action="signOut"/>">logout</a></shiro:authenticated>
				<shiro:notAuthenticated><a href="<g:createLink controller="auth" action="login"/>">login</a></shiro:notAuthenticated>
			</div>		
					<div class="global-nav" role="navigation">
						<ul>
							<li class="first"><g:link controller="index">Home</g:link></li>
							<li><a href="${reportsURL}" target="seed_reports">Reports</a></li>
							<%-- TODO: Make URL a property --%>
							<li class="last"><a href="/manage_data/">Manage Data </a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<div id="body_block" class="mb">
				<div class="bd-inner">
					<div id="main_block">
						<g:layoutBody />
					</div>
				</div>
			</div>
			
			<div id="footer_block">
				
				<div class="ft-inner"><div class="footer" role="contentinfo">Version <g:meta name="app.version"/></div></div>
			</div>
		</div>
	</div>
	<r:layoutResources />
</body>
</html>
