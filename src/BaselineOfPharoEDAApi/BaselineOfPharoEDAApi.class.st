Class {
	#name : #BaselineOfPharoEDAApi,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoEDAApi
}

{ #category : #baselines }
BaselineOfPharoEDAApi >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #meta }
BaselineOfPharoEDAApi >> declareGroupsIn: spec [
	spec
		group: 'core'
			with: #(#'EDAAPI-Events' #'EDAAPI-Commands' #'EDAAPI-Logging' #'EDAAPI-Projections');
		group: 'default' with: #('core')
]

{ #category : #meta }
BaselineOfPharoEDAApi >> declarePackagesIn: spec [
	spec
		package: #'EDAAPI-Events';
		package: #'EDAAPI-Commands';
		package: #'EDAAPI-Logging';
		package: #'EDAAPI-Projections'
			with: [ spec requires: #(#'EDAAPI-Events' #'EDAAPI-Logging') ]
]
