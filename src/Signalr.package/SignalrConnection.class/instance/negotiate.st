api-control-thread
negotiate
	|response|
	httpClient url: baseUrl , '/negotiate'.
	httpClient queryAt: 'clientProtocol' put: '1.5'. 
	response := httpClient get. 
	negotiations := NeoJSONReader fromString: response.