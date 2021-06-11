Class {
	#name : #EDAEventProjected,
	#superclass : #EDAProjectionLogEvent,
	#instVars : [
		'index',
		'projectionSourceEventsSize',
		'event'
	],
	#category : #'EDAAPI-Projections-Events'
}

{ #category : #protected }
EDAEventProjected class >> successOutcome [
	^ true
]

{ #category : #accessing }
EDAEventProjected >> event [
	^ event
]

{ #category : #accessing }
EDAEventProjected >> event: anObject [
	event := anObject
]

{ #category : #accessing }
EDAEventProjected >> index [
	^ index
]

{ #category : #accessing }
EDAEventProjected >> index: anObject [
	index := anObject
]

{ #category : #accessing }
EDAEventProjected >> projectionSourceEventsSize [
	^ projectionSourceEventsSize
]

{ #category : #accessing }
EDAEventProjected >> projectionSourceEventsSize: anObject [
	projectionSourceEventsSize := anObject
]
