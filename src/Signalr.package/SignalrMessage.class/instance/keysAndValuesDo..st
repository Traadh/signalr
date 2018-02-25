enumerating
keysAndValuesDo: aBlockClosure 
	"Required by NewJSONWriter"
	aBlockClosure value: 'A' value: arguments.
	aBlockClosure value: 'H' value: hubName.
	aBlockClosure value: 'M' value: methodName.
	aBlockClosure value: 'I' value: index.


	