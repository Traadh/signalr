api-control-thread
stopLoops
	txProcess terminate.
	txProcess := nil.
	rxProcess terminate. 
	rxProcess := nil.	
	