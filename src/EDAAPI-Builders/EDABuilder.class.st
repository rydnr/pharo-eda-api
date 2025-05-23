Class {
	#name : #EDABuilder,
	#superclass : #Object,
	#traits : 'EDACSourceCodeHelper + EDACLogging',
	#classTraits : 'EDACSourceCodeHelper classTrait + EDACLogging classTrait',
	#instVars : [
		'params',
		'accessorMapping'
	],
	#category : #'EDAAPI-Builders'
}

{ #category : #'instance creation' }
EDABuilder class >> with: anInstance [
	^ self new
		params: anInstance asDictionary;
		yourself
]

{ #category : #'instance creation' }
EDABuilder class >> with: anInstance and: anotherInstance [
	| dict |
	dict := anInstance asDictionary.
	dict addAll: (anotherInstance asDictionary).
	^ self new
		params: dict;
		yourself
]

{ #category : #accessing }
EDABuilder >> accessorMapping [
	^ accessorMapping
]

{ #category : #accessing }
EDABuilder >> accessorMapping: anObject [
	accessorMapping := anObject
]

{ #category : #adding }
EDABuilder >> addAccessor: methodName [
	| attr |
	attr := self
		toCamelCase: (self removePrefix: 'with' from: methodName).
		attr := attr uncapitalized.
	self withAccessor: (attr , ':') asSymbol for: attr asSymbol
]

{ #category : #builder }
EDABuilder >> build: aClass [
	| result |
	result := aClass new.
	self accessorMapping
		keysAndValuesDo: [ :method :symbol | 
			| v |
			v := self params
				at: symbol
				ifAbsent: [ "EDAInvalidEventMessage signal: symbol greaseString , ' not found'"
					self
						logWarningMessage: 'Non-existent requested data: ' , symbol greaseString.
					nil ].
			result perform: method with: v ].
	^ result
]

{ #category : #'reflective operations' }
EDABuilder >> doesNotUnderstand: aMessage [
	| methodName |
	methodName := aMessage selector greaseString.
	(self string: methodName startsWith: 'with')
		ifTrue: [ self addAccessor: methodName ]
		ifFalse: [ super doesNotUnderstand: aMessage ]
]

{ #category : #testing }
EDABuilder >> messageSupported [
	self subclassResponsibility
]

{ #category : #accessing }
EDABuilder >> params [
	^ params
]

{ #category : #accessing }
EDABuilder >> params: anObject [
	params := anObject
]

{ #category : #private }
EDABuilder >> withAccessor: aSymbol for: paramName [
	self accessorMapping at: aSymbol put: paramName
]

{ #category : #building }
EDABuilder >> withId [
	self withAccessor: #id: for: #id
]

{ #category : #building }
EDABuilder >> withKey [
	self withAccessor: #key: for: #key
]
