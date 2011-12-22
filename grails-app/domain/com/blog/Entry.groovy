package com.blog

class Entry {

	String title
	String entry

	static constraints = {
		entry(widget:"textArea")
    }
}
