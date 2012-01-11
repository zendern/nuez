<!doctype html>
<html>
	<head>
		<meta name="layout" content="main" />
		<title>Nuez | Home</title>
	</head>
	<body>
		<div class="container-fluid">
			<div class="sidebar">
				<div class="well">
					<h5>Ads</h5>
					<ul class="ads">
						<li><a href="#">Buy Stuff Here</a></li>
						<li><a href="#">And more stuff here</a></li>
						<li><a href="#">If you like stuff, you'll like this stuff...</a></li>
						<li><a href="#">More stuff here.</a></li>
						<li><a href="#">But I spent all my money on stuff.</a></li>
					</ul>
				</div>
			</div>
			<div class="content">
				<!-- Main hero unit for a primary marketing message or call to action -->
				<div class="hero-unit">
					<h1>Hello!</h1>
					<p>Welcome to the Nuez blog. Please feel free to login and blog about any topic that you want to talk about. Enjoy!</p>
					<p>
						<g:link class="btn primary large" controller="about">Learn more &raquo;</g:link>
					</p>
				</div>
	
				<g:each var="${blog}" in="${mostRecentEntries}">				
					<div class="row">
						<div class="span16">
							<h2>${blog.title}</h2>
							<p>
								<g:if test="${blog.entry?.size() > 450}">
									${blog.entry?.substring(0, 450)}
								</g:if>
								<g:else>
									${blog.entry}
								</g:else>
							</p>
							<p>
								<g:link controller="entry" action="show" id="${blog.id}">View more &raquo;</g:link>
							</p>
						</div>
					</div>
					<hr>
				</g:each>
			</div>
		</div>
		<r:script>
        	$("#homeTab").addClass("active")
      	</r:script>
	</body>
</html>