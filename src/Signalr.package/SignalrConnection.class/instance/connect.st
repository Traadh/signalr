operations
connect
	httpClient url: baseUrl , '/connect'.
	httpClient queryAt: 'connectionToken' put: self connectionToken.
	httpClient queryAt: 'transport' put: 'webSockets'.
	websocket := ZnWebSocket onHttpClient: httpClient.