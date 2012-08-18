
options=
	characters:
		exclude: []


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

		@excludeCharacters()

	excludeCharacters: ->
		for story in @stories
			for char in options.characters.exclude
				story.el.remove() if story.containsCharacter char


jQuery ->

	pageType = null
	if $('[name="characterid"]').length > 0
		pageType = "listPage";

	page = null
	switch pageType
		when "listPage" 
			page = new ListPage


	