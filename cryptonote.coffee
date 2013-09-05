casper = require('casper').create()

message = casper.cli.options.message

casper.start 'http://cryptonote.org/', ->
	@evaluate( (message)->
		$message = $ '#unencrypted-message'
		$message.val(message).trigger 'keyup'
		$('form').submit()
	,
		message: message
	)
casper.then ->
	url = @evaluate ->
		$('.message-link:eq(0)').text().trim()
	@echo url

casper.run()