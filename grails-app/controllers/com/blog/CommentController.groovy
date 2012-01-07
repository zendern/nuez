package com.blog

import grails.converters.JSON
import grails.plugins.springsecurity.Secured

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils;
import org.springframework.dao.DataIntegrityViolationException

class CommentController {

	def springSecurityService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list() {
		def comments = [];
		Entry entry = Entry.get(params.entryId)
		if(entry){
			comments = Comment.findAllByEntry(entry)
		}
		render comments as JSON
    }

	@Secured(['ROLE_BLOGGER', 'ROLE_COMMENTER'])
    def save() {
		def model = [:]
		
		Entry entry = Entry.get(params.entryId)
        def commentInstance = new Comment(params)
		commentInstance.entry = entry;
		commentInstance.name = springSecurityService.principal.username;
        if (!commentInstance.save(flush: true)) {
            model.success = false
			model.errors = commentInstance.errors
        }else{
			model.success = true;
			model.message = message(code: 'default.created.message', args: [message(code: 'comment.label', default: 'Comment'), commentInstance.id])
        }
        render model as JSON
    }

	@Secured(['ROLE_BLOGGER'])
    def delete() {
        def commentInstance = Comment.get(params.id)
        if (!commentInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'comment.label', default: 'Comment'), params.id])
            redirect(action: "list")
            return
        }

        try {
            commentInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'comment.label', default: 'Comment'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comment.label', default: 'Comment'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
