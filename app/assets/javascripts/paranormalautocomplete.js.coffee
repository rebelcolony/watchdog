jQuery ->
	jQuery.fn.paranormalautocomplete = () ->
		results = $('ul#suggestions')
		input = this
		current = []

		$('body').append('<div id="suggestions-overlay"></div>')

		$('#suggestions li').live 'mouseenter', (evt) ->
			$('li.active').removeClass('active')
			current = $(this).addClass('active')

		$('#suggestions-overlay').click () ->
			results.hide()
			$(this).hide()

		this.parent('form').submit (evt) ->
			console.log ('Submit: ') + current
			unless current.length == 0
				evt.preventDefault()
				openCurrent()

		this.bind 'keydown', (e) ->
		 	if e.keyCode == 38
		 		prevResult()
		 		e.preventDefault()
		 	else if e.keyCode == 40
		 		e.preventDefault()
		 		nextResult()
		 	else if e.keyCode == 27
		 		e.preventDefault()
		 		$('#suggestions-overlay').click()

		this.bind 'keyup', (e) ->
			unless e.keyCode == 27 or e.keyCode == 38 or e.keyCode == 40
				q = input.val().toLowerCase()
				filterResults(q)

		showOverlay = () ->
			$('#suggestions-overlay').show();

		filterResults = (filter) ->
			if filter == ''
				results.children('li').hide()
			else
				results.show() if results.css('display') == 'none'
				results.children('li').hide()
				elements = results.children('li[data-person*="' + filter + '"]')
				elements.show()
				if current.length == 0 or !current.is(':visible')
					current.removeClass('active') if current.length > 0
					current = results.children('li:visible').first().addClass('active')

		prevResult = () ->
			prev = current.prevAll(':visible').first()
			if current.length == 0 or prev.length == 0
				current.removeClass('active') if current.length > 0
				current = results.children('li:visible').last().addClass('active')
			else
				current.removeClass('active')
				current = prev.addClass('active')

		nextResult = () ->
			next = current.nextAll(':visible').first()
			if current.length == 0 or next.length == 0
				current.removeClass('active') if current.length > 0
				current = results.children('li:visible').first().addClass('active')
			else
				current.removeClass('active')
				current = next.addClass('active')

		openCurrent = () ->
			unless current.length == 0
				window.location = current.children('a').attr('href')

		this.bind 'focusin', () ->
			showOverlay()
			results.show()

		
