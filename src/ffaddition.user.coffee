


class Story

	el: null
	meta: ""
	constructor: (@el) ->
		@meta = @el.find('.z-padtop2').html()

	containsCharacter: (character) ->
		@meta.indexOf(character) != -1

class ListPage 

	stories: []
	characters = []
	constructor: ->
		$stories = $('.z-list')
		@stories = (new Story($(story)) for story in $stories)



jQuery ->

	pageType = null
	if $('[name="characterid"]').length > 0
		pageType = "listPage";

	page = null
	switch pageType
		when "listPage" 
			page = new ListPage


	