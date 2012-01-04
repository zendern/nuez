package com.blog

class HomeController {

    def index() {
		[mostRecentEntries : Entry.list([max:2])]
	}
}
