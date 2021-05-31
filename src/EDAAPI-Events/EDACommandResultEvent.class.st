Class {
	#name : #EDACommandResultEvent,
	#superclass : #EDAEventSourcingEvent,
	#instVars : [
		'commandId'
	],
	#category : #'EDAAPI-Events'
}

{ #category : #accessing }
EDACommandResultEvent >> commandId [
	^ commandId
]

{ #category : #accessing }
EDACommandResultEvent >> commandId: anObject [
	commandId := anObject
]
