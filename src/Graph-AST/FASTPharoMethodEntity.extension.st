Extension { #name : #FASTPharoMethodEntity }

{ #category : #'*Graph-AST' }
FASTPharoMethodEntity >> createCanvas: data [

	| canvas shapes |
	canvas := RSCanvas new.
	shapes := data collect: [ :entity | 
		          | box label |
		          box := RSBox new
			                 border: (RSBorder new color: Color black);
			                 noPaint.
		          label := RSLabel new
			                   text: entity name;
			                   color: 'black';
			                   yourself.
		          box extent: label extent + 10.
		          { 
			          box.
			          label } asShape
			          model: entity;
			          draggable;
			          popup;
			          yourself ].
	canvas addAll: shapes.
	RSLineBuilder orthoVertical
		withVerticalAttachPoint;
		canvas: canvas;
		shapes: canvas nodes;
		connectToAll: #children.

	RSTreeLayout on: canvas nodes.
	canvas addInteraction: RSCanvasController.

	^ canvas
]

{ #category : #'*Graph-AST' }
FASTPharoMethodEntity >> miCanvasGraph [

	<inspectorPresentationOrder: 1 title: 'Graph'>
	^ SpRoassal3InspectorPresenter new
		  canvas: (self createCanvas: (self allChildren));
		  yourself
]
