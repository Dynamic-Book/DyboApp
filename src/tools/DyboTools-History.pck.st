'From Cuis7.5 [latest update: #7621] on 29 September 2025 at 10:12:11 pm'!
'Description '!
!provides: 'DyboTools-History' 1 5!
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
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineView class' category: #'DyboTools-History'!
TimelineView class
	instanceVariableNames: ''!

!classDefinition: #TimelineEntryView category: #'DyboTools-History'!
LinearLayoutMorph subclass: #TimelineEntryView
	instanceVariableNames: ''
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
Its extent covers the whole area of the timeline. Therefore it may be larger than its owner or the screen. It is scrolled or zoomed appropriately with two wheel handles.!

!TimelineView commentStamp: '<historical>' prior: 0!
Timeline view, it comes with:
- two wheels to move and to zoom the timeline
- a representation of the timeline!

!TimelineEntryView commentStamp: '<historical>' prior: 0!
A view of a timeline entry!

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 9/28/2025 11:46:05'!
moveOXAction: increment! !

!Timeline methodsFor: 'callback ui' stamp: 'hlsf 9/28/2025 11:46:11'!
zoomAction: increment! !

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

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:55:53'!
position
	"Answer the value of position"

	^ position! !

!TimelineEntry methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 12:57:10'!
position: aSymbol
" #above #below"

	position := aSymbol ! !

!TimelineEntry methodsFor: 'initialization' stamp: 'hlsf 9/28/2025 13:33:54'!
initialize
	super initialize.
	position := #below! !

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

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/29/2025 22:11:12'!
addEntry: aTimelineEntry
	| newEntry |
	ppd := nil.
	newEntry := entries add: aTimelineEntry.
	self updateGraduation ;
		updateSubGraduation.
	self triggerEvent: #updatedEntry.
	^ newEntry ! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 23:31:19'!
canvasExtent
	^ (self ppd * self span days) rounded + self entryExtent x @ (self entryExtent y + 20 * 2)! !

!TimelineModel methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 23:27:39'!
entryExtent
" expressed in pixels "
	^ 200@280! !

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

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 9/28/2025 23:27:52'!
ppd
" 	pixels per days 
	The density of timeline depends on entry view with and time interval"
	^ ppd ifNil: [ppd := (self entryExtent x / self timeInterval days) asFloat]! !

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 9/28/2025 15:33:36'!
span
" 	We want to know the span of the events (distance between oldest and newer events) 
	to set the graduation approriately "
	^(entries last date - entries first date)! !

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

!TimelineModel methodsFor: 'metrics' stamp: 'hlsf 9/28/2025 16:46:36'!
updateSubGraduation
	| timeInterval |
	timeInterval := self timeInterval 
	timeInterval <= 1 years ifTrue: [^ subGraduation interval: 1 months].
	(timeInterval between: 1 years and: 20 years) ifTrue: [^ subGraduation interval: 1 years ].
	(timeInterval between: 20 years and: 100 years) ifTrue: [^ subGraduation interval: 10 years].
	(timeInterval between: 100 years and: 1 millenniums ) ifTrue: [^ subGraduation interval: 100 years].
	(timeInterval between: 1 millenniums and: 10 millenniums ) ifTrue: [^ subGraduation interval: 2 millenniums ].! !

!TimelineCanvas methodsFor: 'accessing' stamp: 'hlsf 9/29/2025 22:11:29'!
model: timelineModel
	model := timelineModel.
	model when: #updatedEntry send: #setExtent to: self! !

!TimelineCanvas methodsFor: 'geometry' stamp: 'hlsf 9/29/2025 22:11:58'!
setExtent
	self morphExtent: model canvasExtent ! !

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

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 9/29/2025 21:47:14'!
installView
	self addMorph: (TimelineContainer for: (TimelineCanvas new model: self model) )
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

!TimelineView class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/27/2025 12:56:16'!
presenter: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize;
		yourself! !

!TimelineEntryView class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/28/2025 11:29:00'!
new
	^ self newColumn ! !

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
