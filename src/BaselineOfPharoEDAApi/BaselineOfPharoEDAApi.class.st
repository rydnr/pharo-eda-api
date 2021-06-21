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
			self includePharoEDACommon: spec.
			self includeNeoJSON: spec.
			self declarePackagesIn: spec.
			self declareGroupsIn: spec ]
]

{ #category : #meta }
BaselineOfPharoEDAApi >> declareGroupsIn: spec [
	spec
		group: 'core'
			with:
			#(#'EDAAPI-Events' #'EDAAPI-Commands' #'EDAAPI-Aggregates' #'EDAAPI-Exceptions' #'EDAAPI-Builders' #'EDAAPI-Logging' #'EDAAPI-Projections');
		group: 'default' with: #('core')
]

{ #category : #meta }
BaselineOfPharoEDAApi >> declarePackagesIn: spec [
	spec
		package: #'EDAAPI-Events'
			with: [ spec requires: #('PharoEDACommon') ];
		package: #'EDAAPI-Exceptions';
		package: #'EDAAPI-Commands'
			with: [ spec requires: #('EDAAPI-Exceptions') ];
		package: #'EDAAPI-Aggregates';
		package: #'EDAAPI-Builders'
			with: [ spec requires: #('PharoEDACommon') ];
		package: #'EDAAPI-Logging';
		package: #'EDAAPI-Projections'
			with: [ spec requires: #(#'EDAAPI-Events' #'EDAAPI-Logging') ]
]

{ #category : #dependencies }
BaselineOfPharoEDAApi >> includeNeoJSON: spec [
	spec
		baseline: 'NeoJSON'
		with: [ spec repository: 'github://svenvc/NeoJSON/repository' ].
	^ spec
]

{ #category : #dependencies }
BaselineOfPharoEDAApi >> includePharoEDACommon: spec [
	spec
		baseline: 'PharoEDACommon'
		with: [ spec repository: 'github://osoco/pharo-eda-common:main' ].
	^ spec
]
