api-control-thread
connect
	httpClient url: baseUrl , '/connect'.
	httpClient queryAt: 'connectionToken' put: self connectionToken.
	httpClient queryAt: 'transport' put: 'webSockets'.
	websocket := ZnWebSocket onHttpClient: httpClient.
	
	"Once we have a working websocket, start a thread to manage it"
	