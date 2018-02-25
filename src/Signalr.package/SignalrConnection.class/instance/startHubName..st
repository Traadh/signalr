api-control-thread
startHubName: hubName
	|response|
	httpClient url: 'http://bittrex.com/signalr/start'.
	httpClient queryAt: 'connectionToken' put: self connectionToken.
	httpClient queryAt: 'connectionData' put: '[{"name": "' , hubName , '"}]'.
	httpClient queryAt: 'transport' put: 'webSockets'.
	response := httpClient get.
	(response includesSubstring: 'started') ifFalse: [ self error: 'Could not start hub' ].
