Trait {
	#name : #EDATPragmaBasedMessageBuilder,
	#traits : 'EDACPragmaHelper',
	#classTraits : 'EDACPragmaHelper classTrait',
	#category : #'EDAAPI-Builders'
}

{ #category : #meta }
EDATPragmaBasedMessageBuilder classSide >> pragmaSymbol [
	self subclassResponsibility 
]

{ #category : #meta }
EDATPragmaBasedMessageBuilder >> pragmaSymbol [
	^ self class pragmaSymbol
]
