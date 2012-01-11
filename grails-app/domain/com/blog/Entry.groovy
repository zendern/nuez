package com.blog

class Entry {

	String title
	String entry
	Date dateCreated
	Date lastUpdated
	
	static hasMany = [comments: Comment]
	
	static mapping = {
		sort dateCreated : "desc"
	}
	static constraints = {
		title(blank: false, size:0..255)
		entry(blank: false, size:0..1000)
    }
	def beforeInsert() {
		dateCreated = new Date()
	}
	def beforeUpdate() {
		lastUpdated = new Date()
	}
}
