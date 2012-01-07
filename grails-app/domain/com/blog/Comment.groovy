package com.blog

import java.util.Date;

class Comment {

	String name
	String comment
	Date dateCreated
	Entry entry
	
	static belongsTo = Entry
	
	static mapping = {
		sort dateCreated : "desc"
	}
	
    static constraints = {
		name(blank:false, size:0..255)
		comment(blank:false, size:0..255)
    }
	def beforeInsert() {
		dateCreated = new Date()
	}
}
