<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
<title>Welcome to SEED</title>
</head>
<body>
	<div class="main-content" role="main">
		<div class="colx2_2080">
			<div class="col first">
				<nav:primary />
				<div id="user-nav">
					<nav:menu scope="user" />
				</div>
				<div id="admin-nav">
					<nav:menu scope="admin"/>
				</div>
				<% if (grails.util.Environment.current == 'DEVELOPMENT')  { %>
				<h1>Application Status</h1>
				<ul>
					<li>Environment: ${grails.util.Environment.current}</li>
					<li>App version: <g:meta name="app.version" /></li>
					<li>Grails version: <g:meta name="app.grails.version" /></li>
					<li>Groovy version: ${GroovySystem.getVersion()}</li>
					<li>JVM version: ${System.getProperty('java.version')}</li>
					<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
					<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
					<li>Domains: ${grailsApplication.domainClasses.size()}</li>
					<li>Services: ${grailsApplication.serviceClasses.size()}</li>
					<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
				</ul>
				<h1>Installed Plugins</h1>
				<ul>
					<g:each var="plugin"
						in="${applicationContext.getBean('pluginManager').allPlugins}">
						<li>
							${plugin.name} - ${plugin.version}
						</li>
					</g:each>
				</ul>
				<% } %>
			</div>
			<div class="col last faux section-wp">
				<div class="content">
					<div class="section-box">
						<div class="section-header">
							<h2>Welcome</h2>
							<span class="description"></span>
						</div>
						<div class="section-content write-form">
							<div class="flash${flash.message ? "" : "_empty"}_empty">
								${flash.message}
							</div>
							<div class="form-row">
								<p>Welcome to the Standard Energy Efficiency Data platform.
									The SEED platform enables you to import and combine data about
									building energy performance from multiple sources, and conduct
									analyses and reporting of the information.</p>

								<p>You are currently listed as an administrator. From here
									you can add new data to the system or run reports on the data
									stored in your account.</p>
							</div>
						</div>
						<!--end body-->
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
