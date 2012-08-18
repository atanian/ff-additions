

class ListPage 

	stories: []
	characters = []
	constructor: ->
		@stories = $('.z-list')
		console.log @stories



jQuery ->

	pageType = null
	if $('[name="characterid"]').length > 0
		pageType = "listPage";

	page = null
	switch pageType
		when "listPage" 
			page = new ListPage


	