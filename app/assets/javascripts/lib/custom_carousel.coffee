
carousel= ->
	$('.custom_carousel')

images_list= ->
	carousel().data('list')

carousel_index= ->
	carousel().data('index')

load_carousel= ->
	set_carousel_index(carousel_index())

set_carousel_index= (index)->
	carousel()[0].src = images_list()[index]
	carousel().data('index', index)

set_prev= ->
	index = (carousel_index() - 1) % ( images_list().length )
	index = (images_list().length-1) if index < 0
	set_carousel_index(index)

set_next= ->
	index = (carousel_index() + 1) % ( images_list().length )
	set_carousel_index(index)


$(document).ready ->

	load_carousel()

	$('.background-control').on 'click', ->
		e = $(this)
		set_next() if e.hasClass('next')
		set_prev() if e.hasClass('prev')
