$(document).on 'click', '.modal_closer', ->
	e = $(this)
	e.parents('.reveal-modal').foundation('reveal', 'close')