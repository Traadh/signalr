initialization
initialize
	mutex := Mutex new.
	register := Dictionary new.
	invokeCount := 0.