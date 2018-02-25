tests
testResponseBeforeWait
	|register msg|
	register := SignalrResponseRegister new.
	msg := SignalrMessage new.
	register registerFor: msg.
	register respond: 42 to: msg index. 
	register waitForResponse: msg.
	self assert: msg response equals: 42.
	