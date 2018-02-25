initialization
registerFor: serverMessage
	|semaphore|
	serverMessage index: invokeCount.
	semaphore := Semaphore new.
	mutex critical: [ 
		register at: invokeCount put: (semaphore -> serverMessage).
		invokeCount := invokeCount + 1. 
		].