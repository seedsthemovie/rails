$(document).ready ->
	_V_("concept_video").ready ->

		player = this
		ratio = 1280/720.0

		width = $("#"+player.id()).parent().width()
		player.width(width).height( width / ratio )

