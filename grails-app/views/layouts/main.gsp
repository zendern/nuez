<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Nuez"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link href='http://fonts.googleapis.com/css?family=Frijole' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}">
		<style type="text/css">
	    body {
	      padding-top: 80px;
	    }
		ul {
			list-style: none;
		}
	    </style>	
	    <g:javascript src="jquery-1.7.1.js" />
		<g:layoutHead/>
        <r:layoutResources />
	</head>
	<body>
		<div class="topbar">
			<div class="topbar-inner">
				<div class="container-fluid">
					<g:link class="brand" controller="home">
						<div style="font-family: Frijole;font-size: 38px;color:#FFEF00;">Nuez</div>
						<div style="font-size:9px;">The blog about anything....really...Anything!</div>	
					</g:link>
					<ul class="nav" style="padding-top:27px;padding-left:20px;">
						<li id="homeTab">
							<g:link controller="home">
								Home
							</g:link>
						</li>
						<li id="postsTab">
							<g:link controller="entry" action="list">							
								All Posts
							</g:link>
						</li>
						<li id="aboutTab">
							<g:link controller="about" action="index">About</g:link>
						</li>
					</ul>
					<ul style="padding-top:27px;float:right;">
						<sec:ifLoggedIn>
							<li style="color:#99BF38;padding-top:10px;">
								Your signed in as <sec:loggedInUserInfo field="username"/>
							<li>
							<li>
								<g:link action="index" controller="logout">Logout</g:link>
							</li>
						</sec:ifLoggedIn>
						<sec:ifNotLoggedIn>						
						<li>
							<g:link action="auth" controller="login">Login</g:link>
						</li>
						</sec:ifNotLoggedIn>						
					</ul>
				</div>
			</div>
		</div>
		<g:layoutBody/>
		
		<footer class="footer">
			<p>&copy; Company 2012</p>
		</footer>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
        <r:layoutResources />
	</body>
</html>