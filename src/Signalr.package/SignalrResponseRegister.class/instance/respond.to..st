initialization
respond: response to: index
	|serverMessage semaphore|
	mutex critical: [ 
		semaphore := (register at: index) key.
		serverMessage := (register at: index) value.
		].
	serverMessage response: response.
	semaphore signal.