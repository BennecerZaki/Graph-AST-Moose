Extension { #name : #FASTJavaModifier }

{ #category : #'*Graph-AST' }
FASTJavaModifier >> name [

	^ self className , ': ', token
]
