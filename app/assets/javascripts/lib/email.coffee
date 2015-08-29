$(document).ready ->
	for e in $('.email')
		e = $(e)
		name = e.data('name')
		e.html "#{name}@everytimehq.com"