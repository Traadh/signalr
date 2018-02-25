api-control-thread
startLoops
	rxProcess := [ [self stepRx] repeat ] newProcess.
	rxProcess name: 'SignalR receive loop'; priority: 35; resume.
	
	"txQueue blocks when queu empty"
	txProcess := [ [self stepTx: txQueue next] repeat ] newProcess.
	txProcess name: 'SignalR transmit loop'; priority: 34; resume.

