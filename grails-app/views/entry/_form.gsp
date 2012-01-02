<%@ page import="com.blog.Entry" %>
<div class="clearfix ${hasErrors(bean: entryInstance, field: 'title', 'error')}">
  <label for="title"><g:message code="entry.title.label" default="Title" /></label>
  <div class="input">
    <input class="xlarge" name="title" value="${entryInstance?.title}" size="254" type="text">
  </div>
</div>
<div class="clearfix ${hasErrors(bean: entryInstance, field: 'entry', 'error')}">
  <label for="entry"><g:message code="entry.entry.label" default="Entry" /></label>
  <div class="input">
    <g:textArea class="xxlarge" rows="12" name="entry" value="${entryInstance?.entry}"/>
  </div>
</div>