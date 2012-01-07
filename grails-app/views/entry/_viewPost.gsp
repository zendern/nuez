<div class="blogPost well">
	<h3>${blogEntry.title}</h3>
	<p>
		<g:formatDate date="${blogEntry.dateCreated}" format="yyyy-MM-dd HH:mm:ss"/>
	</p>
	<p>
		${blogEntry.entry}
	</p>
	<g:link controller="entry" action="show" id="${blogEntry.id}" class="pull-right">Permalink</g:link>
	<g:render template="/comment/commentEntry" bean="${blogEntry}" var="blogEntry"/>
</div>