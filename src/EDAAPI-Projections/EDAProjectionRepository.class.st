Class {
	#name : #EDAProjectionRepository,
	#superclass : #Object,
	#category : #'EDAAPI-Projections'
}

{ #category : #persistence }
EDAProjectionRepository >> findAllOfTenant: aTenant [
	self subclassResponsibility
]

{ #category : #persistence }
EDAProjectionRepository >> removeProjection: aProjectionClass [
	self subclassResponsibility
]

{ #category : #persistence }
EDAProjectionRepository >> save: aProjection [
	self subclassResponsibility
]