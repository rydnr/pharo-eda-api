Class {
	#name : #EDADeleteAggregateCommand,
	#superclass : #EDACommand,
	#category : #'EDAAPI-Commands'
}

{ #category : #accessing }
EDADeleteAggregateCommand class >> aggregateRootClass [
	^ self subclassResponsibility
]

{ #category : #override }
EDADeleteAggregateCommand class >> invalidCommandMessageException [
	^ EDAInvalidDeleteAggregateCommandMessage
]

{ #category : #accessing }
EDADeleteAggregateCommand class >> latestVersion [
	^ 2
]

{ #category : #helpers }
EDADeleteAggregateCommand >> isCreate [
	^ false
]

{ #category : #testing }
EDADeleteAggregateCommand >> isDelete [
	^ true
]
