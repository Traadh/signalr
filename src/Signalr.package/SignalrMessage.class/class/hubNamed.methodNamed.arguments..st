as yet unclassified
hubNamed: aHubName methodNamed: aMethodName arguments: arguments 
	^self basicNew initializeHubNamed: aHubName methodNamed: aMethodName arguments: arguments 

	" |message json| 
	 message := self hub: 'coreHub' method: 'someMethod' arguments: { 1 . 2}.
	 json := String streamContents: [ :stream |
		 (NeoJSONWriter on: stream) nextPut: message ].
	 json inspect.
	"
