<%@ page import="com.blog.Comment" %>


<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="comment.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${commentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${commentInstance?.comment}"/>
</div>


