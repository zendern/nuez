package com.blog

import java.util.Date;

class Comment {

	String name
	String comment
	Date dateCreated
	
	static belongsTo = Entry
	
    static constraints = {
		name(blank:false, size:0..255)
		comment(blank:false, size:0..255)
    }
	def beforeInsert() {
		dateCreated = new Date()
	}
}
