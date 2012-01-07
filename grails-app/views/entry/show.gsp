<%@ page import="com.blog.Entry"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<title>Nuez | ${entryInstance.title}</title>
</head>
<body>
	<div class="content">
		<sec:ifAllGranted roles="ROLE_BLOGGER">
			<div class="buttonWrapper">
				<g:link class="btn primary pull-left" controller="entry" action="create">Add a new post</g:link>
				<g:form controller="entry" action="delete" id="${entryInstance.id}" class="pull-left">						
					<g:submitButton class="btn primary pull-left" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" value="Delete this post" name="delete"></g:submitButton>
				</g:form>
				<g:link class="btn primary" controller="entry" action="edit" id="${entryInstance.id}">Update this post</g:link>
			</div>
			<hr style="width:98%;margin:0 auto;padding-top:15px;"/>
		</sec:ifAllGranted>
		<g:render template="viewPost" bean="${entryInstance}" var="blogEntry" />
	</div>
</body>
</html>
