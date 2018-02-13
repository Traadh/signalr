operations
negotiate
	|response|
	httpClient url: baseUrl , '/negotiate'.
	httpClient queryAt: 'clientProtocol' put: '1.5'. 
	response := httpClient get. 
	params := NeoJSONReader fromString: response.