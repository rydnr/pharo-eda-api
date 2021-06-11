Class {
	#name : #EDAAcceptEverything,
	#superclass : #Object,
	#category : #'EDAAPI-TestSupport'
}

{ #category : #'reflective operations' }
EDAAcceptEverything >> asString [
	^ 'noop'
]

{ #category : #'reflective operations' }
EDAAcceptEverything >> doesNotUnderstand: aMessage [
	
]

{ #category : #'reflective operations' }
EDAAcceptEverything >> respondsTo: aSelector [
]
