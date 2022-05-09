Extension { #name : #FASTJavaInfixOperation }

{ #category : #'*Graph-AST' }
FASTJavaInfixOperation >> name [

	^ self className , ': ', operator
]
