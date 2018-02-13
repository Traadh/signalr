initialization
initializeClient: aZnClient url: aUrlString 
	httpClient := aZnClient. "This is needed to work out-of-band of websocket connection"
	baseUrl := aUrlString.