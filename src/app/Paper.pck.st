'From Cuis 6.0 [latest update: #5733] on 12 April 2023 at 5:38:08 pm'!
'Description '!
!provides: 'Paper' 1 41!
SystemOrganization addCategory: 'Paper'!


!classDefinition: #PaperMorph category: 'Paper'!
BoxedMorph subclass: #PaperMorph
	instanceVariableNames: 'stroker pen samples sampleIndex lineStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'PaperMorph class' category: 'Paper'!
PaperMorph class
	instanceVariableNames: ''!

!classDefinition: #Bezier2Morph category: 'Paper'!
Morph subclass: #Bezier2Morph
	instanceVariableNames: 'color width p1 p2 c1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'Bezier2Morph class' category: 'Paper'!
Bezier2Morph class
	instanceVariableNames: ''!

!classDefinition: #Bezier3Morph category: 'Paper'!
Bezier2Morph subclass: #Bezier3Morph
	instanceVariableNames: 'c2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'Bezier3Morph class' category: 'Paper'!
Bezier3Morph class
	instanceVariableNames: ''!

!classDefinition: #LineStrokeMorph category: 'Paper'!
Morph subclass: #LineStrokeMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'LineStrokeMorph class' category: 'Paper'!
LineStrokeMorph class
	instanceVariableNames: ''!

!classDefinition: #StrokeGroupMorph category: 'Paper'!
Morph subclass: #StrokeGroupMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'StrokeGroupMorph class' category: 'Paper'!
StrokeGroupMorph class
	instanceVariableNames: ''!

!classDefinition: #Pencil category: 'Paper'!
Object subclass: #Pencil
	instanceVariableNames: 'color width adjustWidth threshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'Pencil class' category: 'Paper'!
Pencil class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2 category: 'Paper'!
Object subclass: #StrokerBezier2
	instanceVariableNames: 'paper strokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'StrokerBezier2 class' category: 'Paper'!
StrokerBezier2 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3 category: 'Paper'!
StrokerBezier2 subclass: #StrokerBezier3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Paper'!
!classDefinition: 'StrokerBezier3 class' category: 'Paper'!
StrokerBezier3 class
	instanceVariableNames: ''!


!PaperMorph commentStamp: '<historical>' prior: 0!
- stroker:  an object to compute a stroke
- samples: an array of fixed size, collected mouse positions
- samplesQty: quantity of required samples to compute a stroke
- sampleIndex: the index of the next sample to collect

(PaperMorph new stroker: StrokerBezier2 ) openInWorld. "Quadratic Bézier"
(PaperMorph new stroker: StrokerBezier3 ) openInWorld. "Cubic Bézier"
!

!Bezier2Morph commentStamp: '<historical>' prior: 0!
A quadratic Bézier stroke!

!Bezier3Morph commentStamp: '<historical>' prior: 0!
A cubic Bézier stroke!

!LineStrokeMorph commentStamp: 'hlsf 4/8/2023 11:53:15' prior: 0!
In a PaperMorph I draw the mouse strokes as connected straight lines. I request to the Paper morph, my owner, the existing samples of recorded mouse positions. I can only be owned by a Paper Morph.

This is out sourced of the PaperMorph for speed rendering -> Need to check out if it is really the case!

!StrokeGroupMorph commentStamp: 'hlsf 4/8/2023 12:32:42' prior: 0!
I group the strokes (kind of BezierMorph) of a hand written stroke. A hand stroke happens between the pen down and pen up events.
To avoid graphics artifacts at the junctions of the strokes, I draw directly the submorphs.
In some circumstance, I reveal my submorphs and then I do not draw them directly.!

!Pencil commentStamp: '<historical>' prior: 0!
Depending on the use of the pen, we have different threshold
- color : color of the pen, including transparent color
- width: standard fixed width
- adjustWidth: does the width depends on the speed/pressure of the pen
- threshold : the minimum squared distance between two stroke with paper morph at scale 1!

!StrokerBezier2 commentStamp: '<historical>' prior: 0!
Given samples of mouse positions and previous strokes, I compute a new Bézier quadratic stroke . 
I can be subclassed to adjust my behavior.!

!StrokerBezier3 commentStamp: '<historical>' prior: 0!
Compute a cubic Bézier curve.!

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 12:08:53'!
lastStroke
" Return the last strokes, if any, added to the last stroke group "
	^ self lastStrokeGroup hasSubmorphs
		ifTrue: [ self lastStrokeGroup firstSubmorph ]
		ifFalse: [nil]

! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 11:40:01'!
lastStrokeGroup
" Return the last stroke group morph, including the one during a hand stroke event (penDown, penUp) "
	^ self firstSubmorph ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/3/2023 19:15:02'!
pen
	^ pen! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/3/2023 19:19:43'!
sampleIndex
	^ sampleIndex ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:54:30'!
samples
	^ samples! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 12:39:15'!
samplesQty
"Number of samples before instantiating a new hand stroke"
	^ samples size! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:28:07'!
stroker: aStrokerClass
	stroker := aStrokerClass on: self.
	samples := Array new: stroker samplesQty.
	sampleIndex := 1.! !

!PaperMorph methodsFor: 'event handling testing' stamp: 'hlsf 3/23/2023 12:10:09'!
handlesMouseDown: event
	^ true! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 4/8/2023 11:45:51'!
mouseButton1Down: event localPosition: localPosition
" We start sampling user hand strokes from this position"
	self resetSamplingTo: localPosition.
	self addMorph: StrokeGroupMorph new.
	
! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 4/8/2023 15:45:43'!
mouseButton1Up: event localPosition: localPosition
	samples at: sampleIndex put: localPosition.
	sampleIndex := sampleIndex + 1.
	"In case there is not enought sample, clone the last one"
	sampleIndex to: self samplesQty do: [	:i |				samples at: i put: localPosition].
	self lastStrokeGroup 
		addMorph: stroker newStroke;
		show;
		redrawNeeded.
	self resetSamplingTo: nil.
	lineStrokes redrawNeeded 
! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 4/8/2023 15:12:47'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [^ self ].
	((samples at: sampleIndex -1) squaredDistanceTo: localPosition) > pen threshold 		ifTrue: [	
		samples at: sampleIndex put: localPosition.
		sampleIndex := sampleIndex + 1.
		sampleIndex > self samplesQty			ifTrue: [
			self lastStrokeGroup 
				addMorph: stroker newStroke.
			self resetSamplingTo: localPosition].
		lineStrokes redrawNeeded.
	].
	! !

!PaperMorph methodsFor: 'geometry testing' stamp: 'hlsf 3/23/2023 21:23:17'!
requiresVectorCanvas
	^ true! !

!PaperMorph methodsFor: 'initialization' stamp: 'hlsf 4/11/2023 09:16:34'!
initialize
	super initialize.
	extent := 400@400.
	pen := Pencil new ::
		color: Color black;
		width: 3;
		adjustWidth: false;
		threshold: 4 squared.
	self 
		addMorph: (lineStrokes := LineStrokeMorph new);
		color: Color white.! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:48:57'!
showControls
	^ self valueOfProperty: #showControls ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:48:31'!
showPoints
	^ self valueOfProperty: #showPoints ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:47:26'!
showTangents
	^ self valueOfProperty: #showTangents ifAbsent: [false]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:14:48'!
addStandardHaloMenuItemsTo: aCustomMenu hand: aHandMorph
	aCustomMenu 
		add: 'sampling threshold' action: #setThreshold;
		add: 'width' action: #setWidth;
		addUpdating: #adjustWidthString target: pen action: #adjustWidthOnOff;
		add: 'color' action: #setColor;		
		addUpdating: #pointsString action: #pointsOnOff;
		addUpdating: #controlsString action: #controlsOnOff;
		addUpdating: #tangentsString action: #tangentsOnOff;
		add: 'clear' action: #removeAllMorphs! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 3/27/2023 21:52:11'!
controlsOnOff
	self 
		setProperty: #showControls
		toValue: self showControls not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:12:39'!
controlsString
	^ self showControls asMenuItemTextPrefix , 
		'show controls'! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 3/27/2023 21:52:05'!
pointsOnOff
	self 
		setProperty: #showPoints
		toValue: self showPoints not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:12:54'!
pointsString
	^ self showPoints asMenuItemTextPrefix , 
		'show points'! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/7/2023 14:02:13'!
setColor
	self 
		request: 'Color (i.e. ''Color red'')'
		initialAnswer: pen color asString
		verifying: [:aString | 		[Compiler evaluate: aString. true] on: Error do: [false] ]
		do: [:aString | | aColor |
			aColor := Compiler evaluate: aString.
			(aColor isKindOf: Color) ifTrue: [pen color: aColor ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/7/2023 14:17:21'!
setThreshold
	self 
		request: 'Minimum screen distance between two consecutive samples'
		initialAnswer: pen threshold sqrt asString
		verifying: [:aString | aString asInteger notNil ]
		do: [:aString | | integer |
			integer := aString asInteger.
			(integer notNil and: [integer >=0]) ifTrue: [
				pen threshold: integer squared] 
			]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/7/2023 14:02:49'!
setWidth
	self 
		request: 'Pen width in pixel, float in ]0 ; 20]'
		initialAnswer: pen width asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | theWidth |
			theWidth := aString asNumber.
			(theWidth notNil and: [theWidth >0 and: [theWidth <= 20] ]) 	ifTrue: [
				pen width: theWidth ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 3/27/2023 21:52:18'!
tangentsOnOff
	self 
		setProperty: #showTangents
		toValue: self showTangents not.
	self redrawNeeded ! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 4/11/2023 09:13:03'!
tangentsString
	^ self showTangents asMenuItemTextPrefix , 
		'show tangents'! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 4/8/2023 11:45:22'!
resetSamplingTo: aPoint
" We start sampling mouse position, an initial mouse position may be given "
	sampleIndex := 1.
	aPoint ifNotNil: [
		samples at: 1 put: aPoint.
		sampleIndex := sampleIndex + 1]
! !

!PaperMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 4/11/2023 09:57:20'!
drawOn: canvas
	super drawOn: canvas.! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:51:46'!
color
	^ color! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:51:39'!
color: aColor
	color := aColor ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 10:38:09'!
control1
	^ c1! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 21:21:04'!
end
	^ p2! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 22:44:40'!
end: aPoint
	 p2 := aPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 21:20:59'!
start
	^ p1! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 22:44:51'!
start: aPoint
	p1 := aPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 10:39:07'!
start: startPoint end: endPoint control1: controlPoint
	p1 := startPoint.
	p2 := endPoint .
	c1 := controlPoint ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:51:54'!
width
	^ width ! !

!Bezier2Morph methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:52:12'!
width: aNumber
	width := aNumber ! !

!Bezier2Morph methodsFor: 'printing' stamp: 'hlsf 4/2/2023 10:38:09'!
printOn: str
	super printOn: str.
	str nextPutAll: ' p1: ';
		nextPutAll: (p1 printShowingDecimalPlaces: 1);
		nextPutAll: ' p2: ';
		nextPutAll: (p2 printShowingDecimalPlaces: 1);		
		nextPutAll: ' c: ';
		nextPutAll: (c1 ifNotNil: [c1 printShowingDecimalPlaces: 1] ifNil: ['nil'])
	
! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/2/2023 22:51:31'!
drawControlsOn: canvas
	canvas fillColor: Color red do: [	canvas circleCenter: c1 radius: 1.5]! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 12:38:57'!
drawCurveOn: canvas
	canvas moveTo: p1.
	canvas quadraticBezierTo: p2 control: c1! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 13:11:24'!
drawOn: canvas
	canvas strokeWidth: width color: color do: [self drawCurveOn: canvas ].
	self showTangents ifTrue: [self drawTangentsOn: canvas].
	self showControls ifTrue: [self drawControlsOn: canvas].
	self showPoints ifTrue: [self drawPointsOn: canvas]
	! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/1/2023 15:57:18'!
drawPointsOn: canvas
	canvas fillColor: Color blue do: [canvas circleCenter: p1 radius: 1.5].
	canvas fillColor: Color blue do: [canvas circleCenter: p2 radius: 1.5]! !

!Bezier2Morph methodsFor: 'drawing' stamp: 'hlsf 4/2/2023 22:51:18'!
drawTangentsOn: canvas
	canvas strokeWidth: 0.8 color: Color green do: [		
			canvas moveTo: p1.
			canvas lineTo: c1.
			canvas lineTo: p2]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/3/2023 19:33:00'!
is: aSymbol
	^ aSymbol == #BezierMorph or: [ super is: aSymbol ]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:20:10'!
showControls
	^ [owner showControls] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:20:15'!
showPoints
	^ [owner showPoints] on: MessageNotUnderstood do: [false]! !

!Bezier2Morph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:20:20'!
showTangents
	^ [owner showTangents] on: MessageNotUnderstood do: [false]! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:35:57'!
control2
	^ c2! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:37:13'!
start: startPoint end: endPoint control1: controlPoint1 
	self shouldNotImplement ! !

!Bezier3Morph methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:29:51'!
start: startPoint end: endPoint control1: controlPoint1 control2: controlPoint2
	p1 := startPoint.
	p2 := endPoint .
	c1 := controlPoint1.
	c2 := controlPoint2 ! !

!Bezier3Morph methodsFor: 'printing' stamp: 'hlsf 4/2/2023 14:31:08'!
printOn: str
	super printOn: str.
	str
		nextPutAll: ' c2: ';
		nextPutAll: (c2 ifNotNil: [c2 printShowingDecimalPlaces: 1] ifNil: ['nil'])
	
! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 4/2/2023 22:51:42'!
drawControlsOn: canvas
	super drawControlsOn: canvas.
	canvas fillColor: Color red do: [	canvas circleCenter: c2 radius: 1.5]! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 12:40:01'!
drawCurveOn: canvas
	canvas moveTo: p1.
	c1 ifNil: [canvas lineTo: p2]	 ifNotNil: [canvas cubicBezierTo: p2 control1: c1 control2: c2]! !

!Bezier3Morph methodsFor: 'drawing' stamp: 'hlsf 4/2/2023 14:39:30'!
drawTangentsOn: canvas
	canvas strokeWidth: 0.8 color: Color green do: [		
				canvas moveTo: p1.
				canvas lineTo: c1.
				canvas moveTo: p2.
				canvas lineTo: c2] ! !

!LineStrokeMorph methodsFor: 'drawing' stamp: 'hlsf 4/3/2023 20:41:27'!
drawOn: canvas
	| samples lastIndex |
	owner class ~= PaperMorph ifTrue: [^ self].
	samples := owner samples.
	lastIndex := owner sampleIndex - 1.
	canvas strokeWidth: owner pen width color: owner pen color do: [
		lastIndex ifNotZero: [
			canvas moveTo: owner samples first.
			2 to: lastIndex do: [:i | canvas lineTo: ( samples at: i )] ] ].	
! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 13:20:33'!
drawOn: canvas
	self visible ifTrue: [self drawWhenHiddenOn: canvas]! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 15:29:57'!
drawWhenHiddenOn: canvas
" I draw manualy my submorphs "
	| nextIndex endIndex strokesQty stroke color width |
	strokesQty := self submorphCount.
	strokesQty isZero ifTrue: [ ^ self ].
	nextIndex := 1.
	[nextIndex <= strokesQty] whileTrue: [
		stroke := submorphs at: nextIndex.
		color := stroke color.
		width := stroke width.
		endIndex :=  nextIndex + 1.
		[endIndex <= strokesQty 
			and: [(stroke := submorphs at: endIndex) color = color 
			and: [stroke width = width]]] whileTrue: [			endIndex := endIndex + 1		].
		canvas strokeWidth: width color: color do: [
			nextIndex to: (endIndex - 1) do: [ :i |
				stroke := submorphs at: i.
				 stroke drawCurveOn: canvas ] ].
		nextIndex := endIndex	].	
	self showTangents ifTrue: [submorphs do: [:each | each drawTangentsOn: canvas] ].
	self showControls ifTrue: [submorphs do: [:each | each drawControlsOn: canvas] ].
	self showPoints ifTrue: [submorphs do: [:each | each drawPointsOn: canvas] ]! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 15:18:04'!
hide
" When hidden, I don't draw myself the strokes (my submorph).   
   Therefore I show all my submorphs, they will draw themselves, with graphic artifacts at their junctions  "
	self submorphsDo: [:each | each show].! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 4/8/2023 15:08:14'!
show
" When shown, I draw myself my strokes (submorph), to avoid graphics artifacts between the connection of the curves.   
   Therefore I hide all my submorphs
"
	super show.
	self submorphsDo: [:each | each hide].! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:18:06'!
showControls
	^ [owner showControls] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:18:22'!
showPoints
	^ [owner showPoints] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 4/8/2023 12:18:38'!
showTangents
	^ [owner showTangents] on: MessageNotUnderstood do: [false]! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 15:55:34'!
color: aColor
	submorphs do: [:each | each color: aColor].
	self redrawNeeded ! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 15:56:04'!
width: aNumber
	submorphs do: [:each | each width: aNumber ].
	self redrawNeeded ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:04:47'!
adjustWidth
	^ adjustWidth ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:04:56'!
adjustWidth: boolean
	adjustWidth := boolean ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:09:31'!
adjustWidthOnOff
	adjustWidth := adjustWidth not! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:10'!
color
	^ color! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:01'!
color: aColor
	color := 	aColor ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 4/7/2023 14:16:06'!
threshold
	^ threshold ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 4/7/2023 14:16:16'!
threshold: anInteger
	threshold := anInteger ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:17'!
width
	^ width ! !

!Pencil methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:29'!
width: aNumber
	width := aNumber ! !

!Pencil methodsFor: 'user interface' stamp: 'hlsf 4/11/2023 09:15:50'!
adjustWidthString
	^ adjustWidth asMenuItemTextPrefix , 		'adjust width'! !

!StrokerBezier2 methodsFor: 'instance' stamp: 'hlsf 4/9/2023 11:35:26'!
newStroke
	| newStroke lastStroke junctionPoint samples |
	samples := self samples.
	lastStroke := paper lastStroke.
	newStroke := Bezier2Morph new
		start: samples first
		end: samples last
		control1: samples second;
		color: self penColor; 
		width: (self widthFor: samples prev: lastStroke);
		yourself.
	(lastStroke notNil and: [lastStroke end == newStroke start]) ifTrue: [	
		junctionPoint := (lastStroke control1 + newStroke control1) / 2.0.
		lastStroke end: junctionPoint.
		newStroke start: junctionPoint.
		lastStroke redrawNeeded ].
	^ newStroke
	
	! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:17:13'!
adjustWidth
	^ paper pen adjustWidth ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:32:38'!
paper: aPaperMorph
	paper := aPaperMorph ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/9/2023 11:36:11'!
penColor
	^ paper pen color! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/12/2023 17:21:08'!
penThreshold
	^ paper pen threshold ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/9/2023 11:36:18'!
penWidth
	^ paper pen width! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:53:07'!
samples
"samples used to compute a new stroke"
	^ paper samples! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:44:49'!
samplesQty
"Quantity of samples used to compute a new stroke"
	^ 3! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/9/2023 10:25:47'!
averageDistance: samples
	| dist |
	dist := 0.
	1 to: samples size -1 do: [:i |
		dist := dist + ( (samples at: i) dist: (samples at: i + 1) )].
	^ dist / (samples size - 1)! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/1/2023 12:56:11'!
intersectionOrigin1: p1 vector1: v1 origin2: p2 vector2: v2
| det c1 c2 |
	det := v1 crossProduct: v2.
	det squared < 1e-8 ifTrue: [^ nil].
	c1 := p1 crossProduct: v1.
	c2 := p2 crossProduct: v2.
	^ ((c2 * v1 x - (c1 * v2 x) ) / det) @ ((v1 y * c2 - (v2 y * c1)) / det)! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/12/2023 17:28:57'!
maxDistance: samples
	| dist |
	dist := Array new: samples size - 1.
	1 to: samples size -1 do: [:i |
		dist at: i put: ( (samples at: i) dist: (samples at: i + 1) )].
	^ dist max! !

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 4/12/2023 17:34:53'!
widthFor: samples prev: lastStroke
	| penWidth prevWidth strokeDist min max f a b  | 
	penWidth := self penWidth.
	self adjustWidth ifFalse: [^penWidth ].
	prevWidth := lastStroke ifNotNil: [lastStroke width] ifNil: [penWidth].
	"min/max pixel distance between two samples"
	min := self penThreshold / 2.
	max := self penThreshold * 2. 
	"+/- f % of amplitude width"
	f := 0.30.
	" affine parameters "
	a := (2 * penWidth * f) / ( min - max).
	b :=  penWidth * (1 + f) - (min * a).
	strokeDist := (self maxDistance: samples) min: max max: min.
	^ (a * strokeDist + b) * 0.6 + (prevWidth * 0.4)! !

!StrokerBezier2 class methodsFor: 'instance creation' stamp: 'hlsf 4/1/2023 14:29:08'!
on: aPaperMorph
	^ self new ::
		paper: aPaperMorph ;
		yourself! !

!StrokerBezier3 methodsFor: 'instance' stamp: 'hlsf 4/9/2023 12:17:41'!
newStroke
	| newStroke lastStroke junctionPoint samples |
	samples := self samples.
	lastStroke := paper lastStroke.
	newStroke := Bezier3Morph new
		start: samples first
		end: samples last
		control1: samples second
		control2: samples third;
		color: self penColor; 
		width:  (self widthFor: samples prev: lastStroke);
		yourself.
	(lastStroke notNil and: [lastStroke end == newStroke start]) ifTrue: [	
		junctionPoint := (lastStroke control2 + newStroke control1) / 2.0.
		lastStroke end: junctionPoint.
		newStroke start: junctionPoint.
		lastStroke redrawNeeded].
	^ newStroke
	
	! !

!StrokerBezier3 methodsFor: 'accessing' stamp: 'hlsf 4/2/2023 14:44:41'!
samplesQty
"Quantity of samples used to compute a new stroke"
	^ 4! !

!Collection methodsFor: '*Paper' stamp: 'hlsf 3/31/2023 22:22:27'!
covariance: y
	^ (self * y) sum / self size - (self mean * y mean)! !

!Collection methodsFor: '*Paper' stamp: 'hlsf 4/1/2023 15:28:39'!
regression: y
"Linear regression (least-squares), return a, b of y=ax+b"
	| a b v |
	v := self variance.
	v isZero ifTrue: [^nil]. "points are vertically aligned"
	a := (self covariance: y) / v.
	b := y mean - (a * self mean).
	^ Array with: a with: b! !

!Collection methodsFor: '*Paper' stamp: 'hlsf 3/31/2023 22:01:21'!
variance
	^ self squared sum / self size - self mean squared! !
