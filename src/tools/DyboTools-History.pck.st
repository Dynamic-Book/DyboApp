'From Cuis7.5 [latest update: #7621] on 1 October 2025 at 10:32:15 pm'!
'Description '!
!provides: 'DyboTools-History' 1 9!
!requires: 'UI-Widgets' 1 61 nil!
SystemOrganization addCategory: #'DyboTools-History'!


!classDefinition: #Timeline category: #'DyboTools-History'!
Object subclass: #Timeline
	instanceVariableNames: 'model view'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'Timeline class' category: #'DyboTools-History'!
Timeline class
	instanceVariableNames: ''!

!classDefinition: #TimelineEntry category: #'DyboTools-History'!
Object subclass: #TimelineEntry
	instanceVariableNames: 'date description position image imageUrl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineEntry class' category: #'DyboTools-History'!
TimelineEntry class
	instanceVariableNames: ''!

!classDefinition: #TimelineGraduation category: #'DyboTools-History'!
Object subclass: #TimelineGraduation
	instanceVariableNames: 'interval'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineGraduation class' category: #'DyboTools-History'!
TimelineGraduation class
	instanceVariableNames: ''!

!classDefinition: #TimelineModel category: #'DyboTools-History'!
ActiveModel subclass: #TimelineModel
	instanceVariableNames: 'title entries graduation subGraduation ppd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineModel class' category: #'DyboTools-History'!
TimelineModel class
	instanceVariableNames: ''!

!classDefinition: #TimelineConnector category: #'DyboTools-History'!
PlacedMorph subclass: #TimelineConnector
	instanceVariableNames: 'entryView'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineConnector class' category: #'DyboTools-History'!
TimelineConnector class
	instanceVariableNames: ''!

!classDefinition: #TimelineCanvas category: #'DyboTools-History'!
BoxMorph subclass: #TimelineCanvas
	instanceVariableNames: 'model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineCanvas class' category: #'DyboTools-History'!
TimelineCanvas class
	instanceVariableNames: ''!

!classDefinition: #TimelineContainer category: #'DyboTools-History'!
ColoredBoxMorph subclass: #TimelineContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineContainer class' category: #'DyboTools-History'!
TimelineContainer class
	instanceVariableNames: ''!

!classDefinition: #TimelineView category: #'DyboTools-History'!
FormLayoutMorph subclass: #TimelineView
	instanceVariableNames: 'presenter canvas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineView class' category: #'DyboTools-History'!
TimelineView class
	instanceVariableNames: ''!

!classDefinition: #TimelineEntryView category: #'DyboTools-History'!
LinearLayoutMorph subclass: #TimelineEntryView
	instanceVariableNames: 'model date description position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineEntryView class' category: #'DyboTools-History'!
TimelineEntryView class
	instanceVariableNames: ''!


!Timeline commentStamp: '<historical>' prior: 0!
The presenter of the Timeline to handle the controllers and associated callbacks.!

!TimelineEntry commentStamp: '<historical>' prior: 0!
A model of an entry in the timeline!

!TimelineGraduation commentStamp: '<historical>' prior: 0!
A graduation on the timeline. 
- interval: a duration, the time distance between two consecutive tick on the timeline!

!TimelineModel commentStamp: '<historical>' prior: 0!
- entries, a collection of models (timeline entry)!

!TimelineCanvas commentStamp: '<historical>' prior: 0!
The place where is effectively drawn the timeline. 
Its extent covers the whole area of the timeline. Therefore it may be larger than its owner or the screen. It is scrolled or zoomed appropriately with two wheel handles.
 - model, a TimelineModel!

!TimelineView commentStamp: '<historical>' prior: 0!
Timeline view, it comes with:
- two wheels to move and to zoom the timeline
- a representation of the timeline!

!TimelineEntryView commentStamp: '<historical>' prior: 0!
A view of a timeline entry.
- model, a timeline entry
- date, a label morph
- description, a text paragraph morph
- position, a symbol (#above #below), indicating my positionning to the time line!

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 10/1/2025 16:32:07'!
moveOXAction: increment
	| canvas |
	canvas := view canvas.
	canvas morphPosition: (canvas morphPosition + (increment @ 0) 
		min: canvas morphExtent x @ 0 
		max: canvas morphExtent x negated @ 0)! !

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 10/1/2025 22:29:20'!
zoomAction: increment
	self zoomAction: increment at: view canvas owner fullBoundsInOwner center! !

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 10/1/2025 22:27:37'!
zoomAction: increment at: referencePoint
	| canvas center |
	canvas := view canvas.
	center := canvas internalize: referencePoint.
	canvas scale: (canvas scale - increment min: 2 max: 0.1).
	center := canvas externalize: center.
	canvas morphPosition: canvas morphPosition - center + referencePoint .! !

!Timeline methodsFor: 'DSL' stamp: 'hlsf 9/28/2025 13:33:08'!
addEvent: aText on: aStringDate
	^ self addEvent: aText on: aStringDate image: nil! !

!Timeline methodsFor: 'DSL' stamp: 'hlsf 9/28/2025 13:32:46'!
addEvent: aText on: aStringDate image: anUrl
" aStringDate, preferably expressed as YYYY-MM-DD YYYY.MM.DD YYYY/MM/DD   "
	| entry |
	entry := TimelineEntry new
		description: aText;
		imageUrl: anUrl;
		date: aStringDate asDate.
	^ model addEntry: entry
	! !

!Timeline methodsFor: 'initialization' stamp: 'hlsf 9/28/2025 11:41:09'!
initialize
	super initialize.
	model := TimelineModel new.
	view := TimelineView presenter: self.! !

!Timeline methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 11:50:00'!
model
	^ model! !

!Timeline methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:05:29'!
view
	^ view! !

!Timeline class methodsFor: 'instance creation' stamp: 'hlsf 9/28/2025 11:52:03'!
title: aText
	| timeline |
	timeline := self new.
	timeline model title: aText.
	^ timeline ! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:56:06'!
date
	^ date! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:56:11'!
date: anObject
	date := anObject! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:58:10'!
description
	"Answer the value of description"

	^ description! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:58:19'!
description: aText
	description := aText ! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 13:29:13'!
image
	^ image! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 13:28:59'!
imageUrl: anUrl
" Fetch the image at the given url "

	imageUrl := anUrl ! !

!TimelineEntry methodsFor: 'printing' stamp: 'hlsf 9/28/2025 15:58:52'!
printOn: stream
	stream nextPutAll: (date printFormat: #(3 2 1 $. 1 1 2));
		nextPut: Character space;
		nextPutAll: (description truncateWithElipsisTo: 20)! !

!TimelineGraduation methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:15:31'!
interval
	^ interval! !

!TimelineGraduation methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:15:47'!
interval: aDuration
	interval := aDuration ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 14:48:01'!
abscissaAt: aDate
"	An entry is positionned on the timeline according to its date, convert the date to a pixel position 
	Zero pixel is at left "
	^ ((aDate - entries first date) days * self ppd + TimelineEntryView extent x / 2) rounded! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/30/2025 20:04:35'!
addEntry: aTimelineEntry
	| newEntry |
	ppd := nil.
	newEntry := entries add: aTimelineEntry.
	self updateGraduation ;
		updateSubGraduation.
	self triggerEvent: #addedEntry.
	^ newEntry ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 16:21:25'!
canvasWidth
	^ (self ppd * self span days) rounded + TimelineEntryView extent x ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 14:22:53'!
entries
	^ entries! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:20:06'!
graduation
	^ graduation ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:20:12'!
subGraduation
	^ subGraduation ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 11:48:45'!
title: aText
	title := aText! !

!TimelineModel methodsFor: 'initialization' stamp: 'hlsf 9/28/2025 16:16:32'!
initialize
	super initialize.
	entries := SortedCollection sortBlock: [:entryA :entryB | entryA date < entryB date].
	graduation := TimelineGraduation new interval: 1 millenniums.
	subGraduation := TimelineGraduation new interval: 100 years! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/1/2025 22:03:07'!
ppd
" 	pixels per days 
	The density of timeline depends on entry view with and time interval"
	| timeInteval |
	timeInteval := self timeInterval.
	timeInteval isZero ifTrue: [timeInteval := 1 months].
	^ ppd ifNil: [ppd := (TimelineEntryView extent x + 20 / timeInteval days) asFloat]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/1/2025 16:25:15'!
span
" 	We want to know the span of the events (distance between oldest and newer events) 
	to set the graduation approriately "
	^ entries 
		ifEmpty:  [Duration zero]
		ifNotEmpty: [entries last date - entries first date]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 9/28/2025 16:02:59'!
timeInterval
"	We want to know the shortest duration between two events,
	so we pick up the appropriate sub graduation "
	| interval |
	interval := self span.
	1 to: entries size - 1 do: [:i | |dist |
		dist := (entries at: i + 1) date - (entries at: i) date.
		dist < interval ifTrue: [interval := dist] ].
	^ interval ! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 9/28/2025 16:45:08'!
updateGraduation
	| span |
	span := self span.
	span > 10 millenniums ifTrue: [^ graduation interval: 10 millenniums].
	(span between: 2 millenniums and: 10 millenniums) ifTrue: [^ graduation interval: 1 millenniums].
	(span between: 200 years and: 2 millenniums) ifTrue: [^ graduation interval: 100 years].
	(span between: Duration zero and: 200 years) ifTrue: [^ graduation interval: 10 years]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/1/2025 16:00:24'!
updateSubGraduation
	| timeInterval |
	timeInterval := self timeInterval.
	timeInterval <= 1 years ifTrue: [^ subGraduation interval: 1 months].
	(timeInterval between: 1 years and: 20 years) ifTrue: [^ subGraduation interval: 1 years ].
	(timeInterval between: 20 years and: 100 years) ifTrue: [^ subGraduation interval: 10 years].
	(timeInterval between: 100 years and: 1 millenniums ) ifTrue: [^ subGraduation interval: 100 years].
	(timeInterval between: 1 millenniums and: 10 millenniums ) ifTrue: [^ subGraduation interval: 2 millenniums ].! !

!TimelineConnector methodsFor: 'as yet unclassified' stamp: 'hlsf 10/1/2025 14:59:06'!
entryView: aView
	entryView := aView ! !

!TimelineConnector methodsFor: 'drawing' stamp: 'hlsf 10/1/2025 21:53:04'!
drawOn: canvas
	| toLine anchor |
	anchor := entryView externalize:  entryView anchor.
	toLine := anchor +
		(entryView isAboveTimeline ifTrue: [0@TimelineConnector height] ifFalse: [(0@TimelineConnector height) negated]).
	canvas line: toLine to: anchor width: entryView borderWidth color: entryView borderColor.
	canvas fillColor: entryView borderColor do: [canvas ellipseCenter: toLine radius: 5@5]! !

!TimelineConnector class methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 16:17:55'!
height
	^ 20! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 14:11:46'!
model: timelineModel
	model := timelineModel.
	model when: #addedEntry send: #updateCanvas to: self! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 17:44:44'!
positions
	^ `Array with: #above with: #below`! !

!TimelineCanvas methodsFor: 'geometry' stamp: 'hlsf 10/1/2025 16:21:49'!
setExtent
	self morphExtent: model canvasWidth @ TimelineCanvas height! !

!TimelineCanvas methodsFor: 'updating' stamp: 'hlsf 10/1/2025 21:29:05'!
updateCanvas
	| views view |
	self setExtent.
	self removeAllMorphs.
	views := OrderedCollection new.
	model entries withIndexDo: [:entry :i | 
		view := TimelineEntryView on: entry.
		" We alternate the position #above #below the timeline "
		view position: (self positions atWrap: i).
		view abscissa: (model abscissaAt: entry date) - (TimelineEntryView extent x // 2).
		views add: view.
		view := TimelineConnector new entryView: view; yourself.
		
		views add: view].
	self addAllMorphs: views! !

!TimelineCanvas methodsFor: 'drawing' stamp: 'hlsf 10/1/2025 15:58:59'!
drawOn: canvas
	canvas line: 0@(extent y // 2) to: extent x @ (extent y // 2) width: 2 color: Color black! !

!TimelineCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/1/2025 18:00:45'!
height
	^ (TimelineEntryView extent y + TimelineConnector height + self verticalMargin) * 2! !

!TimelineCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/1/2025 18:00:36'!
verticalMargin
" top and bottom margin "
	^ 50! !

!TimelineContainer methodsFor: 'geometry testing' stamp: 'hlsf 9/29/2025 21:35:40'!
clipsSubmorphs
	^ true ! !

!TimelineContainer methodsFor: 'initialization' stamp: 'hlsf 9/29/2025 21:35:57'!
defaultColor
	^ Color white! !

!TimelineContainer class methodsFor: 'instance creation' stamp: 'hlsf 9/29/2025 21:48:29'!
for: aTimelineCanvas
	^ self new
		addMorph: aTimelineCanvas position: 0@0! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 9/28/2025 11:52:57'!
initialize
	super initialize.
	self installView ! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/1/2025 16:22:59'!
installView
	canvas := TimelineCanvas new model: self model.
	canvas setExtent.
	self addMorph: (TimelineContainer for: canvas )
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 0@0 offset: 0@0 
			brEdgesWeight: 1@1 offset: -30@-30).
	self	addMorph: self zoomWheel
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 1@0.5 offset: -30@-60
			brEdgesWeight: 1@0.5 offset: 0@60).
	self addMorph: self horizontalWheel 
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 0.5@1 offset: -60@-30 
			brEdgesWeight: 0.5 @1 offset: 60@0)! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 16:28:34'!
canvas
	^ canvas! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/29/2025 21:43:41'!
model
	^ presenter model! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/27/2025 12:56:37'!
presenter: aPresenter
	presenter := aPresenter ! !

!TimelineView methodsFor: 'widget' stamp: 'hlsf 9/27/2025 13:03:35'!
horizontalWheel 
	^ (WheelMorph target: presenter actionSelector: #moveOXAction:)
		beHorizontal; 
		factor: 1; 
		setBalloonText: 'Scroll the time line to the left or the right.' translated;
		borderWidth: 3;
		color: Color orange;
		borderColor: Color black;
		yourself! !

!TimelineView methodsFor: 'widget' stamp: 'hlsf 9/27/2025 13:01:39'!
zoomWheel
	^ (WheelMorph target: presenter actionSelector: #zoomAction:)
		beVertical ;		
		factor: 0.1 ;
		setBalloonText: 'Zoom in or out the timeline' translated;
		borderWidth: 3;
		color: Color gray;
		borderColor: Color black;
		yourself! !

!TimelineView class methodsFor: 'instance creation' stamp: 'hlsf 9/27/2025 12:56:16'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!TimelineEntryView methodsFor: 'initialization' stamp: 'hlsf 10/1/2025 21:55:13'!
defaultBorderWidth 
	^ 2! !

!TimelineEntryView methodsFor: 'initialization' stamp: 'hlsf 10/1/2025 21:54:50'!
defaultColor
	^ Color white! !

!TimelineEntryView methodsFor: 'initialization' stamp: 'hlsf 10/1/2025 22:18:18'!
initialize
	super initialize.
	self beColumn.
	date := LabelMorph contents: (model date printFormat: #(1 2 3 $/ 1 1 1))  fontSize: 12 emphasis: 1.
	description := TextParagraphMorph contents: (model description italic pointSize: 10):: 
		color: Color yellow muchLighter ;
		setHeightOnContent ;
		borderWidth: 0.
	self addMorph:  date layoutSpec: LayoutSpec keepMorphExtent ;
		addMorphUseAll: (PluggableScrollPane new 
			layoutSpec: LayoutSpec useAll;
			color: Color yellow muchLighter;
			scroller: description);
		morphExtent: TimelineEntryView extent! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 21:28:18'!
abscissa: x
" the view is computed from its date (ox) and its position relative to the timeline (ox) "
	self morphPosition: x @ self ordinate ! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 17:25:32'!
anchor
	^ self isAboveTimeline 
		ifTrue: [self localBounds bottomCenter]
		ifFalse: [self localBounds topCenter] " #below timeline" 
	! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 9/30/2025 20:03:08'!
model: timelineEntry
	model := timelineEntry ! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 21:26:49'!
ordinate
	" its is constrained by its position relatively to the timeline "
	^ self isAboveTimeline 
		ifTrue: [TimelineCanvas verticalMargin]
		ifFalse: [TimelineCanvas verticalMargin + TimelineEntryView extent y + (TimelineConnector height * 2)]
		! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 17:46:10'!
position: aSymbol
	position := aSymbol ! !

!TimelineEntryView methodsFor: 'geometry' stamp: 'hlsf 10/1/2025 14:45:13'!
morphPosition: aPoint 
	location withTranslation: aPoint.! !

!TimelineEntryView methodsFor: 'testing' stamp: 'hlsf 10/1/2025 17:46:16'!
isAboveTimeline
	^ position == #above! !

!TimelineEntryView class methodsFor: 'instance creation' stamp: 'hlsf 9/30/2025 20:02:53'!
on: timelineEntry
	^ self basicNew
		model: timelineEntry;
		initialize! !

!TimelineEntryView class methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 16:36:09'!
extent
" expressed in pixels "
	^ 150@200! !

!Duration methodsFor: '*DyboTools-History' stamp: 'hlsf 9/28/2025 15:46:15'!
millenniums
	^ (self days / 365.25 / 1000) rounded! !

!Duration methodsFor: '*DyboTools-History' stamp: 'hlsf 9/28/2025 15:46:52'!
years
	" Just to get an approximation , to the closest "
	^ (self days / 365.25) rounded! !

!Number methodsFor: '*DyboTools-History' stamp: 'hlsf 9/28/2025 15:39:49'!
millenniums
" An approximation "
	^ (self * 1000) years! !

!Number methodsFor: '*DyboTools-History' stamp: 'hlsf 9/28/2025 16:35:51'!
months
" An approximation "
	^ Duration days: self * 30.4375! !

!Number methodsFor: '*DyboTools-History' stamp: 'hlsf 9/28/2025 15:38:42'!
years
" An approximation "
	^ Duration days: self * 365.25! !
