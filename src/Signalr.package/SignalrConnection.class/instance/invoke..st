api-user-threads
invoke: serverMessage
	"This method is called by multiple client threads.  
	It feeds server invocations into a threadsafe queue 
	that is consumed by the single process 'txLoop'."
	responses registerFor: serverMessage.
	txQueue nextPut: serverMessage.
	responses waitForResponse: serverMessage.
	^ serverMessage response.