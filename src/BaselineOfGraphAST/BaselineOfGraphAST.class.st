Class {
	#name : #BaselineOfGraphAST,
	#superclass : #BaselineOf,
	#category : #'BaselineOfGraphAST-Baseline'
}

{ #category : #baselines }
BaselineOfGraphAST >> baseline: spec [

	<baseline>
	spec
		for: #common
		do: [ "Inter packages dependencies are now added but it is missing some dependencies on other projects such as Morphic for Athens-Morphic""Dependencies"
			self
				roassal3: spec;
				javaFastModel: spec.

			"Packages"
			spec package: 'Graph-AST' with: [ spec requires: #('Roassal3' 'FASTJava') ].

			"Groups"
			spec group: 'default' with: #( 'Graph-AST' ) ]
]

{ #category : #baselines }
BaselineOfGraphAST >> javaFastModel: spec [

	spec
		baseline: 'FASTJava'
		with: [ spec repository: 'github://moosetechnology/FAST-JAVA:v2.0.2' ]
]

{ #category : #baselines }
BaselineOfGraphAST >> roassal3: spec [
		spec
		baseline: 'Roassal3'
		with: [ spec repository: 'github://ObjectProfile/Roassal3:v0.9.5' ]
]
