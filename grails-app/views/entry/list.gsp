<%@ page import="com.blog.Entry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Nuez | All Posts</title>
	</head>
	<body>
		<div class="content">
			<g:each var="blogEntry" in="${entryInstanceList}">
				<sec:ifAllGranted roles="ROLE_BLOGGER">
					<div class="buttonWrapper">
						<g:link class="btn primary pull-left" controller="entry" action="create">Add a new post</g:link>
						<g:form controller="entry" action="delete" id="${blogEntry.id}" class="pull-left">						
							<g:submitButton class="btn primary pull-left" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Delete this post" name="delete"></g:submitButton>
						</g:form>
						<g:link class="btn primary" controller="entry" action="edit" id="${blogEntry.id}">Update this post</g:link>
					</div>
					<hr style="width:98%;margin:0 auto;padding-top:15px;"/>
				</sec:ifAllGranted>
				<div class="blogPost">
					<h3>${blogEntry.title}</h3>
					<p>
						${blogEntry.entry}
					</p>
				</div>
			</g:each>
			<g:if test="${entryInstanceList?.size() == 0}">
				<div style="width: 525px;text-align: center;" class="center">
					<h2>Sorry there has been nothing written yet. Must be a slow day :(</h2>
					<sec:ifAllGranted roles="ROLE_BLOGGER">
						<g:link class="btn primary" controller="entry" action="create">Add a new post</g:link>
					</sec:ifAllGranted>
				</div>
			</g:if>
			<div class="pagination">
				<g:paginate total="${entryInstanceTotal}" />
			</div>
		</div>
		<r:script>
        	$("#postsTab").addClass("active")
      	</r:script>
	</body>
</html>
