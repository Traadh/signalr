initialization
waitForResponse: serverMessage
	|index semaphore|
	index := serverMessage index.
	mutex critical: [ semaphore := (register at: index) key ].
	semaphore wait.
	mutex critical: [ register removeKey: index ].
