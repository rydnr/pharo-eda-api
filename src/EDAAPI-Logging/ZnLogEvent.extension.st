Extension { #name : #ZnLogEvent }

{ #category : #'*EDAAPI-Logging' }
ZnLogEvent class >> logToStdout [
	self stopLoggingToTranscript.
	^ self announcer when: ZnLogEvent do: [ :event | EDACLoggingStub new logInfoMessage: event ]
]
