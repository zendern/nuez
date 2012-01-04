package com.blog

class Entry {

	String title
	String entry
	
	static hasMany = [comments: Comment]

	static constraints = {
		entry(size:0..65535)
    }
}
