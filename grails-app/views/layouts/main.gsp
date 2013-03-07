<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="${createLink(uri: '/')}"><img src="${resource(dir: 'images', file: 'logo.png')}" alt="DOE SEED logo"/></a>
			<div style="position:relative; right:10px; top:-80px; text-align: right; padding:1.0em">
				<shiro:authenticated>Welcome <shiro:principal/></shiro:authenticated>&nbsp;
			</div>
			<div style="position:relative; right:10px; top:-110px; text-align: right; padding:1.0em">
				<shiro:authenticated><a href="<g:createLink controller="auth" action="signOut"/>">logout</a></shiro:authenticated>
				<shiro:notAuthenticated><a href="<g:createLink controller="auth" action="login"/>">login</a></shiro:notAuthenticated>
			</div>		
		</div>
		<g:layoutBody/>
		<div class="footer" role="contentinfo">Version <g:meta name="app.version"/></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
