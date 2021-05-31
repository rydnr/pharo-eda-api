Class {
	#name : #EDAVersionedEvent,
	#superclass : #EDAEventSourcingEvent,
	#category : #'EDAAPI-Events'
}

{ #category : #'instance creation' }
EDAVersionedEvent class >> forEvent: anEvent andVersion: aVersion [
	self flag: #TODO.	"Sorry!"
	anEvent aggregateRootVersion: aVersion.
	^ anEvent
]
