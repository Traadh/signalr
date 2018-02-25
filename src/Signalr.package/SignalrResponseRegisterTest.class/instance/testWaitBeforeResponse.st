tests
testWaitBeforeResponse
	|register msg responseReceived|
	register := SignalrResponseRegister new.
	msg := SignalrMessage new.
	register registerFor: msg.
	responseReceived := false.
	[	register waitForResponse: msg.
		responseReceived := true.
		] forkAt: 45 named: '#testWaitBeforeResponse'.
	register respond: 42 to: msg index. "The higher priority process runs next."
	self assert: responseReceived.
	self assert: msg response equals: 42.
	