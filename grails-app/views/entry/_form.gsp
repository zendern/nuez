<%@ page import="com.blog.Entry" %>


<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="entry.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${entryInstance?.title}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'entry', 'error')} ">
	<label for="entry">
		<g:message code="entry.entry.label" default="Entry" />
		
	</label>
	<g:textArea name="entry" value="${entryInstance?.entry}"></g:textArea>
</div>

