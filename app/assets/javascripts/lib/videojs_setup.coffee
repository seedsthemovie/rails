#$(document).ready ->
#
#	
#	_V_("concept_video").ready ->
#
#		player = this
#		ratio = 1280/720.0
#
#		width = $("#"+player.id()).parent().width()
#		player.width(width).height( width / ratio )
#

$(document).on 'click', '#video_opener', ->
	$('#video_modal').foundation('reveal', 'open')
	_V_("concept_video").play()


$(document).ready ->
	$(document).on 'opened.fndtn.reveal', '#video_modal', ->
		console.log("B")