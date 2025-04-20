"
**Class**

I'm a baseline to load PharoEDA API.

**Responsibilities**

Guide Metacello to load PharoEDA-API with its dependencies.

**Collaborators**

Metacello
"
Class {
	#name : #BaselineOfPharoEDAApi,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoEDAApi
}

{ #category : #meta }
BaselineOfPharoEDAApi class >> declareGroupsIn: spec [
	spec
		group: 'core'
			with:
			#(#'EDAAPI-Events' #'EDAAPI-Commands' #'EDAAPI-Aggregates' #'EDAAPI-Exceptions' #'EDAAPI-Builders' #'EDAAPI-Logging' #'EDAAPI-Projections');
		group: 'default' with: #('core')
]

{ #category : #meta }
BaselineOfPharoEDAApi class >> declarePackagesIn: spec [
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
BaselineOfPharoEDAApi class >> includePharoEDACommon: spec [
	spec
		baseline: 'PharoEDACommon'
		with: [ spec repository: 'github://rydnr/pharo-eda-common:main' ].
	^ spec
]

{ #category : #baselines }
BaselineOfPharoEDAApi >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec blessing: #baseline.
		spec postLoadDoIt: #postload:package:.
		self class
			includePharoEDACommon: spec;
			declarePackagesIn: spec;
			declareGroupsIn: spec ]
]

{ #category : #hooks }
BaselineOfPharoEDAApi >> postload: loader package: packageSpec [

	Locale localeID: 'es'.
	(IceRepository registry
		 detect: [ :each | each name = 'pharo-eda-api' ]
		 ifNone: nil) ifNotNil: [ :repo |
		| location |
		location := repo location.
		EDACIconProvider addDefaultLocation:
			location / 'resources' / 'icons'.
		EDACTranslationProvider addDefaultLocation:
			location / 'resources' / 'l10n'.
		NaturalLanguageTranslator current:
			EDACCompositeTranslationProvider wrapCurrent ]
]
