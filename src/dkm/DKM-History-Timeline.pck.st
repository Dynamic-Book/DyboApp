'From Cuis7.5 [latest update: #7689] on 16 November 2025 at 7:52:47 pm'!
'Description '!
!provides: 'DKMHistory-Timeline' 1 5!
SystemOrganization addCategory: #'DKM-History-Timeline'!


!classDefinition: #Timeline category: #'DKM-History-Timeline'!
Object subclass: #Timeline
	instanceVariableNames: 'model view'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'Timeline class' category: #'DKM-History-Timeline'!
Timeline class
	instanceVariableNames: ''!

!classDefinition: #TimelineEntry category: #'DKM-History-Timeline'!
Object subclass: #TimelineEntry
	instanceVariableNames: 'date description position image imageUrl'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineEntry class' category: #'DKM-History-Timeline'!
TimelineEntry class
	instanceVariableNames: ''!

!classDefinition: #TimelineGraduation category: #'DKM-History-Timeline'!
Object subclass: #TimelineGraduation
	instanceVariableNames: 'interval'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineGraduation class' category: #'DKM-History-Timeline'!
TimelineGraduation class
	instanceVariableNames: ''!

!classDefinition: #TimelineModel category: #'DKM-History-Timeline'!
ActiveModel subclass: #TimelineModel
	instanceVariableNames: 'title entries graduation subGraduation ppd temporalGaps shrink'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineModel class' category: #'DKM-History-Timeline'!
TimelineModel class
	instanceVariableNames: ''!

!classDefinition: #TimelineConnector category: #'DKM-History-Timeline'!
PlacedMorph subclass: #TimelineConnector
	instanceVariableNames: 'entryView'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineConnector class' category: #'DKM-History-Timeline'!
TimelineConnector class
	instanceVariableNames: ''!

!classDefinition: #TimelineCanvas category: #'DKM-History-Timeline'!
BoxMorph subclass: #TimelineCanvas
	instanceVariableNames: 'presenter prevPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineCanvas class' category: #'DKM-History-Timeline'!
TimelineCanvas class
	instanceVariableNames: ''!

!classDefinition: #TimelineContainer category: #'DKM-History-Timeline'!
ColoredBoxMorph subclass: #TimelineContainer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineContainer class' category: #'DKM-History-Timeline'!
TimelineContainer class
	instanceVariableNames: ''!

!classDefinition: #TimelineView category: #'DKM-History-Timeline'!
FormLayoutMorph subclass: #TimelineView
	instanceVariableNames: 'presenter canvas'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineView class' category: #'DKM-History-Timeline'!
TimelineView class
	instanceVariableNames: ''!

!classDefinition: #TimelineEntryView category: #'DKM-History-Timeline'!
LinearLayoutMorph subclass: #TimelineEntryView
	instanceVariableNames: 'model date description position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DKM-History-Timeline'!
!classDefinition: 'TimelineEntryView class' category: #'DKM-History-Timeline'!
TimelineEntryView class
	instanceVariableNames: ''!


!Timeline commentStamp: '<historical>' prior: 0!
The presenter of the Timeline to handle the controllers and associated callbacks.

(Timeline title: 'History of Book' ::
	addEvent: 'Spain. Angela Ruiz Robles prototyped the first electronic book device with film rolls.China. Gong Xuanyi first known printer with a wood printing device on paper.' on: '480.1.1';
	addEvent: 'Germany. Gutemberg printing press with metal mobile blocks.' on: '1450.1.1';
	addEvent: 'Spain. Angela Ruiz Robles prototyped the first electronic book device with film rolls.' on: '1949.12.7';
	view) openInWorld.
!

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
!

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

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 10/11/2025 17:32:53'!
moveOXAction: increment
	| canvas myIncr |
	canvas := view canvas.
	myIncr := 0.
	increment > 0 
		ifTrue: [ " Move to the right as long as canvas ox zero is lower than container right border (extent x) "
			(canvas externalize: 0@0) x < view container morphExtent x ifTrue: [myIncr := increment ] ]
		ifFalse: [ " Move to the left as long as canvas width on ox is greater thant container left obrder (0) "
			(canvas externalize: model canvasWidth@0) x > 0 ifTrue: [myIncr := increment ] ].
	myIncr isZero ifFalse: [
		myIncr := myIncr * model canvasWidth / 4000.
		canvas morphPosition: canvas morphPosition x + myIncr  @ canvas morphPosition y]! !

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 10/2/2025 08:59:48'!
zoomAction: increment
	self zoomAction: increment at: view container fullBoundsInOwner center! !

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

!Timeline methodsFor: 'DSL' stamp: 'hlsf 10/9/2025 10:55:30'!
color: aColor
	view borderColor: aColor! !

!Timeline methodsFor: 'DSL' stamp: 'hlsf 10/9/2025 10:22:33'!
shrink
" Timeline spaning over long periods of time can be shrinked.
  These periods are then represented as dots in the timeline."
	model shrink ! !

!Timeline methodsFor: 'DSL' stamp: 'hlsf 10/9/2025 10:22:43'!
unshrink
" Timeline spaning over long periods of time can be shrinked.
  These periods are then represented as dots in the timeline."
	model unshrink ! !

!Timeline methodsFor: 'DSL' stamp: 'hlsf 10/9/2025 10:57:03'!
width: aColor
	view borderWidth: aColor! !

!Timeline methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 18:05:27'!
initialize
	model := TimelineModel new.
	view := TimelineView presenter: self.
	view morphExtent: 500@300! !

!Timeline methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 11:50:00'!
model
	^ model! !

!Timeline methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:05:29'!
view
	^ view! !

!Timeline class methodsFor: 'DKM' stamp: 'hlsf 10/12/2025 12:54:56'!
codeSample
	^'Timeline title: ''History of Book'' ::
	addEvent: ''China. Gong Xuanyi first known printer with a wood printing device on paper.'' on: ''480.1.1'';
	addEvent: ''Germany. Gutemberg printing press with metal mobile blocks.'' on: ''1450.1.1'';
	addEvent: ''Spain. Angela Ruiz Robles prototyped the first electronic book device with film rolls.'' on: ''1949.12.7'';
	shrink;
	color: Color black;
	view'! !

!Timeline class methodsFor: 'DKM' stamp: 'hlsf 10/12/2025 12:36:21'!
description
	^ 'Design historical timeline with a collection of events. Each event contains a date and a textual description.'  translated! !

!Timeline class methodsFor: 'DKM' stamp: 'hlsf 10/12/2025 18:50:50'!
pragmaMenu
	^ #timelineMenu! !

!Timeline class methodsFor: 'DKM' stamp: 'hlsf 10/12/2025 12:33:14'!
svgIcon
	^'<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512"><!!--!!Font Awesome Free v7.1.0 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2025 Fonticons, Inc.--><path d="M160 169.3c28.3-12.3 48-40.5 48-73.3 0-44.2-35.8-80-80-80S48 51.8 48 96c0 32.8 19.7 61 48 73.3l0 54.7-64 0c-17.7 0-32 14.3-32 32s14.3 32 32 32l224 0 0 54.7c-28.3 12.3-48 40.5-48 73.3 0 44.2 35.8 80 80 80s80-35.8 80-80c0-32.8-19.7-61-48-73.3l0-54.7 224 0c17.7 0 32-14.3 32-32s-14.3-32-32-32l-64 0 0-54.7c28.3-12.3 48-40.5 48-73.3 0-44.2-35.8-80-80-80s-80 35.8-80 80c0 32.8 19.7 61 48 73.3l0 54.7-256 0 0-54.7z"/></svg>'! !

!Timeline class methodsFor: 'DKM' stamp: 'hlsf 10/12/2025 18:56:02'!
timelineMenu: menuBuilder
	<timelineMenu>
	menuBuilder model: menuBuilder model presenter.
	menuBuilder newEntry: #shrink ::
		label: 'Shrink timeline' translated;
		selector: #shrink;
		order: 10.
	menuBuilder newEntry: #unshrink ::
		label: 'Expand timeline' translated;
		selector: #unshrink;
		order: 20! !

!Timeline class methodsFor: 'DKM' stamp: 'hlsf 10/12/2025 12:33:50'!
title
	^ 'Timeline' translated! !

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

!TimelineEntry methodsFor: 'printing' stamp: 'hlsf 10/5/2025 14:24:27'!
balloonText
	^ Text streamContents: [:str | 
		str nextPutAll: date printString bold;
			nextPut: Character lf;
			nextPutAll: description justified italic]! !

!TimelineEntry methodsFor: 'printing' stamp: 'hlsf 10/2/2025 10:14:07'!
printOn: stream
	stream nextPutAll: (date printFormat: #(3 2 1 $. 1 1 2));
		nextPutAll: ' - ';
		nextPutAll: (description truncateWithElipsisTo: 20)! !

!TimelineEntry methodsFor: 'comparing' stamp: 'hlsf 10/5/2025 16:18:37'!
= anEntry
	^ date = anEntry date! !

!TimelineEntry methodsFor: 'comparing' stamp: 'hlsf 10/5/2025 16:18:45'!
hash
	^ date hash! !

!TimelineGraduation methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:15:31'!
interval
	^ interval! !

!TimelineGraduation methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:15:47'!
interval: aDuration
	interval := aDuration ! !

!TimelineGraduation methodsFor: 'as yet unclassified' stamp: 'hlsf 10/2/2025 09:36:49'!
printOn: stream
	stream nextPutAll: 'Tick every '.
	interval years printOn: stream.
	stream nextPutAll: ' years'! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/9/2025 10:17:41'!
addEntry: aTimelineEntry
	| newEntry |
	ppd := nil.
	temporalGaps := nil.
	newEntry := entries add: aTimelineEntry.
	self updateGraduation ;
		updateSubGraduation.
	self triggerEvent: #changedTimeline.
	^ newEntry ! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/1/2025 14:22:53'!
entries
	^ entries! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/5/2025 21:49:10'!
entryAt: aDate
	^ entries detect: [:anEntry | anEntry date = aDate] ifNone: nil! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/5/2025 21:51:47'!
entryIndexAt: aDate
	1 to: entries size do: [:i |
		(entries at: i) date = aDate ifTrue: [^i] ].
	^ 0! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/5/2025 22:23:04'!
entryIndexBefore: aDate
	1 to: entries size -1 do: [:i |
		((entries at: i) date < aDate 
		and: [(entries at: i + 1) date >= aDate ]) ifTrue: [^i] ].
	^ self lastEvent date < aDate
		ifTrue: [entries size] 
		ifFalse: [0]! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/2/2025 10:23:55'!
firstEvent
	^ entries at: 1 ifAbsent: [nil]! !

!TimelineModel methodsFor: 'accessing event' stamp: 'hlsf 10/2/2025 10:39:56'!
lastEvent
	^ entries at: entries size ifAbsent: [nil]! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/7/2025 21:53:59'!
canvasWidth
" Canvas width may depend on timeline shrinked or not  and existing temportal gaps "
	^ entries 
		ifEmpty: [0] 
		ifNotEmpty: [ (self abscissaAt: entries last date) - (self abscissaAt: entries first date) 
			+ TimelineEntryView extent x]
	
	
"	 Former calculus, not taking in consideration shrinked timeline with temporal gaps
	(self ppd * self span days rounded) + TimelineEntryView extent x
"! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:20:06'!
graduation
	^ graduation ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:18:12'!
shrink
	shrink := true.
	temporalGaps := nil.
	self triggerEvent: #changedTimeline! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 16:20:12'!
subGraduation
	^ subGraduation ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/5/2025 22:37:44'!
temporalGaps
" 	Temporal gaps, between two consecutive events, spaning over 
	the temporal threshold could be cut at user preference "
	^ temporalGaps ifNil: [
		temporalGaps := OrderedCollection new.
		entries allButLast withIndexDo: [:each :index |
			(self distance: (entries at: index + 1) date to: each date) > self temporalThreshold 
				ifTrue: [temporalGaps add: index + 1 " we have a gap to go to the (index+1)th entry "] ].
		temporalGaps]
		! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/4/2025 12:59:39'!
title
	^ title! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 11:48:45'!
title: aText
	title := aText! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:18:23'!
unshrink
	shrink := false.
	self triggerEvent: #changedTimeline! !

!TimelineModel methodsFor: 'initialization' stamp: 'hlsf 11/16/2025 15:57:44'!
initialize
	entries := SortedCollection sortBlock: [:entryA :entryB | entryA date < entryB date].
	graduation := TimelineGraduation new interval: 1 millenniums.
	subGraduation := TimelineGraduation new interval: 100 years.
	self shrink! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/5/2025 16:09:26'!
abscissaAt: aDate
"	An entry is positionned on the timeline according to its date, convert the date to a pixel position 
	Zero pixel is at left "
	^ self isShrinked 
		ifTrue: [self shrinkedAbscissaAt: aDate] 
		ifFalse: [self unshrinkedAbscissaAt: aDate]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/5/2025 15:07:50'!
distance: date1 to: date2
" 	We may want to know the pixel distance, 
	in the timeline, between two events
"
	^ (date1 - date2 ) days abs * self ppd
	! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/12/2025 12:17:52'!
ppd
" 	pixels per day
	The density of timeline depends on entry view width and time interval"
	| timeInteval |
	timeInteval := self timeInterval.
	timeInteval isZero ifTrue: [timeInteval := 1 months].
	^ ppd ifNil: [
		ppd := (TimelineEntryView extent x // 2 + 20 / timeInteval days) asFloat min: 0.5 max: 0.001]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/9/2025 10:25:13'!
shrinkedAbscissaAt: aDate
	| index anotherDate | 
	index := self entryIndexAt: aDate.
	index = 1 
		ifTrue: [^ TimelineEntryView extent x // 2]
		ifFalse: [
			index = 0 
				ifTrue: [ "It is not a date of an event, search the one right before "
					index := self entryIndexBefore: aDate.
					index = 0 ifTrue: [^ self unshrinkedAbscissaAt: aDate].
					anotherDate := (entries at: index) date.
					^ (self shrinkedAbscissaAt: (entries at: index) date) 
					+ (self distance: anotherDate to: aDate)]
				ifFalse: [	" it is a date of an event, is it subject to a temporal gap? "
					anotherDate := (entries at: index - 1) date.
					(self temporalGaps includes: index) 
					ifTrue:  [^ (self shrinkedAbscissaAt: anotherDate)
							+ TimelineEntryView extent x]
					ifFalse: [	^ (self shrinkedAbscissaAt: anotherDate)
							+ (self distance: anotherDate to: aDate) ]
					]
				]
			! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/1/2025 16:25:15'!
span
" 	We want to know the span of the events (distance between oldest and newer events) 
	to set the graduation approriately "
	^ entries 
		ifEmpty:  [Duration zero]
		ifNotEmpty: [entries last date - entries first date]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/5/2025 11:06:15'!
temporalThreshold
" 	When two consecutive events are too far from each other (in screen pixel unit), 
	we may decide to cut the timeline with ellipsis to shorten it
"
	^ 1000! !

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

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/5/2025 16:08:46'!
unshrinkedAbscissaAt: aDate
	^ ((aDate - entries first date) days * self ppd + (TimelineEntryView extent x / 2)) rounded! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/9/2025 10:29:49'!
updateGraduation
	| span |
	span := self span.
	span > 10 millenniums ifTrue: [^ graduation interval: 1 millenniums].
	(span between: 2 millenniums and: 10 millenniums) ifTrue: [^ graduation interval: 200 years].
	(span between: 200 years and: 2 millenniums) ifTrue: [^ graduation interval: 100 years].
	(span between: Duration zero and: 200 years) ifTrue: [^ graduation interval: 10 years]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 10/4/2025 17:32:46'!
updateSubGraduation
	| timeInterval |
	timeInterval := self timeInterval.
	timeInterval <= 1 years ifTrue: [^ subGraduation interval: 1 years].
	(timeInterval between: 1 years and: 100 years) ifTrue: [^ subGraduation interval: 10 years ].
	(timeInterval between: 100 years and: 1 millenniums ) ifTrue: [^ subGraduation interval: 50 years].
	(timeInterval between: 1 millenniums and: 10 millenniums ) ifTrue: [^ subGraduation interval: 2 millenniums ].! !

!TimelineModel methodsFor: 'testing' stamp: 'hlsf 10/5/2025 16:12:47'!
isShrinked
" Shrinked timeline skips temporal gap above the temporal threshold "
	^ shrink! !

!TimelineModel methodsFor: 'testing' stamp: 'hlsf 10/7/2025 21:38:02'!
isTemporalGap: eventIndex
	^ self temporalGaps includes: eventIndex ! !

!TimelineConnector methodsFor: 'as yet unclassified' stamp: 'hlsf 10/1/2025 14:59:06'!
entryView: aView
	entryView := aView ! !

!TimelineConnector methodsFor: 'drawing' stamp: 'hlsf 10/3/2025 22:40:37'!
drawOn: canvas
	| toLine anchor color |
	color := entryView borderColor.
	anchor := entryView externalize:  entryView anchor.
	toLine := anchor +
		(entryView isAboveTimeline ifTrue: [0@TimelineConnector height] ifFalse: [(0@TimelineConnector height) negated]).
	canvas line: toLine to: anchor width: entryView borderWidth color: color.
	canvas fillColor: color do: [canvas ellipseCenter: toLine radius: 4@4]! !

!TimelineConnector class methodsFor: 'accessing' stamp: 'hlsf 10/2/2025 22:29:16'!
height
	^ 50! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:58:06'!
color
	^ self mainView borderColor ! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:39:06'!
container
	^ owner! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:58:00'!
entryWidth
	^ self mainView borderWidth ! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:39:14'!
mainView
	^ self container owner! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/4/2025 16:53:13'!
model
	^ presenter model! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 17:44:44'!
positions
	^ `Array with: #above with: #below`! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 10:17:35'!
presenter: aPresenter
	presenter := aPresenter.
	presenter model when: #changedTimeline send: #updateCanvas to: self! !

!TimelineCanvas methodsFor: 'geometry' stamp: 'hlsf 10/4/2025 16:55:39'!
setExtent
	self morphExtent: self model canvasWidth @ TimelineCanvas height! !

!TimelineCanvas methodsFor: 'updating' stamp: 'hlsf 10/9/2025 10:58:39'!
updateCanvas
	| views view |
	self setExtent.
	self removeAllMorphs.
	views := OrderedCollection new.
	self model entries withIndexDo: [:entry :i | 
		view := TimelineEntryView on: entry.
		" We alternate the position #above #below the timeline "
		view position: (self positions atWrap: i);
			abscissa: (self model abscissaAt: entry date) - (TimelineEntryView extent x // 2);
			borderColor: self mainView borderColor;
			borderWidth: self mainView borderWidth .		
		views add: view.
		view := TimelineConnector new entryView: view; yourself.
		views add: view].
	self addAllMorphs: views;
		scale: 1.
	self morphPosition: self container morphExtent - extent // 2! !

!TimelineCanvas methodsFor: 'updating' stamp: 'hlsf 10/9/2025 11:13:17'!
updateColor
	submorphs 
		select: [:each | each is: #TimelineEntryView] 
		thenDo: [:eventView  | eventView borderColor: self color]! !

!TimelineCanvas methodsFor: 'updating' stamp: 'hlsf 10/9/2025 11:14:23'!
updateWidth
	submorphs 
		select: [:each | each is: #TimelineEntryView] 
		thenDo: [:eventView  | eventView borderWidth: self entryWidth]! !

!TimelineCanvas methodsFor: 'drawing' stamp: 'hlsf 10/7/2025 21:18:09'!
drawFullOn: canvas
	| start end font timelineY model endGrad |
	model := presenter model.
	canvas fillRectangle: self localBounds color: Color white.
	font := (FontFamily familyName: FontFamily defaultFamilyName pointSize: 16) emphasized: 7.
	canvas drawString: model title atCenterX: extent x // 2 @ 0 font: font color: self color.
	timelineY := TimelineCanvas topMargin + TimelineEntryView extent y + TimelineConnector height.
	endGrad := extent x - 11.
	canvas strokeWidth: self entryWidth color: self color do: [
		canvas moveTo: 1@ timelineY ;
			lineTo: (extent x - 1) @ timelineY;
			rel_LineTo: -10@-6;
			rel_MoveTo: 0@12;
			rel_LineTo: 10@-6].
	
	" First level graduation "
	start := (model firstEvent ifNil: [^ self]) date roundDownTo: model graduation interval.
	end := (model lastEvent date roundUpTo: model graduation interval).
	self drawOn: canvas graduationAt: timelineY -10 from: start to: end hardStop: endGrad.	
	" Sub graduation "
	model graduation interval days = model subGraduation interval days ifTrue: [^ self].
	self drawOn: canvas subGraduationAt: timelineY - 5 from: start + model subGraduation interval to: end hardStop: endGrad 

! !

!TimelineCanvas methodsFor: 'drawing' stamp: 'hlsf 10/7/2025 22:03:50'!
drawGapsOn: canvas
	| start end runningDate font timelineY model entries endGrad |
	model := presenter model.
	entries := model entries.
	canvas fillRectangle: self localBounds color: Color white.
	font := (FontFamily familyName: FontFamily defaultFamilyName pointSize: 16) emphasized: 7.
	canvas drawString: model title atCenterX: extent x // 2 @ 0 font: font color: self color.
	timelineY := TimelineCanvas topMargin + TimelineEntryView extent y + TimelineConnector height.
	endGrad := extent x - 11.
		canvas strokeWidth: self entryWidth color: self color do: [
		canvas moveTo: 1@ timelineY ;
			lineTo: (model abscissaAt: entries first date) @ timelineY].
		
	1 to: model entries size - 1 do: [:index | | dash |
		dash := (model isTemporalGap: index + 1) ifTrue: [2r10000000] ifFalse: [255].
		canvas strokeWidth: self entryWidth color: self color dashedStrokeBits: dash do: [
			canvas moveTo: (model abscissaAt: (entries at: index) date) @ timelineY;
				lineTo: (model abscissaAt: (entries at: index + 1) date) @ timelineY]].
	
	canvas strokeWidth: self entryWidth color: self color do: [
		canvas moveTo: (model abscissaAt: entries last date) @ timelineY;
			lineTo: (extent x - 1) @ timelineY;
			rel_LineTo: -10@-6;
			rel_MoveTo: 0@12;
			rel_LineTo: 10@-6].
	
	" First level graduation "
	start := (model firstEvent ifNil: [^ self]) date roundDownTo: model graduation interval.
	end := (model lastEvent date roundUpTo: model graduation interval).

  	entries allButLast withIndexDo: [:entry :i |
		runningDate := (entries at: i + 1) date roundUpTo: model graduation interval.
		(model isTemporalGap: i + 1 ) ifFalse: [" no temporal gap, non shrinked representation "			
			self 	drawOn: canvas graduationAt: timelineY - 10 from: start to: runningDate hardStop: endGrad].
		start := runningDate ].

	" Sub graduation "
	model graduation interval days = model subGraduation interval days ifTrue: [^ self].
	start := (model firstEvent date roundDownTo: model graduation interval)
			- model subGraduation interval.
	self drawOn: canvas subGraduationAt: timelineY - 5 from: start to: model firstEvent date hardStop: endGrad.
	entries allButLast withIndexDo: [:entry :i |
		runningDate := (entries at: i + 1) date roundUpTo: model subGraduation interval.
		endGrad := model abscissaAt: (entries at: i + 1) date.
		(model isTemporalGap: i + 1) ifFalse: [" no temporal gap, non shrinked representation "		
			self drawOn: canvas subGraduationAt: timelineY - 5 from: start to: runningDate hardStop: endGrad].
		start := runningDate]
! !

!TimelineCanvas methodsFor: 'drawing' stamp: 'hlsf 10/7/2025 21:39:46'!
drawOn: canvas
	(self model isShrinked and: [self model temporalGaps notEmpty])
		ifTrue: [self drawGapsOn: canvas]
		ifFalse: [self drawFullOn: canvas]! !

!TimelineCanvas methodsFor: 'drawing' stamp: 'hlsf 10/6/2025 21:49:00'!
drawOn: canvas graduationAt: posY from: start to: end hardStop: endGrad
	| model font pos |
	" First level graduation "
	model := presenter model.
	font := FontFamily familyName: FontFamily defaultFamilyName pointSize: 8.
	start to: end 	by: model graduation interval do: [:aDate |
		pos := (model abscissaAt: aDate) @ posY.
		(pos x between: 0 and: endGrad) ifTrue: [
			canvas strokeWidth: self entryWidth color: self color do: [canvas moveTo: pos; rel_LineTo: 0 @ 20].
			canvas drawString: aDate yearNumber asString atCenterX: pos + (0@25) font: font color: self color] ]! !

!TimelineCanvas methodsFor: 'drawing' stamp: 'hlsf 10/7/2025 21:14:16'!
drawOn: canvas subGraduationAt: posY from: start to: end hardStop: endGrad
	| model pos |
	" Sub graduation "
	model := presenter model.
	canvas strokeWidth: self entryWidth color: self color do: [
		start to: end by: model subGraduation interval do: [:aDate |
			(aDate roundDownTo: model graduation interval) = aDate ifFalse: [
				pos := (model abscissaAt: aDate) @ posY.
				(pos x between: 0 and: endGrad) ifTrue: [canvas moveTo: pos; rel_LineTo: 0 @ 10]] ] ]! !

!TimelineCanvas methodsFor: 'geometry testing' stamp: 'hlsf 10/3/2025 20:29:29'!
requiresVectorCanvas
	^ true ! !

!TimelineCanvas methodsFor: 'event handling testing' stamp: 'hlsf 10/4/2025 17:06:57'!
handlesMouseDown: event
	^ true
! !

!TimelineCanvas methodsFor: 'event handling testing' stamp: 'hlsf 10/4/2025 16:51:19'!
handlesMouseScroll: scrollEvent
	^ true! !

!TimelineCanvas methodsFor: 'events' stamp: 'hlsf 10/4/2025 17:07:19'!
mouseButton1Up: event localPosition: localPosition
	prevPosition := nil! !

!TimelineCanvas methodsFor: 'events' stamp: 'hlsf 10/4/2025 17:06:32'!
mouseMove: event localPosition: localPosition
	| pos |
	event mouseButton1Pressed not ifTrue: [^ self ].
	prevPosition 
		ifNotNil:  [
			pos := self externalize: localPosition.
			self morphPosition: self morphPosition + pos - prevPosition.
			prevPosition := pos]
		ifNil: [prevPosition := self externalize: localPosition]! !

!TimelineCanvas methodsFor: 'events' stamp: 'hlsf 10/4/2025 16:59:38'!
mouseScroll: evt localPosition: localEventPosition
	evt direction == #down
		ifTrue: [ presenter zoomAction: -0.02 at: (self externalize:  localEventPosition) ].
	evt direction == #up
		ifTrue: [ presenter zoomAction: 0.02 at: (self externalize: localEventPosition) ].
! !

!TimelineCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/4/2025 12:54:42'!
bottomMargin
	^ 50! !

!TimelineCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/4/2025 12:56:41'!
height
	^ TimelineEntryView extent y + TimelineConnector height * 2 + self verticalMargin! !

!TimelineCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/4/2025 12:54:29'!
topMargin
	^ 100! !

!TimelineCanvas class methodsFor: 'as yet unclassified' stamp: 'hlsf 10/4/2025 12:54:59'!
verticalMargin
" top and bottom margin "
	^ self topMargin + self bottomMargin ! !

!TimelineContainer methodsFor: 'geometry testing' stamp: 'hlsf 9/29/2025 21:35:40'!
clipsSubmorphs
	^ true ! !

!TimelineContainer methodsFor: 'initialization' stamp: 'hlsf 10/4/2025 17:08:58'!
defaultColor
	^ Color white slightlyDarker ! !

!TimelineContainer methodsFor: 'as yet unclassified' stamp: 'hlsf 10/11/2025 18:39:01'!
handlesMouseDown: aMouseButtonEvent
	^ true ! !

!TimelineContainer class methodsFor: 'instance creation' stamp: 'hlsf 9/29/2025 21:48:29'!
for: aTimelineCanvas
	^ self new
		addMorph: aTimelineCanvas position: 0@0! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/9/2025 10:52:20'!
defaultBorderColor 
	^ Color blue! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/9/2025 10:52:26'!
defaultBorderWidth 
	^ 2! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/4/2025 17:11:56'!
defaultColor
	^ Color transparent! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/9/2025 20:03:43'!
initialize
	super initialize.
	self morphExtent: 700@500.
	self installView.
! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/9/2025 20:20:03'!
installView
	canvas := TimelineCanvas new presenter: presenter.
	canvas setExtent.
	self addMorph: (TimelineContainer for: canvas)
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 0@0 offset: 0@0 
			brEdgesWeight: 1@1 offset: -20@-20).
	self	addMorph: self zoomWheel
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 1@0.5 offset: -20@-60
			brEdgesWeight: 1@0.5 offset: 0@60).
	self addMorph: self horizontalWheel 
		layoutSpec: (LayoutEdgesSpec 
			tlEdgesWeight: 0.5@1 offset: -60@-20 
			brEdgesWeight: 0.5 @1 offset: 60@0)
! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 10/11/2025 11:28:52'!
noteNewOwner: aMorph
	  UISupervisor whenUIinSafeState: [canvas morphPosition: canvas owner morphExtent - canvas morphExtent // 2]! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 11:12:33'!
borderColor: aColor
	super borderColor: aColor.
	canvas updateColor! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 10/9/2025 11:15:34'!
borderWidth: anInteger
	super borderWidth: anInteger.
	canvas updateWidth ! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 16:28:34'!
canvas
	^ canvas! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 10/2/2025 08:59:41'!
container
	^ canvas owner! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/29/2025 21:43:41'!
model
	^ presenter model! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 10/12/2025 18:56:35'!
presenter
	^ presenter! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/27/2025 12:56:37'!
presenter: aPresenter
	presenter := aPresenter ! !

!TimelineView methodsFor: 'widget' stamp: 'hlsf 10/3/2025 22:18:45'!
horizontalWheel 
	^ (WheelMorph target: presenter actionSelector: #moveOXAction:)
		beHorizontal; 
		factor: 2; 
		setBalloonText: 'Scroll the time line to the left or the right.' translated;
		borderWidth: 3;
		color: Color orange;
		borderColor: Color black;
		yourself! !

!TimelineView methodsFor: 'widget' stamp: 'hlsf 10/3/2025 22:18:31'!
zoomWheel
	^ (WheelMorph target: presenter actionSelector: #zoomAction:)
		beVertical ;		
		factor: 0.01 ;
		setBalloonText: 'Zoom in or out the timeline' translated;
		borderWidth: 3;
		color: Color gray;
		borderColor: Color black;
		yourself! !

!TimelineView methodsFor: 'drawing' stamp: 'hlsf 10/11/2025 17:29:40'!
drawOn: aCanvas ! !

!TimelineView class methodsFor: 'instance creation' stamp: 'hlsf 9/27/2025 12:56:16'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!TimelineEntryView methodsFor: 'initialization' stamp: 'hlsf 10/1/2025 21:54:50'!
defaultColor
	^ Color white! !

!TimelineEntryView methodsFor: 'initialization' stamp: 'hlsf 10/15/2025 21:37:43'!
initialize
	| scroll |
	super initialize.
	self beColumn.
	date := LabelMorph contents: (model date printFormat: #(1 2 3 $/ 1 1 1))  fontSize: 12 emphasis: 1.
	description := TextParagraphMorph contents: (model description justified italic pointSize: 10):: 
		color: Color white ;
		setHeightOnContent ;
		borderWidth: 0.
	self addMorph:  date layoutSpec: LayoutSpec keepMorphExtent ;
		addMorphUseAll: (scroll := PluggableScrollPane new 
			layoutSpec: LayoutSpec useAll;
			color: Color white;
			scroller: description);
		morphExtent: TimelineEntryView extent.
	scroll adoptWidgetsColor: self defaultColor.
	scroll verticalScrollBar morphWidth: 6.
	self setBalloonText: model balloonText ! !

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

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/5/2025 12:04:15'!
borderColor: aColor 
	super borderColor: aColor.
	self color: aColor.
	date color: (aColor luminance > 0.5 ifTrue: [Color black] ifFalse: [Color white]).
	description color: aColor muchLighter.
	description owner color: aColor muchLighter.
	description owner verticalScrollBar color: aColor! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 9/30/2025 20:03:08'!
model: timelineEntry
	model := timelineEntry ! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/4/2025 12:55:26'!
ordinate
	" its is constrained by its position relatively to the timeline "
	^ self isAboveTimeline 
		ifTrue: [TimelineCanvas topMargin]
		ifFalse: [TimelineCanvas topMargin + TimelineEntryView extent y + (TimelineConnector height * 2)]
		! !

!TimelineEntryView methodsFor: 'accessing' stamp: 'hlsf 10/1/2025 17:46:10'!
position: aSymbol
	position := aSymbol ! !

!TimelineEntryView methodsFor: 'geometry' stamp: 'hlsf 10/1/2025 14:45:13'!
morphPosition: aPoint 
	location withTranslation: aPoint.! !

!TimelineEntryView methodsFor: 'testing' stamp: 'hlsf 10/9/2025 11:07:04'!
is: aSymbol
	^ aSymbol == #TimelineEntryView or: [super is: aSymbol]! !

!TimelineEntryView methodsFor: 'testing' stamp: 'hlsf 10/1/2025 17:46:16'!
isAboveTimeline
	^ position == #above! !

!TimelineEntryView class methodsFor: 'instance creation' stamp: 'hlsf 9/30/2025 20:02:53'!
on: timelineEntry
	^ self basicNew
		model: timelineEntry;
		initialize! !

!TimelineEntryView class methodsFor: 'accessing' stamp: 'hlsf 10/5/2025 12:10:09'!
extent
" expressed in pixels "
	^ 120@150! !

!Date methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 10/5/2025 22:22:03'!
<= anotherDate
	^ (self > anotherDate) not! !

!Date methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 10/5/2025 22:20:25'!
>= anotherDate
	^ (self < anotherDate) not! !

!Date methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 10/2/2025 22:00:42'!
roundDownTo: aDuration
	^ Date 
		year:  (self yearNumber roundDownTo: aDuration years)
		month: self monthIndex 
		day: self dayOfMonth! !

!Date methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 10/2/2025 22:01:23'!
roundUpTo: aDuration
	^ Date 
		year:  (self yearNumber roundUpTo: aDuration years)
		month: self monthIndex 
		day: self dayOfMonth! !

!Date methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 10/4/2025 13:37:48'!
to: endDate by: aDuration do: block
" 	Use with caution, because argument to block convert to a Date, 
	so you may have repeated identical data if duration is smaller than a day "
	| currentDateAndTime endDateAndTime |
	currentDateAndTime := DateAndTime date: self time: Time now.
	endDateAndTime := DateAndTime date: endDate time: Time now.
	[currentDateAndTime <= endDateAndTime ] whileTrue: [
		block value: currentDateAndTime date.
		currentDateAndTime := currentDateAndTime + aDuration ]! !

!Duration methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 9/28/2025 15:46:15'!
millenniums
	^ (self days / 365.25 / 1000) rounded! !

!Duration methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 9/28/2025 15:46:52'!
years
	" Just to get an approximation , to the closest "
	^ (self days / 365.25) rounded! !

!Number methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 9/28/2025 15:39:49'!
millenniums
" An approximation "
	^ (self * 1000) years! !

!Number methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 9/28/2025 16:35:51'!
months
" An approximation "
	^ Duration days: self * 30.4375! !

!Number methodsFor: '*DKM-History-Timeline' stamp: 'hlsf 9/28/2025 15:38:42'!
years
" An approximation "
	^ Duration days: self * 365.25! !
