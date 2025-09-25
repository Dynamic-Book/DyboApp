'From Cuis7.5 [latest update: #7610] on 25 September 2025 at 10:11:22 pm'!
'Description '!
!provides: 'DyboTools-History' 1 0!
SystemOrganization addCategory: #'DyboTools-History'!


!classDefinition: #Timeline category: #'DyboTools-History'!
Object subclass: #Timeline
	instanceVariableNames: ''
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

!classDefinition: #TimelineEntryView category: #'DyboTools-History'!
Object subclass: #TimelineEntryView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineEntryView class' category: #'DyboTools-History'!
TimelineEntryView class
	instanceVariableNames: ''!

!classDefinition: #TimelineModel category: #'DyboTools-History'!
Object subclass: #TimelineModel
	instanceVariableNames: 'title entries'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineModel class' category: #'DyboTools-History'!
TimelineModel class
	instanceVariableNames: ''!

!classDefinition: #TimelineView category: #'DyboTools-History'!
LinearLayoutMorph subclass: #TimelineView
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-History'!
!classDefinition: 'TimelineView class' category: #'DyboTools-History'!
TimelineView class
	instanceVariableNames: ''!


!Timeline commentStamp: '<historical>' prior: 0!
The presenter of the Timeline to handle the controllers and associated callbacks.!

!TimelineEntry commentStamp: '<historical>' prior: 0!
A model of an entry in the timeline!

!TimelineEntryView commentStamp: '<historical>' prior: 0!
A view of a timeline entry!

!TimelineModel commentStamp: '<historical>' prior: 0!
- entries, a collection of models (timeline entry)!

!TimelineView commentStamp: '<historical>' prior: 0!
Timeline view, it comes with:
- two wheels to move and to zoom the timeline
- a representation of the timeline!
