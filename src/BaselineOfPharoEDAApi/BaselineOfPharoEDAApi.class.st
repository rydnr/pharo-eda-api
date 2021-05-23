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
			with:
			#(#'EDA-API');
		group: 'default' with: #('core')
]

{ #category : #meta }
BaselineOfPharoEDAApi >> declarePackagesIn: spec [
	spec
		package: #'EDA-API'
]
