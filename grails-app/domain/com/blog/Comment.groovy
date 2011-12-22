package com.blog

class Comment {

	String name
	String comment
	
	static belongsTo = Entry
	
    static constraints = {
    }
}
