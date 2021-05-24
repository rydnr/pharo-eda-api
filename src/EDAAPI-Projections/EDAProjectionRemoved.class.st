Class {
	#name : #EDAProjectionRemoved,
	#superclass : #EDAProjectionLogEvent,
	#category : #'EDAAPI-Projections'
}

{ #category : #protected }
EDAProjectionRemoved class >> successOutcome [
	^ true
]

{ #category : #printing }
EDAProjectionRemoved >> printOn: stream [
	stream
		<< 'Projection ';
		print: self projection name;
		<< ' removed'
]
