initialization
initializeBaseUrl: urlString httpClient: aZnClient 
	baseUrl := urlString.
	httpClient := aZnClient. "Store this for hub start requests out-of-band of the websocket connection"
	logging := true. "in this early development phase"
	txQueue := AtomicSharedQueue new. 
	hubs := Dictionary new.
	responses := SignalrResponseRegister new.
