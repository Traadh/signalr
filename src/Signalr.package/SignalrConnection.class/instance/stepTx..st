private
stepTx: serverMessage
	"This method is only ever called by a single thread."
	|json|
	json := String streamContents: [ :stream |
		(NeoJSONWriter on: stream) nextPut: serverMessage ].
	websocket sendText: json.
	Transcript crShow: 'tx '; tab; show: json.
