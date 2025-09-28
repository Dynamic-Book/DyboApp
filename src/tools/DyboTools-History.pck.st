'From Cuis7.5 [latest update: #7621] on 28 September 2025 at 12:07:22 pm'!
'Description '!
!provides: 'DyboTools-History' 1 1!
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
	instanceVariableNames: 'date text position image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineEntry class' category: #'DyboTools-History'!
TimelineEntry class
	instanceVariableNames: ''!

!classDefinition: #TimelineModel category: #'DyboTools-History'!
ActiveModel subclass: #TimelineModel
	instanceVariableNames: 'title entries'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineModel class' category: #'DyboTools-History'!
TimelineModel class
	instanceVariableNames: ''!

!classDefinition: #TimelineView category: #'DyboTools-History'!
FormLayoutMorph subclass: #TimelineView
	instanceVariableNames: 'presenter area'
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

!TimelineModel commentStamp: '<historical>' prior: 0!
- entries, a collection of models (timeline entry)!

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

!TimelineModel methodsFor: 'as yet unclassified' stamp: 'hlsf 9/28/2025 11:48:45'!
title: aText
	title := aText! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 9/28/2025 11:52:57'!
initialize
	super initialize.
	self installView ! !

!TimelineView methodsFor: 'initialization' stamp: 'hlsf 9/28/2025 11:55:01'!
installView
	self addMorph: self area 
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

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/28/2025 11:59:14'!
area
	^ area ifNil: [area := BoxMorph new]! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/27/2025 13:03:35'!
horizontalWheel 
	^ (WheelMorph target: presenter actionSelector: #moveOXAction:)
		beHorizontal; 
		factor: 1; 
		setBalloonText: 'Scroll the time line to the left or the right.' translated;
		borderWidth: 3;
		color: Color orange;
		borderColor: Color black;
		yourself! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/27/2025 12:56:37'!
presenter: aPresenter
	presenter := aPresenter ! !

!TimelineView methodsFor: 'accessing' stamp: 'hlsf 9/27/2025 13:01:39'!
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
