<%@ page import="com.blog.Comment" %>
<g:form action="save" controller="comment" name="commentSaveForm">
	<g:hiddenField name="entryId" value="${blogEntry.id}"/>
	<div style="padding:10px;" class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} ">
		<label for="comment" style="margin-right:10px;"><g:message code="comment.comment.label" default="Comment" /></label>
		<div class="input">
			<g:textArea class="xxlarge" rows="12" name="comment" value="${commentInstance?.comment}"/>
		</div>
	</div>
	<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" class="btn primary large" style="margin-left:160px;"/>
</g:form>