'From Cuis7.1 [latest update: #6719] on 15 September 2024 at 10:33:30 pm'!
'Description '!
!provides: 'Document' 1 22!
SystemOrganization addCategory: #'Document-Model'!
SystemOrganization addCategory: #'Document-View'!
SystemOrganization addCategory: #'Document-Presenter'!
SystemOrganization addCategory: #'Document-Presenter-Command'!


!classDefinition: #CommandStack category: #'Document-Presenter-Command'!
ReadWriteStream subclass: #CommandStack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'CommandStack class' category: #'Document-Presenter-Command'!
CommandStack class
	instanceVariableNames: ''!

!classDefinition: #Pen category: #'Document-Model'!
Object subclass: #Pen
	instanceVariableNames: 'color width adjustWidth threshold'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'Pen class' category: #'Document-Model'!
Pen class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2 category: #'Document-Model'!
Object subclass: #StrokerBezier2
	instanceVariableNames: 'paper strokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier2 class' category: #'Document-Model'!
StrokerBezier2 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier2XP category: #'Document-Model'!
StrokerBezier2 subclass: #StrokerBezier2XP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier2XP class' category: #'Document-Model'!
StrokerBezier2XP class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3 category: #'Document-Model'!
StrokerBezier2 subclass: #StrokerBezier3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier3 class' category: #'Document-Model'!
StrokerBezier3 class
	instanceVariableNames: ''!

!classDefinition: #StrokerBezier3XP category: #'Document-Model'!
StrokerBezier3 subclass: #StrokerBezier3XP
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'StrokerBezier3XP class' category: #'Document-Model'!
StrokerBezier3XP class
	instanceVariableNames: ''!

!classDefinition: #Document category: #'Document-Presenter'!
Object subclass: #Document
	instanceVariableNames: 'tool view controlsManager pen highlighter eraser commandsManager'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'Document class' category: #'Document-Presenter'!
Document class
	instanceVariableNames: ''!

!classDefinition: #PageTool category: #'Document-Presenter'!
Object subclass: #PageTool
	instanceVariableNames: 'state presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'PageTool class' category: #'Document-Presenter'!
PageTool class
	instanceVariableNames: ''!

!classDefinition: #EraserTool category: #'Document-Presenter'!
PageTool subclass: #EraserTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'EraserTool class' category: #'Document-Presenter'!
EraserTool class
	instanceVariableNames: ''!

!classDefinition: #HighlighterTool category: #'Document-Presenter'!
PageTool subclass: #HighlighterTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'HighlighterTool class' category: #'Document-Presenter'!
HighlighterTool class
	instanceVariableNames: ''!

!classDefinition: #PenTool category: #'Document-Presenter'!
PageTool subclass: #PenTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'PenTool class' category: #'Document-Presenter'!
PenTool class
	instanceVariableNames: ''!

!classDefinition: #SelectTool category: #'Document-Presenter'!
PageTool subclass: #SelectTool
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'SelectTool class' category: #'Document-Presenter'!
SelectTool class
	instanceVariableNames: ''!

!classDefinition: #PageToolState category: #'Document-Presenter'!
Object subclass: #PageToolState
	instanceVariableNames: 'context'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'PageToolState class' category: #'Document-Presenter'!
PageToolState class
	instanceVariableNames: ''!

!classDefinition: #EraserToolStateErasing category: #'Document-Presenter'!
PageToolState subclass: #EraserToolStateErasing
	instanceVariableNames: 'deletedStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'EraserToolStateErasing class' category: #'Document-Presenter'!
EraserToolStateErasing class
	instanceVariableNames: ''!

!classDefinition: #EraserToolStateNeutral category: #'Document-Presenter'!
PageToolState subclass: #EraserToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'EraserToolStateNeutral class' category: #'Document-Presenter'!
EraserToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #HighligtherToolStateNeutral category: #'Document-Presenter'!
PageToolState subclass: #HighligtherToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'HighligtherToolStateNeutral class' category: #'Document-Presenter'!
HighligtherToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #PenToolStateNeutral category: #'Document-Presenter'!
PageToolState subclass: #PenToolStateNeutral
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'PenToolStateNeutral class' category: #'Document-Presenter'!
PenToolStateNeutral class
	instanceVariableNames: ''!

!classDefinition: #PenToolStateWriting category: #'Document-Presenter'!
PageToolState subclass: #PenToolStateWriting
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'PenToolStateWriting class' category: #'Document-Presenter'!
PenToolStateWriting class
	instanceVariableNames: ''!

!classDefinition: #HighligtherToolStateWriting category: #'Document-Presenter'!
PenToolStateWriting subclass: #HighligtherToolStateWriting
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter'!
!classDefinition: 'HighligtherToolStateWriting class' category: #'Document-Presenter'!
HighligtherToolStateWriting class
	instanceVariableNames: ''!

!classDefinition: #Command category: #'Document-Presenter-Command'!
Object subclass: #Command
	instanceVariableNames: 'domain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'Command class' category: #'Document-Presenter-Command'!
Command class
	instanceVariableNames: ''!

!classDefinition: #ErasingCommand category: #'Document-Presenter-Command'!
Command subclass: #ErasingCommand
	instanceVariableNames: 'deletedStrokes'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'ErasingCommand class' category: #'Document-Presenter-Command'!
ErasingCommand class
	instanceVariableNames: ''!

!classDefinition: #WritingCommand category: #'Document-Presenter-Command'!
Command subclass: #WritingCommand
	instanceVariableNames: 'strokeGroup'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'WritingCommand class' category: #'Document-Presenter-Command'!
WritingCommand class
	instanceVariableNames: ''!

!classDefinition: #CommandManager category: #'Document-Presenter-Command'!
Object subclass: #CommandManager
	instanceVariableNames: 'stack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Presenter-Command'!
!classDefinition: 'CommandManager class' category: #'Document-Presenter-Command'!
CommandManager class
	instanceVariableNames: ''!

!classDefinition: #DocumentModel category: #'Document-Model'!
ActiveModel subclass: #DocumentModel
	instanceVariableNames: 'pages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-Model'!
!classDefinition: 'DocumentModel class' category: #'Document-Model'!
DocumentModel class
	instanceVariableNames: ''!

!classDefinition: #Bezier2Morph category: #'Document-View'!
Morph subclass: #Bezier2Morph
	instanceVariableNames: 'color width p1 p2 c1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'Bezier2Morph class' category: #'Document-View'!
Bezier2Morph class
	instanceVariableNames: ''!

!classDefinition: #Bezier3Morph category: #'Document-View'!
Bezier2Morph subclass: #Bezier3Morph
	instanceVariableNames: 'c2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'Bezier3Morph class' category: #'Document-View'!
Bezier3Morph class
	instanceVariableNames: ''!

!classDefinition: #LineStrokeMorph category: #'Document-View'!
Morph subclass: #LineStrokeMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'LineStrokeMorph class' category: #'Document-View'!
LineStrokeMorph class
	instanceVariableNames: ''!

!classDefinition: #StrokeGroupMorph category: #'Document-View'!
PlacedMorph subclass: #StrokeGroupMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'StrokeGroupMorph class' category: #'Document-View'!
StrokeGroupMorph class
	instanceVariableNames: ''!

!classDefinition: #PageMorph category: #'Document-View'!
BoxMorph subclass: #PageMorph
	instanceVariableNames: 'background paper presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'PageMorph class' category: #'Document-View'!
PageMorph class
	instanceVariableNames: ''!

!classDefinition: #BackgroundMorph category: #'Document-View'!
ColoredBoxMorph subclass: #BackgroundMorph
	instanceVariableNames: 'style'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'BackgroundMorph class' category: #'Document-View'!
BackgroundMorph class
	instanceVariableNames: ''!

!classDefinition: #PageContainer category: #'Document-View'!
ColoredBoxMorph subclass: #PageContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'PageContainer class' category: #'Document-View'!
PageContainer class
	instanceVariableNames: ''!

!classDefinition: #DocumentView category: #'Document-View'!
LayoutMorph subclass: #DocumentView
	instanceVariableNames: 'presenter page'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'DocumentView class' category: #'Document-View'!
DocumentView class
	instanceVariableNames: ''!

!classDefinition: #PaperMorph category: #'Document-View'!
BoxedMorph subclass: #PaperMorph
	instanceVariableNames: 'stroker samples sampleIndex lineStrokes lastMousePosition presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Document-View'!
!classDefinition: 'PaperMorph class' category: #'Document-View'!
PaperMorph class
	instanceVariableNames: ''!


!CommandStack commentStamp: '<historical>' prior: 0!
I am stack of command to execute or to unexecute user action in a Document!

!Pen commentStamp: '<historical>' prior: 0!
Depending on the use of the pen, we have different threshold
- color : color of the pen, including transparent color
- width: standard fixed width
- adjustWidth: does the width depends on the speed/pressure of the pen
- threshold : the minimum squared distance between two stroke with paper morph at scale 1!

!StrokerBezier2 commentStamp: '<historical>' prior: 0!
Given samples of mouse positions and previous strokes, I compute a new Bézier quadratic stroke . 
I can be subclassed to adjust my behavior.!

!StrokerBezier2XP commentStamp: 'hlsf 9/15/2024 17:06:16' prior: 0!
Experiment on 2-Bezier. 
We migrate a bit the control point a bit away from its sampled position.!

!StrokerBezier3 commentStamp: '<historical>' prior: 0!
Compute a cubic Bézier curve.!

!Document commentStamp: '<historical>' prior: 0!
The Presenter of the Document to handle the controllers and associated callbacks of the tools.!

!PageTool commentStamp: '<historical>' prior: 0!
An abstraction of a tool to operate on a Page. Subclasses implement Pen, Eraser, etc. tools.!

!EraserTool commentStamp: '<historical>' prior: 0!
With the EraserTool the users deletes handwriten notes, highlit zones.!

!HighlighterTool commentStamp: '<historical>' prior: 0!
With the HighlghterTool the user empahsis handwriten notes or any other misc areas.!

!PenTool commentStamp: '<historical>' prior: 0!
With the PenTool the user writes handwriten notes.!

!SelectTool commentStamp: '<historical>' prior: 0!
With the SelectTool the user selects and moves around object in a page.!

!PageToolState commentStamp: '<historical>' prior: 0!
I a represent an abstracte state of a tool selected by the user.
The context is the tool (penTool, eraserTool, ...) under which the state operate.!

!EraserToolStateErasing commentStamp: 'hlsf 9/11/2024 21:16:43' prior: 0!
We record the deleted strokes in a dictionary. 
Its keys are the StrokeGroupMorphs and its values are collections of deleted strokes of the group.
When all the strokes of a group are deleted, we just need to remember of the whole stroke group.!

!Command commentStamp: '<historical>' prior: 0!
An abstract class to represent commands of user actions in a Document.
domain is specific to the represented action, it can be a paper or a document.!

!CommandManager commentStamp: '<historical>' prior: 0!
A manager for user commands. At user actions, I create specific instances of command recorded in a stack.!

!Bezier2Morph commentStamp: '<historical>' prior: 0!
A quadratic Bézier stroke!

!Bezier3Morph commentStamp: '<historical>' prior: 0!
A cubic Bézier stroke!

!LineStrokeMorph commentStamp: 'hlsf 9/1/2024 09:40:28' prior: 0!
I draw the intermediate mouse strokes, right before the Bézier curve is computed. I avoid the visual discomfort between user stroked and computed Bézier curve.

In a PaperMorph I draw the mouse strokes as connected straight lines. I request to the Paper morph, my owner, the existing samples of recorded mouse positions. I can only be owned by a Paper Morph.

This is out sourced of the PaperMorph for speed rendering -> Need to check out if it is really the case!

!StrokeGroupMorph commentStamp: '<historical>' prior: 0!
I group the strokes (kind of BezierMorph) of a hand written stroke. A hand stroke happens between the pen down and pen up events.
To avoid graphics artifacts at the junctions of the strokes, I draw directly the submorphs.
In some circumstance, I reveal my submorphs and then I do not draw them directly.!

!PageMorph commentStamp: '<historical>' prior: 0!
The view of a Page. A page is a unit of a Document.
I always contain these two morphs of the same extent as me:
 - a background morph
 - a paper morph!

!PageContainer commentStamp: '<historical>' prior: 0!
I am a container for a Page, I expand on the DocumentView, then let the Page be moved and scaled in me.
I also clip the page!

!DocumentView commentStamp: '<historical>' prior: 0!
A document view comes with:
- at the top, a toolbar to access a few set of tools (see #documentTools)
- at the right/left (should depends on user preference)  and at the bottom, wheels to move the page and zoom in/out
- at the bottom, a status bar
- at the center, the page cover all the remaining area!

!PaperMorph commentStamp: '<historical>' prior: 0!
- stroker:  an object to compute a stroke
- samples: an array of fixed size, collected mouse positions
- samplesQty: quantity of required samples to compute a stroke
- sampleIndex: the index of the next sample to collect

(PaperMorph new stroker: StrokerBezier2 ) openInWorld. "Quadratic Bézier"
(PaperMorph new stroker: StrokerBezier2XP ) openInWorld. "Quadratic Bézier, expend out the control point"
(PaperMorph new stroker: StrokerBezier3 ) openInWorld. "Cubic Bézier"
(PaperMorph new stroker: StrokerBezier3XP ) openInWorld. "Cubic Bézier, expend out the control point"
!

!CommandStack methodsFor: 'private' stamp: 'hlsf 9/10/2024 21:00:31'!
truncate
	|oldReadLimit|
	oldReadLimit := readLimit.
	readLimit := position.
	oldReadLimit > readLimit ifTrue:
			[readLimit to: oldReadLimit do:
				[:index| collection at: index + 1 put: nil]]! !

!CommandStack methodsFor: 'accessing' stamp: 'hlsf 9/10/2024 21:00:20'!
nextPut: aCommand
	super nextPut: aCommand.
	self truncate.
	^ aCommand ! !

!CommandStack methodsFor: 'accessing' stamp: 'hlsf 9/10/2024 21:00:26'!
previous
	self position = 0 ifTrue: [^nil].
	self position: self position - 1.
	^self peek.! !

!CommandStack class methodsFor: 'instance creation' stamp: 'hlsf 9/10/2024 21:01:01'!
new
	^self on: Array new! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:04:47'!
adjustWidth
	^ adjustWidth ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:04:56'!
adjustWidth: boolean
	adjustWidth := boolean ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/11/2023 09:09:31'!
adjustWidthOnOff
	adjustWidth := adjustWidth not! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:10'!
color
	^ color! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:01'!
color: aColor
	color := 	aColor ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/7/2023 14:16:06'!
threshold
	^ threshold ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 4/7/2023 14:16:16'!
threshold: anInteger
	threshold := anInteger ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:17'!
width
	^ width ! !

!Pen methodsFor: 'accessing' stamp: 'hlsf 3/23/2023 14:50:29'!
width: aNumber
	width := aNumber ! !

!Pen methodsFor: 'user interface' stamp: 'hlsf 4/11/2023 09:15:50'!
adjustWidthString
	^ adjustWidth asMenuItemTextPrefix , 		'adjust width'! !

!Pen methodsFor: 'as yet unclassified' stamp: 'hlsf 9/7/2024 11:48:27'!
initialize
	color := Color black.
	threshold := 4 squared.
	width := 2. 
	adjustWidth := false! !

!StrokerBezier2 methodsFor: 'instance' stamp: 'hlsf 8/18/2024 09:58:49'!
newStroke
	| newStroke lastStroke junctionPoint samples  |
	samples := self samples.
	lastStroke := paper lastStroke.
	newStroke := Bezier2Morph new
		start: samples first
		end: samples last
		control1: samples second;
		color: self penColor; 
		width: (self widthFor: samples prev: lastStroke);
		yourself.

	(lastStroke notNil 	and: [lastStroke end == newStroke start 		] ) 
		ifTrue: [				
			junctionPoint := (lastStroke control1 + newStroke control1) / 2.0.
			lastStroke end: junctionPoint.
			newStroke start: junctionPoint].
	^ newStroke
	
	! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:02:54'!
adjustWidth
	^ paper writingTool adjustWidth ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 4/1/2023 12:32:38'!
paper: aPaperMorph
	paper := aPaperMorph ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:02:40'!
penColor
	^ paper writingTool color! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 13:12:07'!
penThreshold
	^ paper writingTool threshold ! !

!StrokerBezier2 methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:02:47'!
penWidth
	^ paper writingTool width! !

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

!StrokerBezier2 methodsFor: 'compute' stamp: 'hlsf 8/18/2024 21:57:02'!
widthFor: samples prev: lastStroke
	| penWidth prevWidth strokeDist min max f a b  | 
	penWidth := self penWidth.
	self adjustWidth ifFalse: [^penWidth ].
	prevWidth := lastStroke ifNotNil: [lastStroke width] ifNil: [penWidth].
	"min/max pixel distance between two samples"
	min := self penThreshold / 2.
	max := self penThreshold * 2. 
	"+/- f % of amplitude width"
	f := 0.50.
	" affine parameters "
	a := (2 * penWidth * f) / ( min - max).
	b :=  penWidth * (1 + f) - (min * a).
	strokeDist := (self maxDistance: samples) min: max max: min.
	^ (a * strokeDist + b) * 0.6 + (prevWidth * 0.4)! !

!StrokerBezier2 methodsFor: 'testing' stamp: 'hlsf 8/18/2024 10:07:39'!
isLocalC1at: m between: c1 and: c2
"
	We check if local C1 continuity is desirable ? 
"
	^ true! !

!StrokerBezier2 methodsFor: 'testing' stamp: 'hlsf 8/18/2024 15:30:01'!
isSamplesValid
" 
Do we consider valid the current samples, Subclasses may implement differently to discard
"
	^ (self samples first squaredDistanceTo: self samples second) > paper pen threshold! !

!StrokerBezier2 class methodsFor: 'instance creation' stamp: 'hlsf 4/1/2023 14:29:08'!
on: aPaperMorph
	^ self new ::
		paper: aPaperMorph ;
		yourself! !

!StrokerBezier2XP methodsFor: 'instance' stamp: 'hlsf 9/15/2024 17:54:35'!
newStroke
	| newStroke lastStroke junctionPoint samples migratedControl middle c1 |
	samples := self samples.
	lastStroke := paper lastStroke.
	middle := (samples first + samples last) / 2.0.
	migratedControl := middle + (1.2 * (samples second - middle)). "1.2 seems to be a good scaling"
	newStroke := Bezier2Morph new
		start: samples first
		end: samples last
		control1: migratedControl ;
		color: self penColor; 
		width: (self widthFor: samples prev: lastStroke);
		yourself.
		
	(lastStroke notNil 
	and: [lastStroke end == newStroke start
"
	Not all the situations are catched!! Indeed when the stroke abrubtly changes of direction intra a bezier curve, 
	(at the control point) we are not paying attention. This below only checks between two bezier curves.
	We need a different traitment for that kind of situation
"
	and: [c1 := self isLocalC1at: newStroke start between: lastStroke control1 and: newStroke control1]	 		] ) 
		ifTrue: [				
			junctionPoint := (lastStroke control1 + newStroke control1) / 2.0.
			lastStroke end: junctionPoint.
			newStroke start: junctionPoint].
	(c1 notNil and: [c1 == false])  ifTrue: [newStroke color: Color cyan].
	^ newStroke
	
	! !

!StrokerBezier2XP methodsFor: 'testing' stamp: 'hlsf 9/15/2024 17:51:35'!
isLocalC1at: m between: c1 and: c2
"
	We check if local C1 continuity is desirable ? 
	When the stroke is abruptly changing of direction, C1 is not wished, 
	otherwise the user stroke will be truncated (i.e. n, m letter strokes for example)	
"
	| u v cos |
	u := c1 - m.
	v := c2 - m.
	cos := (u dotProduct: v) / (u r * v r) .
	cos arcCos radiansToDegrees print.
	^ (cos
		between: `90 degreesToRadians cos` 
		and: `0 cos`) not! !

!StrokerBezier2XP methodsFor: 'testing' stamp: 'hlsf 9/7/2024 12:03:03'!
isSamplesValid
" 
Do we consider valid the current samples, reason to discard :
	- the samples are not on an approximative line (i.e. above a given angle thresold)
	- are above a threshold distance
	- ...
"
	| a b ans |	
	a := self samples second - self samples first.
	b := self samples third - self samples first.
	" Angle between M1C, M1M2 - C: control point "
	ans := (a crossProduct: b) abs / (a r * b r)  > `10 degreesToRadians sin` .
	^ ans
		or:  [	(self samples first squaredDistanceTo: self samples second) > paper writingTool threshold]

	! !

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

!StrokerBezier3 methodsFor: 'testing' stamp: 'hlsf 8/17/2024 11:20:02'!
isSamplesValid
	^ true! !

!StrokerBezier3XP methodsFor: 'as yet unclassified' stamp: 'hlsf 5/29/2024 21:27:24'!
newStroke
	| newStroke lastStroke junctionPoint samples migratedControl1 migratedControl2 factor |
	samples := self samples.
	lastStroke := paper lastStroke.
	factor := 1.2.
	migratedControl1 := factor * (samples second - samples first) + samples first.
	migratedControl2 := factor * (samples third - samples fourth) + samples fourth.
	newStroke := Bezier3Morph new
		start: samples first
		end: samples last
		control1: migratedControl1 
		control2: migratedControl2 ;
		color: self penColor; 
		width:  (self widthFor: samples prev: lastStroke);
		yourself.
	(lastStroke notNil and: [lastStroke end == newStroke start]) ifTrue: [	
		junctionPoint := (lastStroke control2 + newStroke control1) / 2.0.
		junctionPoint := (junctionPoint + (lastStroke end) ) / 2.0.
		lastStroke end: junctionPoint.
		newStroke start: junctionPoint.
		lastStroke redrawNeeded].
	^ newStroke
	
	! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/5/2024 14:34:33'!
eraserTool
	self tool: EraserTool ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/5/2024 14:34:47'!
highlighterTool
	self tool:HighlighterTool ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/8/2024 19:09:17'!
moveOXAction: increment
	| page container |
	page := self currentPage.
	container := page owner.
	page morphPosition: (page morphPosition + (increment @ 0) 
		min: container morphExtent 
		max: page morphExtent negated)! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/8/2024 19:09:47'!
moveOYAction: increment
	| page container |
	page := self currentPage.
	container := page owner.
	page morphPosition: (page morphPosition + (0@increment) 
		min: container morphExtent 
		max: page morphExtent negated)! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/5/2024 10:38:17'!
penTool
	self tool: PenTool ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/11/2024 17:35:09'!
redoAction
	commandsManager redo! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/5/2024 14:34:59'!
selectTool
	self tool: SelectTool ! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/11/2024 17:35:16'!
undoAction
	commandsManager undo! !

!Document methodsFor: 'callback ui' stamp: 'hlsf 9/9/2024 19:04:12'!
zoomAction: increment	
	self currentPage scale: (self currentPage scale + increment
		min: 2 
		max: 0.1)! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:25:47'!
commandsManager
	^ commandsManager ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 10:49:06'!
controlsManager
	^ controlsManager ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 10:26:24'!
controlsManager: aControlsManager
	controlsManager := aControlsManager ! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/8/2024 16:57:30'!
currentPage
	^ controlsManager documentView currentPage! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/8/2024 16:44:15'!
pages
	^ {self currentPage}! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:42:08'!
selectedTool
	^ tool ifNotNil: [tool toolName] ifNil: [#none]! !

!Document methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 11:52:43'!
writingTool
	" Depends on the selected tool "
	^  self selectedTool 
		caseOf:  {
			[PenTool toolName] -> [pen] .
			[HighlighterTool toolName] -> [highlighter ] .
			[EraserTool toolName] -> [eraser ]
		}
		otherwise: [nil]! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/5/2024 11:39:44'!
isTool: aToolName
	^ self selectedTool == aToolName ! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/5/2024 15:09:27'!
tool
	^ tool! !

!Document methodsFor: 'tool' stamp: 'hlsf 9/8/2024 16:40:01'!
tool: aToolClass
	tool ifNotNil: [tool release].
	tool := aToolClass presenter: self.
	tool registerObserver: self.
	self controlsManager statusBarMessage: aToolClass description.
	self changed! !

!Document methodsFor: 'initialization' stamp: 'hlsf 9/11/2024 17:21:38'!
initialize
	super initialize.
	self initializeWritingTools .
	self penTool.
	commandsManager := CommandManager new! !

!Document methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 16:16:15'!
initializeWritingTools
	pen := Pen new.
	highlighter := Pen new ::
		color: (Color yellow alpha: 0.3);
		width: 40;
		threshold: 10 squared.
	eraser := Pen new 	width: 16
! !

!Document methodsFor: 'cleanup' stamp: 'hlsf 9/8/2024 19:03:55'!
deleteBitMasks
" Remove all the bitmask of the Stroke Morph "
	self pages do: [:aPage |
		aPage paper strokeGroups do: [:aStrokeGroup | aStrokeGroup deleteBitMasks 		] ]! !

!Document class methodsFor: 'instance creation' stamp: 'hlsf 9/5/2024 10:47:16'!
controlsManager: aControlsManager
	^ self basicNew 
		controlsManager: aControlsManager ;
		initialize ;
		yourself! !

!Document class methodsFor: 'instance creation' stamp: 'hlsf 9/5/2024 10:47:42'!
new
	self error: 'Instanciate with a controls manager'! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:36:26'!
presenter
	^ presenter! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 11:04:16'!
presenter: aPresenter
	presenter := aPresenter ! !

!PageTool methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:37:34'!
toolName
	^ self class iconName! !

!PageTool methodsFor: 'initialization' stamp: 'hlsf 9/1/2024 11:15:48'!
registerObserver: anObserver
" 
	Register here any observer about event(s) occuring during the tool operations
"! !

!PageTool methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 16:39:56'!
release
	self releaseActionMap ! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:10'!
handleMouseAt: localPosition in: page
	state handleMouseAt: localPosition in: page! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:15'!
handlePress: localPosition in: page
	state handlePress: localPosition in: page! !

!PageTool methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:27'!
handleRelease: localPosition in:page
	state handleRelease: localPosition in: page! !

!PageTool methodsFor: 'state' stamp: 'hlsf 9/1/2024 15:01:52'!
switchState: aStateClass
	state := aStateClass new context: self! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:47:02'!
action
" A symbol to identify me, also the message name sent to the presenter "
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:43:40'!
description
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:36:37'!
iconName
" also the name to identify the tool sent to the presenter "
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:43:36'!
title
	self subclassResponsibility ! !

!PageTool class methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 11:40:29'!
toolName
	^ self iconName! !

!PageTool class methodsFor: 'instance creation' stamp: 'hlsf 9/1/2024 11:03:33'!
new
	self error: 'Use #presenter:'! !

!PageTool class methodsFor: 'instance creation' stamp: 'hlsf 9/1/2024 11:03:52'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 19:03:55'!
deleteBitsMasks
	presenter deleteBitMasks ! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 15:14:24'!
initialize
	super initialize.
	self switchState: EraserToolStateNeutral ! !

!EraserTool methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 19:04:26'!
release
	super release.
	" We need to remove the Morph bitMask used to detect the individual strokes "
	self deleteBitsMasks ! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:47:25'!
action
	^ #eraserTool! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:02:10'!
description
	^ 'An eraser to delete some of your handwriting' translated! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:36:52'!
iconName
	^ #eraser! !

!EraserTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:02:21'!
title
	^ 'Eraser' translated! !

!HighlighterTool methodsFor: 'initialization' stamp: 'hlsf 9/7/2024 12:13:56'!
initialize
	super initialize.
	self switchState: HighligtherToolStateNeutral ! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:48:04'!
action
	^ #highlighterTool! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/8/2024 19:11:19'!
description
	^ 'A highlighter to emphasis some of your handwritings' translated ! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:37:56'!
iconName
	^ #highlighter! !

!HighlighterTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:03:16'!
title
	^ 'Highlighter' translated! !

!PenTool methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 15:14:29'!
initialize
	super initialize.
	self switchState: PenToolStateNeutral ! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:48:37'!
action
	^ #penTool! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:05:41'!
description
	^ 'A pen for your handwriting' translated ! !

!PenTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:03:57'!
title
	^ 'Pencil' translated! !

!PenTool class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/5/2024 11:38:17'!
iconName
	^ #pen! !

!SelectTool methodsFor: 'as yet unclassified' stamp: 'hlsf 9/5/2024 16:04:31'!
initialize
	super initialize.
	self switchState: PageToolState " does nothing right now "! !

!SelectTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 12:49:27'!
action
	^ #selectTool! !

!SelectTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:06:43'!
description
	^ 'Select and drag objects around, including the whole page' translated ! !

!SelectTool class methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:38:53'!
iconName
	^ #select! !

!SelectTool class methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 10:06:21'!
title
	^ 'Select' translated! !

!PageToolState methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:25:29'!
commandsManager
	^ context presenter commandsManager! !

!PageToolState methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 15:04:07'!
context: aTool
	context := aTool! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:35'!
handleMouseAt: localPosition in: page
! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:43'!
handlePress: localPosition in: page
! !

!PageToolState methodsFor: 'handling' stamp: 'hlsf 9/1/2024 15:35:52'!
handleRelease: localPosition in: page
! !

!EraserToolStateErasing methodsFor: 'handling' stamp: 'hlsf 9/11/2024 21:15:57'!
handleMouseAt: localPosition in: paper
	(paper strokeGroupsAt: localPosition ) do: [:each |
		(deletedStrokes at: each ifAbsentPut: [OrderedCollection new])
			addAll: (each removeStrokesAt: (each externalizeToWorld: localPosition)).
		each lastStroke ifNil: [" the stroke group was entirely deleted "
			paper removeMorph: each.
			"Reconstitute the strokeGroup... "
			each addAllMorphs: (deletedStrokes at: each).
			"... then we don't need the individual strokes, we remember of the whole group "
			deletedStrokes at: each put: each]
	]
		
		! !

!EraserToolStateErasing methodsFor: 'handling' stamp: 'hlsf 9/11/2024 21:09:01'!
handleRelease: localPosition in: page
	page redrawNeeded.
	context deleteBitsMasks.
	deletedStrokes ifNotEmpty: [	self commandsManager deletedStrokes: deletedStrokes in: page].
	context switchState: EraserToolStateNeutral ! !

!EraserToolStateErasing methodsFor: 'as yet unclassified' stamp: 'hlsf 9/11/2024 20:48:01'!
initialize
	super initialize.
	deletedStrokes := Dictionary new.! !

!EraserToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 9/7/2024 12:06:18'!
handlePress: localPosition in: paper
	" Prepare to erase... "
	context switchState: EraserToolStateErasing.
	"...then "
	context handleMouseAt: localPosition in: paper! !

!HighligtherToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 9/7/2024 12:13:40'!
handlePress: localPosition in: paper
	" Prepare to receive user handwriting... "
	paper startWritingAt: localPosition.
	"...then "
	context switchState: HighligtherToolStateWriting ! !

!PenToolStateNeutral methodsFor: 'handling' stamp: 'hlsf 9/5/2024 15:40:31'!
handlePress: localPosition in: paper
	" Prepare to receive user handwriting... "
	paper startWritingAt: localPosition.
	"...then "
	context switchState: PenToolStateWriting ! !

!PenToolStateWriting methodsFor: 'handling' stamp: 'hlsf 9/5/2024 15:40:41'!
handleMouseAt: localPosition in: paper
	paper writingAt: localPosition
	! !

!PenToolStateWriting methodsFor: 'handling' stamp: 'hlsf 9/11/2024 17:43:50'!
handleRelease: localPosition in: paper
	| finalStrokeGroup |
	finalStrokeGroup := paper endWritingAt: localPosition.
	self commandsManager strokeGroup: finalStrokeGroup in: paper.
	context switchState: PenToolStateNeutral 
	! !

!HighligtherToolStateWriting methodsFor: 'handling' stamp: 'hlsf 9/11/2024 17:43:50'!
handleRelease: localPosition in: paper
	| finalStrokeGroup |
	finalStrokeGroup := paper endWritingAt: localPosition.
	self commandsManager strokeGroup: finalStrokeGroup in: paper.
	context switchState: HighligtherToolStateNeutral 
	! !

!Command methodsFor: 'command' stamp: 'hlsf 9/10/2024 21:05:57'!
execute
	self subclassResponsibility ! !

!Command methodsFor: 'command' stamp: 'hlsf 9/10/2024 21:06:19'!
unexecute
	self subclassResponsibility ! !

!Command methodsFor: 'accessing' stamp: 'hlsf 9/10/2024 21:05:50'!
domain: aDomain
	domain := aDomain! !

!Command methodsFor: 'initialize-release' stamp: 'hlsf 9/10/2024 21:06:12'!
release
"Let my child do some clean up"! !

!ErasingCommand methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 21:02:30'!
deletedStrokes: aDictionnary
" Read EraserToolStateErasing>>handleMouseAt:in: "
	deletedStrokes := aDictionnary ! !

!ErasingCommand methodsFor: 'command' stamp: 'hlsf 9/11/2024 21:06:46'!
execute
	deletedStrokes keysAndValuesDo: [:aStrokeGroup :aCollection |
		aCollection == aStrokeGroup 
			ifTrue:  [domain removeMorph: aStrokeGroup ]
			ifFalse: [ aStrokeGroup removeAllMorphsIn: aCollection ]
		]! !

!ErasingCommand methodsFor: 'command' stamp: 'hlsf 9/11/2024 21:06:06'!
unexecute
	deletedStrokes keysAndValuesDo: [:aStrokeGroup :aCollection |
		aCollection == aStrokeGroup 
			ifTrue:  [domain addMorph: aStrokeGroup ]
			ifFalse: [ aStrokeGroup addAllMorphs: aCollection ]
		]! !

!ErasingCommand class methodsFor: 'instance creation' stamp: 'hlsf 9/11/2024 20:57:11'!
deletedStrokes: aDictionayOfStroke in: aPage
	^ self basicNew
		domain: aPage;
		deletedStrokes: aDictionayOfStroke ;
		initialize
		! !

!WritingCommand methodsFor: 'accessing' stamp: 'hlsf 9/11/2024 17:43:08'!
strokeGroup: aStrokeGroup
	strokeGroup := 	aStrokeGroup ! !

!WritingCommand methodsFor: 'command' stamp: 'hlsf 9/11/2024 17:34:07'!
execute
	domain addMorph: strokeGroup ! !

!WritingCommand methodsFor: 'command' stamp: 'hlsf 9/11/2024 17:34:15'!
unexecute
	domain removeMorph: strokeGroup ! !

!WritingCommand class methodsFor: 'instance creation' stamp: 'hlsf 9/11/2024 17:43:50'!
strokeGroup: aStrokeGroup in: aPaper
	^ self basicNew
		domain: aPaper;
		strokeGroup: aStrokeGroup;
		initialize! !

!CommandManager methodsFor: 'initialize-release' stamp: 'hlsf 9/10/2024 21:03:49'!
initialize
	stack := CommandStack new! !

!CommandManager methodsFor: 'initialize-release' stamp: 'hlsf 9/10/2024 21:04:03'!
release
	stack contents do: [:c | c release].! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 9/11/2024 20:56:14'!
deletedStrokes: aDictionayOfStroke in: aPage
" Read EraserToolStateErasing>>handleMouseAt:in: "
	stack nextPut: (ErasingCommand deletedStrokes: aDictionayOfStroke in: aPage)! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 9/11/2024 17:29:44'!
redo
	| command |
	command := stack next.
	command ifNotNil:	 [command execute]! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 9/11/2024 17:43:50'!
strokeGroup: aStrokeGroup in: aPage
	stack nextPut: (WritingCommand strokeGroup: aStrokeGroup in: aPage)! !

!CommandManager methodsFor: 'commands' stamp: 'hlsf 9/11/2024 17:29:56'!
undo
	| command |
	command := stack previous.
	command ifNotNil: [command unexecute]! !

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

!Bezier2Morph methodsFor: 'printing' stamp: 'hlsf 5/12/2024 18:21:56'!
printOn: str
	super printOn: str.
	str nextPutAll: ' p1: ';
		nextPutAll: (p1 printStringFractionDigits: 1);
		nextPutAll: ' p2: ';
		nextPutAll: (p2 printStringFractionDigits: 1);		
		nextPutAll: ' c: ';
		nextPutAll: (c1 ifNotNil: [c1 printStringFractionDigits: 1] ifNil: ['nil'])
	
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

!Bezier3Morph methodsFor: 'printing' stamp: 'hlsf 5/12/2024 18:21:42'!
printOn: str
	super printOn: str.
	str
		nextPutAll: ' c2: ';
		nextPutAll: (c2 ifNotNil: [c2 printStringFractionDigits: 1] ifNil: ['nil'])
	
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

!LineStrokeMorph methodsFor: 'drawing' stamp: 'hlsf 9/7/2024 12:01:21'!
drawOn: canvas
	| samples lastIndex |
	owner class ~= PaperMorph ifTrue: [^ self].
	samples := owner samples.
	lastIndex := owner sampleIndex - 1.
	canvas strokeWidth: owner writingTool width color: owner writingTool color do: [
		lastIndex ifNotZero: [
			canvas moveTo: owner samples first.
			2 to: lastIndex do: [:i | canvas lineTo: ( samples at: i )].
			owner lastMousePosition ifNotNil: [:postiion | canvas lineTo: postiion 				] 	
		]
	]! !

!StrokeGroupMorph methodsFor: 'drawing' stamp: 'hlsf 9/8/2024 16:14:52'!
drawOn: canvas
" I draw manually my submorphs "
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

!StrokeGroupMorph methodsFor: 'testing' stamp: 'hlsf 5/12/2024 18:11:04'!
is: aSymbol
	^ aSymbol == #StrokeGroupMorph or: [ super is: aSymbol ]! !

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

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 18:22:24'!
lastStroke
	^ submorphs ifEmpty: [nil] ifNotEmpty: [self firstSubmorph]! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 15:56:04'!
width: aNumber
	submorphs do: [:each | each width: aNumber ].
	self redrawNeeded ! !

!StrokeGroupMorph methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:01:58'!
writingTool
	^ owner writingTool ! !

!StrokeGroupMorph methodsFor: 'strokes add/remove' stamp: 'hlsf 9/8/2024 16:14:23'!
addStroke: aStroke
	self addMorph: aStroke.
	aStroke visible: false! !

!StrokeGroupMorph methodsFor: 'strokes add/remove' stamp: 'hlsf 9/11/2024 17:46:39'!
removeStrokesAt: positionInWorld
" Remove the strokes under this positionInWorld "
	| toDelete |
	toDelete := submorphs select: [:each | 		each isCloserThan: self writingTool width toPixel: positionInWorld].
	self removeAllMorphsIn: toDelete.
	^ toDelete! !

!StrokeGroupMorph methodsFor: 'geometry services' stamp: 'hlsf 9/8/2024 16:35:02'!
isCloserThan: distance toPixel: positionInWorld
	^ submorphs anySatisfy: [:each | 
		each bitMask.
		each isCloserThan: distance toPixel: positionInWorld ]! !

!StrokeGroupMorph methodsFor: 'cleanup' stamp: 'hlsf 9/8/2024 19:03:55'!
deleteBitMasks
	submorphs do: [:each| each removeProperty: #bitMask]! !

!PageMorph methodsFor: 'geometry' stamp: 'hlsf 9/12/2024 12:03:06'!
morphExtent: anExtent
	super morphExtent: anExtent.
	background ifNotNil: [background morphExtent: anExtent ].
	paper morphExtent: anExtent ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 16:13:35'!
paper
	^ paper ! !

!PageMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 16:00:16'!
presenter: documentPresenter
	presenter := documentPresenter ! !

!PageMorph methodsFor: 'initialization' stamp: 'hlsf 9/12/2024 12:08:01'!
initialize
	super initialize.
	background := BackgroundMorph new.
	paper := PaperMorph newOn: presenter.
	paper stroker: StrokerBezier2XP.
	self addMorphBack: background position: 0@0;
		addMorphFront: paper position: 0@0.
	self morphExtent: (16@9) * 50! !

!PageMorph methodsFor: 'geometry testing' stamp: 'hlsf 9/5/2024 10:19:33'!
clipsSubmorphs
	^ true! !

!PageMorph methodsFor: 'drawing' stamp: 'hlsf 9/12/2024 11:20:55'!
drawOn: canvas
! !

!PageMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/5/2024 15:59:56'!
newOn: documentPresenter
	^ self basicNew
		presenter: documentPresenter ;
		initialize;
		yourself! !

!BackgroundMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 9/12/2024 12:04:49'!
defaultColor
	^ Color white! !

!BackgroundMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 9/12/2024 12:13:28'!
drawOn: canvas 
	| y  step |
	super drawOn: canvas.
	step := 50.
	y := step.
	canvas strokeWidth: (0.8 / owner scale min: 0.8) color: `Color lightGray` do: [
		[ y < extent y ] whileTrue: [
			canvas moveTo: 0 @ y;
				lineTo: extent x @ y.
			y := y + step 			]		
		]! !

!BackgroundMorph methodsFor: 'as yet unclassified' stamp: 'hlsf 9/12/2024 12:10:57'!
requiresVectorCanvas
	^ true! !

!PageContainer methodsFor: 'geometry testing' stamp: 'hlsf 9/8/2024 18:41:55'!
clipsSubmorphs
	^ true! !

!PageContainer methodsFor: 'initialization' stamp: 'hlsf 9/8/2024 18:25:58'!
defaultColor
	^ Color lightGray muchLighter! !

!PageContainer class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/8/2024 18:24:18'!
for: aPage
	^ self new
		addMorphFront: aPage position: 0@0! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 9/4/2024 21:49:51'!
currentPage
	^ page! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 8/31/2024 10:34:28'!
presenter
	^ presenter ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 9/2/2024 21:23:41'!
presenter: aPresenter
	presenter := aPresenter ! !

!DocumentView methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 15:09:59'!
tool
	^ presenter tool! !

!DocumentView methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 16:02:58'!
initialize
	super initialize.
	self beColumn.
	page := PageMorph newOn: presenter! !

!DocumentView methodsFor: 'ui' stamp: 'hlsf 9/5/2024 09:52:14'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DocumentView methodsFor: 'ui' stamp: 'hlsf 9/5/2024 09:52:25'!
defaultBorderColor
	^ Theme current transcript! !

!DocumentView methodsFor: 'ui' stamp: 'hlsf 9/5/2024 09:52:31'!
defaultColor
	^Theme current paneBackgroundFrom: self defaultBorderColor ! !

!DocumentView methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:36:19'!
mouseButton1Down: event localPosition: localPosition
	self tool handlePress: localPosition in: self currentPage ! !

!DocumentView methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:11:08'!
mouseButton1Up: event localPosition: localPosition
	self tool handleRelease: localPosition in: self currentPage ! !

!DocumentView methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:36:08'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [		^ self ].
	self tool handleMouseAt: localPosition in: self currentPage ! !

!DocumentView methodsFor: 'event handling testing' stamp: 'hlsf 9/5/2024 15:35:04'!
handlesMouseDown: evnt
" We handle event at this level only with the Select tool "
	^ presenter isTool: #select! !

!DocumentView class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/5/2024 16:02:50'!
presenter: aPresenter
	^ self basicNew 
		presenter: aPresenter;
		initialize ;
		yourself! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 8/18/2024 16:43:08'!
lastMousePosition
"In local coordinate "
	^ lastMousePosition ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 17:43:44'!
lastStroke
" Return the last strokes, if any, added to the last stroke group "
	^ self lastStrokeGroup lastStroke 

! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 4/8/2023 11:40:01'!
lastStrokeGroup
" Return the last stroke group morph, including the one during a hand stroke event (penDown, penUp) "
	^ self firstSubmorph ! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 16:01:24'!
presenter: documentPresenter
	presenter := documentPresenter ! !

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

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 16:01:33'!
tool
	^ presenter tool! !

!PaperMorph methodsFor: 'accessing' stamp: 'hlsf 9/7/2024 12:00:44'!
writingTool
	^ presenter writingTool ! !

!PaperMorph methodsFor: 'event handling testing' stamp: 'hlsf 9/5/2024 15:38:49'!
handlesMouseDown: event
	^ true! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:36:49'!
mouseButton1Down: event localPosition: localPosition
	self tool handlePress: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:38:15'!
mouseButton1Up: event localPosition: localPosition
	self tool handleRelease: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 9/5/2024 15:38:29'!
mouseMove: event localPosition: localPosition
	event mouseButton1Pressed not ifTrue: [		^ self ].
	self tool handleMouseAt: localPosition in: self! !

!PaperMorph methodsFor: 'events' stamp: 'hlsf 9/7/2024 12:00:44'!
mouseMove2: event localPosition: endPosition
" With mouse trail  enabled "
	| needUpdate |
	event mouseButton1Pressed not ifTrue: [^ self ].
	needUpdate := false.
	event trail do: [:aPosition | | localPosition |
		localPosition := self internalize: aPosition.
		((samples at: sampleIndex -1) squaredDistanceTo: localPosition) >= self writingTool threshold 		ifTrue: [	
			samples at: sampleIndex put: localPosition.
			sampleIndex := sampleIndex + 1.
			sampleIndex > self samplesQty			ifTrue: [
				needUpdate := true.
				self lastStrokeGroup 
					addMorph: stroker newStroke.
				self resetSamplingTo: localPosition] 		] ].
	needUpdate ifTrue: [self redrawNeeded]! !

!PaperMorph methodsFor: 'geometry testing' stamp: 'hlsf 3/23/2023 21:23:17'!
requiresVectorCanvas
	^ true! !

!PaperMorph methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 10:10:32'!
defaultBorderWidth
	^ 0! !

!PaperMorph methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 10:10:23'!
defaultColor
	^ `Color transparent`! !

!PaperMorph methodsFor: 'initialization' stamp: 'hlsf 9/7/2024 11:38:08'!
initialize
	super initialize.
	self 
		addMorph: (lineStrokes := LineStrokeMorph new)! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:48:57'!
showControls
	^ self valueOfProperty: #showControls ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:48:31'!
showPoints
	^ self valueOfProperty: #showPoints ifAbsent: [false]! !

!PaperMorph methodsFor: 'testing' stamp: 'hlsf 3/27/2023 21:47:26'!
showTangents
	^ self valueOfProperty: #showTangents ifAbsent: [false]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
addStandardHaloMenuItemsTo: aCustomMenu hand: aHandMorph
	aCustomMenu 
		add: 'sampling threshold' action: #setThreshold;
		add: 'width' action: #setWidth;
		addUpdating: #adjustWidthString target: self writingTool action: #adjustWidthOnOff;
		add: 'color' action: #setColor;		
		addUpdating: #pointsString action: #pointsOnOff;
		addUpdating: #controlsString action: #controlsOnOff;
		addUpdating: #tangentsString action: #tangentsOnOff;
		add: 'clear' action: #removeStrokes! !

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

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 5/12/2024 18:11:09'!
removeStrokes
	self removeAllMorphsIn: (submorphs select: [:aMorph | aMorph is: #StrokeGroupMorph])! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
setColor
	self 
		request: 'Color (i.e. ''Color red'')'
		initialAnswer: self writingTool color asString
		verifying: [:aString | 		[Compiler evaluate: aString. true] on: Error do: [false] ]
		do: [:aString | | aColor |
			aColor := Compiler evaluate: aString.
			(aColor isKindOf: Color) ifTrue: [self writingTool color: aColor ] ]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
setThreshold
	self 
		request: 'Minimum screen distance between two consecutive samples'
		initialAnswer: self writingTool threshold sqrt asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | integer |
			integer := aString asNumber.
			(integer notNil and: [integer >=0]) ifTrue: [
				self writingTool threshold: integer squared] 
			]! !

!PaperMorph methodsFor: 'menus' stamp: 'hlsf 9/7/2024 12:00:44'!
setWidth
	self 
		request: 'Pen width in pixel, float in ]0 ; 20]'
		initialAnswer: self writingTool width asString
		verifying: [:aString | aString asNumber notNil ]
		do: [:aString | | theWidth |
			theWidth := aString asNumber.
			(theWidth notNil and: [theWidth >0 and: [theWidth <= 20] ]) 	ifTrue: [
				self writingTool width: theWidth ] ]! !

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

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 9/8/2024 16:47:08'!
strokeGroups
	^ submorphs select: [:each | each is: #StrokeGroupMorph ]! !

!PaperMorph methodsFor: 'strokes' stamp: 'hlsf 9/9/2024 20:59:02'!
strokeGroupsAt: localPosition
	| positionInWorld |
	positionInWorld := self externalizeToWorld: localPosition.
	^ submorphs select: [:each |
		(each is: #StrokeGroupMorph) 
		and: [	each isCloserThan: self writingTool width toPixel: positionInWorld ]
	]! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 9/11/2024 16:38:46'!
endWritingAt: localPosition
	samples at: sampleIndex put: localPosition.
	sampleIndex := sampleIndex + 1.
	"In case there is not enought sample, clone the last one"
	sampleIndex to: self samplesQty do: [	:i |				samples at: i put: localPosition].
	self lastStrokeGroup 
		addStroke: stroker newStroke;
		redrawNeeded.
	self resetSamplingTo: nil.
	lastMousePosition := nil.
	lineStrokes redrawNeeded.
	^ self lastStrokeGroup 
! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 9/5/2024 17:29:38'!
startWritingAt: localPosition
" Initilize the user writing "
	self resetSamplingTo: localPosition.
	self addMorph: StrokeGroupMorph new.! !

!PaperMorph methodsFor: 'writing' stamp: 'hlsf 9/5/2024 18:01:48'!
writingAt: localPosition
" the user is still writing "
	((samples at: sampleIndex -1) squaredDistanceTo: localPosition) > 9 		ifTrue: [	
		lastMousePosition := localPosition.
		samples at: sampleIndex put: localPosition.
		sampleIndex := sampleIndex + 1.
		sampleIndex > self samplesQty ifTrue: [
			(self lastStroke isNil or: [stroker isSamplesValid])
				ifTrue: [" First stroke of the group or valid samples "
					self lastStrokeGroup 
						addStroke: stroker newStroke.
					self	resetSamplingTo: localPosition.
					self redrawNeeded	]
				ifFalse: ["Reconnect to previous stroke as our first sample..."
					sampleIndex := 2. "first samples is already connected, just move the index "
					"... and skip the second sample and keep the following ones"
					self samplesQty - 2 timesRepeat: [
						samples 		at: sampleIndex 			put: (samples at: sampleIndex + 1).
						sampleIndex := sampleIndex +1 ] ]	 	] ]	.
		lineStrokes redrawNeeded ! !

!PaperMorph class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/5/2024 15:58:40'!
newOn: documentPresenter
	^ self new
		presenter: documentPresenter;
		yourself! !

!Collection methodsFor: '*Document-View' stamp: 'hlsf 3/31/2023 22:22:27'!
covariance: y
	^ (self * y) sum / self size - (self mean * y mean)! !

!Collection methodsFor: '*Document-View' stamp: 'hlsf 4/1/2023 15:28:39'!
regression: y
"Linear regression (least-squares), return a, b of y=ax+b"
	| a b v |
	v := self variance.
	v isZero ifTrue: [^nil]. "points are vertically aligned"
	a := (self covariance: y) / v.
	b := y mean - (a * self mean).
	^ Array with: a with: b! !

!Collection methodsFor: '*Document-View' stamp: 'hlsf 3/31/2023 22:01:21'!
variance
	^ self squared sum / self size - self mean squared! !
