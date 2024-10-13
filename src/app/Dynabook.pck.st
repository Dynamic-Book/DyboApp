'From Cuis7.1 [latest update: #6764] on 13 October 2024 at 5:27:59 pm'!
'Description '!
!provides: 'Dynabook' 1 73!
!requires: 'Neo-CSV-Core' 1 2 nil!
!requires: 'Gettext' 1 26 nil!
!requires: 'UI-Graphic-Import' 1 0 nil!
!requires: 'Goodies' 1 9 nil!
!requires: 'UI-Mold' 1 13 nil!
!requires: 'UI-Panel' 1 91 nil!
!requires: 'Document' 1 5 nil!
SystemOrganization addCategory: #'Dynabook-Model'!
SystemOrganization addCategory: #'Dynabook-Model-Knowledge'!
SystemOrganization addCategory: #'Dynabook-Model-Business'!
SystemOrganization addCategory: #'Dynabook-View'!
SystemOrganization addCategory: #'Dynabook-View-Business'!
SystemOrganization addCategory: #'Dynabook-Presenter'!
SystemOrganization addCategory: #'Dynabook-Presenter-Command'!
SystemOrganization addCategory: #'Dynabook-Test'!
SystemOrganization addCategory: #Dynabook!
SystemOrganization addCategory: #'Dynabook-System'!


!classDefinition: #DyDomain category: #'Dynabook-Model'!
Object subclass: #DyDomain
	instanceVariableNames: 'userData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model'!
!classDefinition: 'DyDomain class' category: #'Dynabook-Model'!
DyDomain class
	instanceVariableNames: ''!

!classDefinition: #DyCourseHour category: #'Dynabook-Model-Business'!
Object subclass: #DyCourseHour
	instanceVariableNames: 'room dayOfWeek timeSlots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyCourseHour class' category: #'Dynabook-Model-Business'!
DyCourseHour class
	instanceVariableNames: ''!

!classDefinition: #DyDayInterval category: #'Dynabook-Model-Business'!
Object subclass: #DyDayInterval
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyDayInterval class' category: #'Dynabook-Model-Business'!
DyDayInterval class
	instanceVariableNames: ''!

!classDefinition: #DyObject category: #'Dynabook-Model-Business'!
Object subclass: #DyObject
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyObject class' category: #'Dynabook-Model-Business'!
DyObject class
	instanceVariableNames: ''!

!classDefinition: #DyAgenda category: #'Dynabook-Model-Business'!
DyObject subclass: #DyAgenda
	instanceVariableNames: 'start end daysOff tasks'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyAgenda class' category: #'Dynabook-Model-Business'!
DyAgenda class
	instanceVariableNames: ''!

!classDefinition: #DyClassGroup category: #'Dynabook-Model-Business'!
DyObject subclass: #DyClassGroup
	instanceVariableNames: 'number headTeacher students courses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyClassGroup class' category: #'Dynabook-Model-Business'!
DyClassGroup class
	instanceVariableNames: ''!

!classDefinition: #DyCourse category: #'Dynabook-Model-Business'!
DyObject subclass: #DyCourse
	instanceVariableNames: 'subject color teacher courseHours topics'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyCourse class' category: #'Dynabook-Model-Business'!
DyCourse class
	instanceVariableNames: ''!

!classDefinition: #DySchool category: #'Dynabook-Model-Business'!
DyObject subclass: #DySchool
	instanceVariableNames: 'name phone email timeSlots classGroups'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DySchool class' category: #'Dynabook-Model-Business'!
DySchool class
	instanceVariableNames: ''!

!classDefinition: #DyTopic category: #'Dynabook-Model-Business'!
DyObject subclass: #DyTopic
	instanceVariableNames: 'title color documents resources'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyTopic class' category: #'Dynabook-Model-Business'!
DyTopic class
	instanceVariableNames: ''!

!classDefinition: #DyPerson category: #'Dynabook-Model-Business'!
Object subclass: #DyPerson
	instanceVariableNames: 'lastName firstName email'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyPerson class' category: #'Dynabook-Model-Business'!
DyPerson class
	instanceVariableNames: ''!

!classDefinition: #DyStudent category: #'Dynabook-Model-Business'!
DyPerson subclass: #DyStudent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyStudent class' category: #'Dynabook-Model-Business'!
DyStudent class
	instanceVariableNames: ''!

!classDefinition: #DyTeacher category: #'Dynabook-Model-Business'!
DyPerson subclass: #DyTeacher
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyTeacher class' category: #'Dynabook-Model-Business'!
DyTeacher class
	instanceVariableNames: ''!

!classDefinition: #DyTask category: #'Dynabook-Model-Business'!
Object subclass: #DyTask
	instanceVariableNames: 'date timeSlot document'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyTask class' category: #'Dynabook-Model-Business'!
DyTask class
	instanceVariableNames: ''!

!classDefinition: #DyUserData category: #'Dynabook-Model-Business'!
Object subclass: #DyUserData
	instanceVariableNames: 'user schools agenda'
	classVariableNames: 'Current'
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyUserData class' category: #'Dynabook-Model-Business'!
DyUserData class
	instanceVariableNames: ''!

!classDefinition: #Dynabook category: #'Dynabook-Presenter'!
Object subclass: #Dynabook
	instanceVariableNames: 'domain controlsManager selectedSection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Presenter'!
!classDefinition: 'Dynabook class' category: #'Dynabook-Presenter'!
Dynabook class
	instanceVariableNames: ''!

!classDefinition: #DyCommand category: #'Dynabook-Presenter-Command'!
Object subclass: #DyCommand
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Presenter-Command'!
!classDefinition: 'DyCommand class' category: #'Dynabook-Presenter-Command'!
DyCommand class
	instanceVariableNames: ''!

!classDefinition: #DyPlatform category: #'Dynabook-System'!
Object subclass: #DyPlatform
	instanceVariableNames: 'preferences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-System'!
!classDefinition: 'DyPlatform class' category: #'Dynabook-System'!
DyPlatform class
	instanceVariableNames: ''!

!classDefinition: #DyDevelopment category: #'Dynabook-System'!
DyPlatform subclass: #DyDevelopment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-System'!
!classDefinition: 'DyDevelopment class' category: #'Dynabook-System'!
DyDevelopment class
	instanceVariableNames: ''!

!classDefinition: #DySystem category: #'Dynabook-System'!
Object subclass: #DySystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-System'!
!classDefinition: 'DySystem class' category: #'Dynabook-System'!
DySystem class
	instanceVariableNames: 'platform'!

!classDefinition: #DyControlsManager category: #'Dynabook-View'!
Object subclass: #DyControlsManager
	instanceVariableNames: 'dynabookView docView icons statusBar docTools'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View'!
!classDefinition: 'DyControlsManager class' category: #'Dynabook-View'!
DyControlsManager class
	instanceVariableNames: ''!

!classDefinition: #DyEditorVisitor category: #'Dynabook-View-Business'!
Object subclass: #DyEditorVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View-Business'!
!classDefinition: 'DyEditorVisitor class' category: #'Dynabook-View-Business'!
DyEditorVisitor class
	instanceVariableNames: ''!

!classDefinition: #DyPreviewVisitor category: #'Dynabook-View-Business'!
Object subclass: #DyPreviewVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View-Business'!
!classDefinition: 'DyPreviewVisitor class' category: #'Dynabook-View-Business'!
DyPreviewVisitor class
	instanceVariableNames: ''!

!classDefinition: #DyViewerVisitor category: #'Dynabook-View-Business'!
Object subclass: #DyViewerVisitor
	instanceVariableNames: 'visitedModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View-Business'!
!classDefinition: 'DyViewerVisitor class' category: #'Dynabook-View-Business'!
DyViewerVisitor class
	instanceVariableNames: ''!

!classDefinition: #DyTimeSlot category: #'Dynabook-Model-Business'!
Magnitude subclass: #DyTimeSlot
	instanceVariableNames: 'name startTime endTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Model-Business'!
!classDefinition: 'DyTimeSlot class' category: #'Dynabook-Model-Business'!
DyTimeSlot class
	instanceVariableNames: ''!

!classDefinition: #DyView category: #'Dynabook-View'!
LayoutMorph subclass: #DyView
	instanceVariableNames: 'presenter classGroupIndex courseIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View'!
!classDefinition: 'DyView class' category: #'Dynabook-View'!
DyView class
	instanceVariableNames: ''!

!classDefinition: #DyAgendaView category: #'Dynabook-View'!
DyView subclass: #DyAgendaView
	instanceVariableNames: 'courseHourIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View'!
!classDefinition: 'DyAgendaView class' category: #'Dynabook-View'!
DyAgendaView class
	instanceVariableNames: ''!

!classDefinition: #DyBinderView category: #'Dynabook-View'!
DyView subclass: #DyBinderView
	instanceVariableNames: 'topicIndex sortIndex previewPanel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View'!
!classDefinition: 'DyBinderView class' category: #'Dynabook-View'!
DyBinderView class
	instanceVariableNames: ''!

!classDefinition: #DynabookView category: #'Dynabook-View'!
SystemWindow subclass: #DynabookView
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-View'!
!classDefinition: 'DynabookView class' category: #'Dynabook-View'!
DynabookView class
	instanceVariableNames: ''!

!classDefinition: #DynabookTestCase category: #'Dynabook-Test'!
TestCase subclass: #DynabookTestCase
	instanceVariableNames: 'data'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Test'!
!classDefinition: 'DynabookTestCase class' category: #'Dynabook-Test'!
DynabookTestCase class
	instanceVariableNames: ''!

!classDefinition: #DynabookTestResource category: #'Dynabook-Test'!
TestResource subclass: #DynabookTestResource
	instanceVariableNames: 'data backupData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dynabook-Test'!
!classDefinition: 'DynabookTestResource class' category: #'Dynabook-Test'!
DynabookTestResource class
	instanceVariableNames: ''!


!DyDomain commentStamp: '<historical>' prior: 0!
The domain object of a Dynabook application.!

!DyCourseHour commentStamp: '<historical>' prior: 0!
Describes one or more contiguous teaching periods.!

!DyDayInterval commentStamp: '<historical>' prior: 0!
I represent an interval of days!

!DyObject commentStamp: '<historical>' prior: 0!
Some business objects of the Dynabook model need to know about their owner. Such objects are my subclasses. 
DyClassGroup, DyCourse, DyTopic are such objects!

!DyAgenda commentStamp: '<historical>' prior: 0!
The place to record teacher/student assignments or other events. It follows the user times slots as described in its related school instances:
- start, a Date first day of school
- end, a Date last day of school
- daysOff: sorted collection of DyDayInterval instances
- tasks: a collection of DyTask instances
My owner is a DyUserData instance!

!DyClassGroup commentStamp: '<historical>' prior: 0!
It describes a class: its number, the list of its students, taught courses, etc.
My owner is a school!

!DyCourse commentStamp: '<historical>' prior: 0!
I describe a course of a teacher or a course attended by a student:
- subject: the taught topic (Math, History,...)
- color: distinctive color of the course
- courseHours: a collection of course hour describing the teaching period
- binder: a holder of the pedagogical documents
My owner is a ClassGroup!

!DySchool commentStamp: '<historical>' prior: 0!
Description of the user's educational institutions. Possibly several per user.
My owner is a DyUserData instance
!

!DyTopic commentStamp: '<historical>' prior: 0!
Pedagogical document grouped in one topic.!

!DyUserData commentStamp: '<historical>' prior: 0!
I am a Singleton, the root of the user data, both administrative and pedagogical.
- user: a teacher or student 
- schools: collection of schools the student is enrolled in or the teacher teaches in
- agenda of the user!

!Dynabook commentStamp: '<historical>' prior: 0!
A presenter for a Dynabook application.!

!DyPlatform commentStamp: '<historical>' prior: 0!
Access to preferences, path, information in deployment mode.
Pattern: strategy!

!DyDevelopment commentStamp: '<historical>' prior: 0!
Access to preferences, path, information in development mode.!

!DySystem commentStamp: '<historical>' prior: 0!
I map settings/preferences to the underneath hardware/os plateform
Pattern: strategy!

!DyControlsManager commentStamp: '<historical>' prior: 0!
A manager for the Dynabook user interface : main dynabook view, document view,  toolbars, controls and other widgets!

!DyEditorVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide an editor!

!DyPreviewVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide a morph preview.!

!DyViewerVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide a viewer linked to an editor.!

!DyTimeSlot commentStamp: '<historical>' prior: 0!
Describe the organization of the teaching periods in a school. There are generally 10 time slots per school.
Example of a time slot: P2, 9:25am, 10:10am!

!DyView commentStamp: '<historical>' prior: 0!
An abstract view for the Agenda and Binder. Share some behaviors and states.!

!DyAgendaView commentStamp: '<historical>' prior: 0!
I present a view to let the user browse the tasks and to create new task.
My model is a DyAgenda instance, to access the agenda and the class group!

!DyBinderView commentStamp: '<historical>' prior: 0!
I am a view to browse the past document, depending on the class groups, courses and topics.!

!DynabookView commentStamp: '<historical>' prior: 0!
I am the main view of the Dynabook app.!

!DyDomain methodsFor: 'accessing' stamp: 'hlsf 8/16/2023 21:39:50'!
userData
	^ userData! !

!DyDomain methodsFor: 'initialization' stamp: 'hlsf 8/16/2023 21:10:08'!
initialize
	userData := DyUserData current! !

!DyCourseHour methodsFor: 'user interface' stamp: 'hlsf 9/28/2023 15:21:54'!
mold: school
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Room' translated;
		on: #room of: self;
		beRequired.
	mold selectField 
		label: 'Day' translated;
		on: #listIndex of: (ListModel with: DyUserData daysOfWeek :: listIndex: dayOfWeek );
		callback: [:input | self dayOfWeek: input];
		beRequired.
	mold selectMultiField 
		label: 'Period(s)' translated;
		on: #selectedIndexes of: (
			ListMultiModel with: school timeSlots :: selectedItems: timeSlots );
		callback: [:input | 
			self timeSlots: (input collect: [:index | school timeSlots at: index]) ];
		beRequired.
	^ mold! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:33:27'!
dayOfWeek
	^ dayOfWeek ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:34:47'!
dayOfWeek: anInteger
"1 is Monday"
	dayOfWeek := anInteger ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:33:12'!
room
	^ room! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:33:00'!
room: aString
	room := aString ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 13:28:30'!
timeSlots
	^ timeSlots ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 13:29:14'!
timeSlots: aCollection
	timeSlots := aCollection ! !

!DyCourseHour methodsFor: 'visiting' stamp: 'hlsf 7/1/2023 13:08:44'!
accept: aVisitor
	^ aVisitor visitCourseHour: self! !

!DyCourseHour methodsFor: 'printing' stamp: 'hlsf 9/28/2023 11:24:04'!
printOn: str
	dayOfWeek 
		ifNotNil:  [str nextPutAll: (DyUserData daysOfWeek at: dayOfWeek);
				nextPutAll: ' (';
				nextPutAll: room;
				nextPut: $)]
		ifNil: [super printOn: str]! !

!DyCourseHour methodsFor: 'initialization' stamp: 'hlsf 7/1/2023 18:34:56'!
initialize
	super initialize.
	dayOfWeek := 0.
	timeSlots := OrderedCollection new! !

!DyCourseHour methodsFor: 'testing' stamp: 'hlsf 9/17/2023 21:32:38'!
isDuring: aDateAndTime
	^ dayOfWeek = aDateAndTime dayOfWeek 
		and: [	aDateAndTime time between: timeSlots first start and: timeSlots last end]! !

!DyCourseHour class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:35:55'!
label
	^ 'period' translated! !

!DyCourseHour class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:36:05'!
pluralLabel
	^ 'Periods' translated! !

!DyDayInterval methodsFor: 'printing' stamp: 'hlsf 8/11/2024 10:44:42'!
printOn: aStream
	start 
		ifNotNil:  [aStream nextPutAll:  start ddmmyy ;
				nextPutAll: ' - ';
				nextPutAll: self end ddmmyy .]
		ifNil: [aStream nextPutAll: 'days inteval' translated]! !

!DyDayInterval methodsFor: 'testing' stamp: 'hlsf 8/11/2024 10:44:37'!
includes: aDay
	^ start = aDay 
	or: [self end = aDay 
	or: [start < aDay and: [aDay < self end ] ] ]! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 8/11/2024 10:44:21'!
end
" if end date is nil,  then start date if any. Handy to input only one day off "
	^ (end isNil and: [start notNil])
		ifTrue: [start] 
		ifFalse: [	end]
! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 8/11/2024 10:42:55'!
end: aDate
	end := aDate ! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 00:38:28'!
start
	^ start ! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 00:38:56'!
start: aDate
	start := aDate ! !

!DyDayInterval methodsFor: 'comparing' stamp: 'hlsf 7/30/2023 18:08:33'!
<= aDayInterval
"Date does not implement <=, dive into its attribute start, a DateAndTime "
	^ start start <= aDayInterval start start! !

!DyDayInterval methodsFor: 'user interface' stamp: 'hlsf 8/11/2024 10:38:11'!
mold
	| mold |
	mold := Mold new.
	mold dateField 
		label: 'Start' translated;
		on: #start of: self;
		beRequired.
	mold dateField 
		label: 'End' translated;
		on: #end of: self;
		beOptional .
	^ mold
	! !

!DyDayInterval class methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 16:18:04'!
label
	^ 'day off' translated! !

!DyDayInterval class methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 16:24:47'!
pluralLabel
	^ 'Days off' translated! !

!DyDayInterval class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/29/2023 16:54:46'!
export: daysOff to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(start end);
		addFields: #(start end);
		nextPutAll: daysOff ! !

!DyDayInterval class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/29/2023 17:01:46'!
importFrom: readStream
"Import days off from a CSV file with header: start, end "
| reader |
	reader := NeoCSVReader on: readStream.
	reader readHeader = #('start' 'end')
		ifFalse: [self error: 'Headers should be start, end'].
	reader 
		recordClass: self;
		addField: #start: converter: [:d | Date fromString: d];
		addField: #end: converter: [:d | Date fromString: d].
	^ reader upToEnd asSortedCollection ! !

!DyDayInterval class methodsFor: 'instance creation' stamp: 'hlsf 9/24/2023 14:05:07'!
start: startDateString end: endDateString
	^ self new
		start: startDateString asDate;
		end: endDateString  asDate! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 8/22/2023 21:04:50'!
owner
	^ owner! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 8/22/2023 21:04:58'!
owner: anObject
	owner := 	anObject ! !

!DyObject class methodsFor: 'user interface' stamp: 'hlsf 10/8/2023 23:29:21'!
label
	^ 'unnamed object'! !

!DyObject class methodsFor: 'user interface' stamp: 'hlsf 10/8/2023 23:29:27'!
pluralLabel
	^ 'Unnamed objects'! !

!DyAgenda methodsFor: 'initialization' stamp: 'hlsf 9/24/2023 10:38:03'!
initialize
	super initialize.
	tasks := OrderedCollection new.
	daysOff := SortedCollection new! !

!DyAgenda methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 00:50:25'!
mold
	| mold |
	mold := Mold new.
	mold dateField 
		label: 'Back-to-school day' translated;
		on: #start of: self;
		beRequired.
	mold dateField 
		label: 'End of school year' translated;
		on: #end of: self;
		beRequired.
	^ mold
	! !

!DyAgenda methodsFor: 'visiting' stamp: 'hlsf 7/28/2023 18:31:24'!
accept: aVisitor
	^ aVisitor visitAgenda: self! !

!DyAgenda methodsFor: 'printing' stamp: 'hlsf 7/30/2023 18:09:47'!
printOn: stream
	start 
		ifNotNil: [ 	stream nextPutAll: 
			('{1} to {2}' translated format: 
				{start ddmmyyyy . end ddmmyyyy }) 		] 
		ifNil: [stream nextPutAll: 'Unspecified agenda' translated]! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:09:53'!
daysOff
	^ daysOff ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:23:47'!
end
	^ end ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:27:11'!
end: aDate
	end := aDate ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:23:42'!
start
	^ start! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:27:23'!
start: aDate
	start := 	aDate ! !

!DyAgenda methodsFor: 'testing' stamp: 'hlsf 9/24/2023 14:02:05'!
isDayOff: aDate
	^ daysOff anySatisfy: [:aDayInteverval | aDayInteverval 	 includes: aDate]! !

!DyClassGroup methodsFor: 'user interface' stamp: 'hlsf 6/30/2023 21:15:15'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Number' translated;
		on: #number of: self;
		beRequired.
	^ mold! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 22:01:14'!
courses
	^ courses ! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 8/22/2023 21:38:51'!
dirName
	^ number asFileName! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 22:01:09'!
headTeacher
	^ headTeacher ! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/4/2023 18:12:55'!
number
	^number! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 21:45:44'!
number: newNumber 
	self triggerEvent: #renamedClassGroup withArguments: {self . number . newNumber }.
	number := newNumber.
! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 9/13/2023 21:43:32'!
school
	^ owner! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 22:01:20'!
students
	^ students! !

!DyClassGroup methodsFor: 'printing' stamp: 'hlsf 10/8/2023 23:34:42'!
printOn: str
	str nextPutAll: number! !

!DyClassGroup methodsFor: 'initialization' stamp: 'hlsf 10/8/2023 23:34:51'!
initialize
	super initialize.
	headTeacher := DyTeacher new.
	courses := OrderedCollection new.
	students := SortedCollection new.
	number := 'Unknown class' translated! !

!DyClassGroup methodsFor: 'initialization' stamp: 'hlsf 8/20/2023 16:52:38'!
registerEvents
	self when: #renamedClassGroup send: #renameClassGroup:from:to: to: DySystem! !

!DyClassGroup methodsFor: 'visiting' stamp: 'hlsf 6/30/2023 22:01:43'!
accept: aVisitor 
	^ aVisitor visitClassGroup: self! !

!DyClassGroup class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:36:49'!
label
	^ 'class' translated! !

!DyClassGroup class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:36:59'!
pluralLabel
	^ 'Classes' translated! !

!DyClassGroup class methodsFor: 'instance creation' stamp: 'hlsf 9/14/2023 15:59:15'!
number: aString in: aSchool
	^ self new ::
		number: aString;
		owner: aSchool! !

!DyCourse methodsFor: 'initialization' stamp: 'hlsf 10/8/2023 23:34:26'!
initialize
	super initialize.
	courseHours := OrderedCollection new.
	topics := OrderedCollection new.
	teacher := DyTeacher new.
	subject := 'Unnamed course' translated! !

!DyCourse methodsFor: 'initialization' stamp: 'hlsf 8/20/2023 16:52:51'!
registerEvents
	self when: #renamedCourse send: #renameCourse:from:to: to: DySystem! !

!DyCourse methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 11:30:36'!
mold
	| mold |
	mold := Mold new.
	mold stringField 
		label: 'Subject' translated;
		on: #subject of: self;
		beRequired.
	^ mold! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 9/23/2023 10:28:49'!
agenda 
	^ self school owner agenda! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 9/13/2023 21:43:52'!
classGroup
	^ owner! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 08:52:47'!
courseHours
	^ courseHours ! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 8/22/2023 21:38:51'!
dirName
	^ subject asFileName! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 9/13/2023 21:44:07'!
school 
	^ self classGroup school! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 6/19/2023 22:33:42'!
subject
	^subject! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 8/22/2023 21:43:17'!
subject: newName 
	self triggerEvent: #renamedCourse withArguments: {self . subject . newName }.
	subject := newName.
! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 08:52:52'!
teacher
	^ teacher ! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 10/8/2023 23:09:25'!
topics
	^ topics! !

!DyCourse methodsFor: 'printing' stamp: 'hlsf 10/8/2023 23:34:04'!
printOn: aStream
	aStream nextPutAll: subject! !

!DyCourse methodsFor: 'visiting' stamp: 'hlsf 7/1/2023 08:53:53'!
accept: aVisitor
	^ aVisitor visitCourse: self! !

!DyCourse methodsFor: 'testing' stamp: 'hlsf 9/19/2023 21:27:08'!
isDuring: aDateAndTime
	^ courseHours 
		detect:  [:aCourseHour | aCourseHour isDuring: aDateAndTime ]
		ifFound: [:aCourse | true]
		ifNone: [false]! !

!DyCourse methodsFor: 'searching' stamp: 'hlsf 9/28/2023 15:44:15'!
futureDates: qty
" A list of future course hours & dates after today "
	^ self next: qty courseHoursAfter: Date today! !

!DyCourse methodsFor: 'searching' stamp: 'hlsf 9/26/2023 22:02:46'!
next: qty courseHoursAfter: aDate
" A list of qty course hours & dates after a given date"
	| futureDates n next |
	futureDates := OrderedCollection new.
	n := qty.
	next := self nextCourseHourAfter: aDate.
	[n isZero or: [next isNil]] whileFalse:	 [
		futureDates add: next.	
		next := self nextCourseHourAfter: next second. "̈next date"
		n := n - 1	] .
	^ futureDates ! !

!DyCourse methodsFor: 'searching' stamp: 'hlsf 5/26/2024 15:50:24'!
nextCourseHourAfter: aDate
"Search for my next course hour after aDate"
	| dayOfWeek currentCourseHourIndex nextCourseHour nextDate |
	dayOfWeek := aDate dayOfWeek.
	currentCourseHourIndex := courseHours findFirst: [:aCourseHour | 
		aCourseHour dayOfWeek = dayOfWeek].
	currentCourseHourIndex = 0 ifTrue: [^ nil].
	nextCourseHour := courseHours atWrap: currentCourseHourIndex + 1.
	nextDate := aDate + (nextCourseHour dayOfWeek - dayOfWeek \\ 7) days.
	nextDate > self agenda end
		ifTrue: [^ nil "School is over, it is summer time !!"].
	^ (self agenda isDayOff: nextDate)
		ifTrue: [self nextCourseHourAfter: nextDate]
		ifFalse: [Array with: nextCourseHour with: nextDate]! !

!DyCourse class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:34:16'!
label
	^  'lesson' translated! !

!DyCourse class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:33:49'!
pluralLabel
	^  'Lessons' translated! !

!DyCourse class methodsFor: 'instance creation' stamp: 'hlsf 9/14/2023 16:00:09'!
subject: aString in: aClassGroup
	^ self new ::
		subject: aString ;
		owner: aClassGroup ! !

!DySchool methodsFor: 'initialization' stamp: 'hlsf 10/8/2023 23:33:45'!
initialize
	super initialize .
	timeSlots := SortedCollection new.
	classGroups := OrderedCollection new.
	name := 'Unknown school' translated! !

!DySchool methodsFor: 'initialization' stamp: 'hlsf 8/20/2023 17:09:33'!
registerEvents
	self when: #renamedSchool send: #renameSchool:from:to: to: DySystem! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 21:49:32'!
classGroups
	^ classGroups ! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 8/22/2023 21:38:51'!
dirName
	^ name asFileName! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:54:57'!
schoolName
	^ name! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 21:45:03'!
schoolName: newName
	self triggerEvent: #renamedSchool withArguments: {self . name . newName}.
	name := newName.! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 21:48:48'!
timeSlots
	^ timeSlots ! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 9/13/2023 23:11:12'!
timeSlotsDic
	^ (timeSlots collect: [:each | each slotName -> each] ) asDictionary ! !

!DySchool methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 11:31:58'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'School name' translated;
		on: #schoolName of: self;
		beRequired.
	^ mold! !

!DySchool methodsFor: 'printing' stamp: 'hlsf 10/8/2023 23:40:39'!
printOn: str
	str nextPutAll: name! !

!DySchool methodsFor: 'visiting' stamp: 'hlsf 6/30/2023 21:49:08'!
accept: aVisitor 
	^ aVisitor visitSchool: self! !

!DySchool class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:38:14'!
label
	^ 'school' translated! !

!DySchool class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:38:22'!
pluralLabel
	^ 'Schools' translated! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 16:53:31'!
color
	"Answer the value of color"

	^ color! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 16:53:31'!
color: anObject
	"Set the value of color"

	color := anObject! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 10/8/2023 23:20:15'!
course
	^ owner! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 16:53:31'!
documents
	"Answer the value of documents"

	^ documents! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 16:53:31'!
documents: anObject
	"Set the value of documents"

	documents := anObject! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 16:53:31'!
title
	"Answer the value of title"

	^ title! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 8/20/2023 21:44:42'!
title: newTitle
	"Set the value of title"
	self triggerEvent: #renamedTopic withArguments: {self. title . newTitle }.
	title := newTitle.! !

!DyTopic methodsFor: 'initialization' stamp: 'hlsf 10/8/2023 23:33:08'!
initialize
	documents := OrderedCollection new.
	resources := OrderedCollection new.
	title := 'Unnamed topic' translated! !

!DyTopic methodsFor: 'initialization' stamp: 'hlsf 8/20/2023 17:09:11'!
registerEvents
	self when: #renamedTopic send: #renameTopic:from:to: to: DySystem! !

!DyTopic methodsFor: 'user interface' stamp: 'hlsf 10/8/2023 23:37:49'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Title' translated;
		on: #title of: self;
		beRequired.
	^ mold! !

!DyTopic methodsFor: 'printing' stamp: 'hlsf 10/8/2023 23:33:19'!
printOn: str
	str nextPutAll: title! !

!DyTopic class methodsFor: 'instance creation' stamp: 'hlsf 10/8/2023 23:21:58'!
title: aString in: aCourse
	^ self new ::
		title: aString;
		owner: aCourse! !

!DyTopic class methodsFor: 'user interface' stamp: 'hlsf 10/8/2023 23:29:57'!
label
	^ 'topic' translated! !

!DyTopic class methodsFor: 'user interface' stamp: 'hlsf 10/8/2023 23:30:19'!
pluralLabel
	^ 'Topics' translated! !

!DyPerson methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:30'!
isStudent
	^ false! !

!DyPerson methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:25'!
isTeacher
	^ false! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:36:00'!
email
	^ email! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:49'!
email: aString
	email := 	aString ! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:38'!
firstName
	^ firstName! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:31'!
firstName: aString
	firstName := 	aString ! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:12'!
lastName
	^ lastName ! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:24'!
lastName: aString
	lastName := 	aString ! !

!DyPerson methodsFor: 'printing' stamp: 'hlsf 10/8/2023 23:36:49'!
printOn: str
	str nextPutAll: lastName;
		space;
		nextPutAll: firstName! !

!DyPerson methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 11:36:22'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Firstname' translated;
		on: #firstName of: self;
		beRequired.
	mold stringField
		label: 'Lastname' translated;
		on: #lastName of: self;
		beRequired.
	mold stringField
		label: 'Email' translated;
		on: #email of: self.
	^ mold! !

!DyPerson methodsFor: 'initialization' stamp: 'hlsf 10/8/2023 23:36:24'!
initialize
	super initialize.
	lastName := 'Unknown person' translated.
	firstName := ''! !

!DyStudent methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:38'!
isStudent
	^ true! !

!DyStudent methodsFor: 'comparing' stamp: 'hlsf 7/27/2023 00:47:41'!
<= aPerson
	^ lastName < aPerson lastName 
	or: [lastName = aPerson lastName 
		and: [	firstName <= aPerson firstName]
		]! !

!DyStudent class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:35:08'!
label
	^ 'student' translated! !

!DyStudent class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:35:30'!
pluralLabel
	^ 'Students' translated! !

!DyStudent class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/27/2023 00:39:46'!
export: persons to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(firstName lastName email);
		addFields: #(firstName lastName email);
		nextPutAll: persons ! !

!DyStudent class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/29/2023 16:57:44'!
importFrom: readStream
"Import student from a CSV file"
| reader |
	reader := NeoCSVReader on: readStream.
	reader readHeader = #('firstName' 'lastName' 'email')
		ifFalse: [self error: 'Headers should be firstName, lastName, email'].
	reader 
		recordClass: self;
		addFields: #(firstName: lastName: email:).
	^ reader upToEnd asSortedCollection ! !

!DyTeacher methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:52'!
isTeacher
	^ true! !

!DyTeacher methodsFor: 'visiting' stamp: 'hlsf 6/28/2023 00:18:07'!
accept: aVisitor
	^ aVisitor visitTeacher: self! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 8/9/2023 14:36:55'!
agenda
	^ agenda ifNil: [agenda := DyAgenda new]! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 16:24:19'!
allCourses
" Returns the collection of the user's courses"
	^ self classGroups inject: OrderedCollection new into: [:courses :aClassGroup |
		courses 	addAll: aClassGroup courses.
		courses ]! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 9/24/2023 15:44:35'!
classGroups
" Returns the collection of the user's class groups"
	^ schools inject: OrderedCollection new into: [:classGroups :aSchool |
		classGroups addAll: aSchool classGroups.
		classGroups ]! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 6/25/2023 23:54:13'!
schools
	^ schools ! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 6/25/2023 23:54:03'!
user
	^ user! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 11/7/2023 23:50:33'!
user: aPerson
	user := aPerson ! !

!DyUserData methodsFor: 'initialization' stamp: 'hlsf 9/24/2023 14:38:24'!
initialize
	super initialize.
	schools := OrderedCollection new.
	user := DyTeacher new.
	agenda := DyAgenda new owner: self! !

!DyUserData methodsFor: 'printing' stamp: 'hlsf 6/28/2023 00:09:47'!
printOn: str
	user firstName 
		ifNotNil:  [:firstName | str nextPutAll: ('{1}''s Dynabook' translated format: {firstName})]
		ifNil: [super printOn: str]! !

!DyUserData methodsFor: 'searching' stamp: 'hlsf 5/26/2024 22:51:36'!
courseAndGroupAt: aDateTime
" Search my course and group occuring at this date and time "
	schools do: [:aSchool |
		aSchool classGroups do: [:aClassGroup |
			aClassGroup courses do: [:aCourse |
				(aCourse isDuring: aDateTime) ifTrue: [^ Array with: aCourse with: aClassGroup ] 
			]
		]
	].
	^ nil! !

!DyUserData methodsFor: 'searching' stamp: 'hlsf 5/26/2024 22:52:20'!
courseAt: aDateTime
" Search my course occuring at this date and time "
	^ (self courseAndGroupAt: aDateTime) ifNotNil: [:anArray | anArray first]! !

!DyUserData methodsFor: 'searching' stamp: 'hlsf 9/21/2023 11:43:46'!
nextCourseHourAfter: aDateAndTime
"Search for the next course hour in the same course occuring at aDateAndTime"
	| course |
	course := self courseAt: aDateAndTime.
	course ifNil: [^nil].
	^ course nextCourseHourAfter: aDateAndTime date! !

!DyUserData methodsFor: 'visiting' stamp: 'hlsf 6/26/2023 21:28:11'!
accept: aVisitor
	^ aVisitor visitUserData: self! !

!DyUserData class methodsFor: 'accessing' stamp: 'hlsf 9/12/2023 21:58:37'!
basicCurrent
	^ Current! !

!DyUserData class methodsFor: 'accessing' stamp: 'hlsf 7/13/2023 09:42:21'!
current
	^ Current ifNil: [Current := self basicNew initialize]! !

!DyUserData class methodsFor: 'accessing' stamp: 'hlsf 9/11/2023 22:24:43'!
current: aDyUserData
	Current := aDyUserData ! !

!DyUserData class methodsFor: 'accessing' stamp: 'hlsf 7/13/2023 09:44:29'!
schoolOf: anObject
"Search the school tree this object belongs to"
	self current  schools do: [:school |			
		(school treePointsTo: anObject			) ifTrue: [^ school] ].
	^ nil! !

!DyUserData class methodsFor: 'initialization' stamp: 'hlsf 9/12/2023 21:54:25'!
reset
	self current: nil! !

!DyUserData class methodsFor: 'instance creation' stamp: 'hlsf 9/12/2023 21:57:49'!
new
	self error: 'Class ', self name, ' has only one instance active at a time'! !

!DyUserData class methodsFor: 'translated' stamp: 'hlsf 9/28/2023 11:23:46'!
daysOfWeek
	^ Week dayNames collect: [:day | day translated]! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 10/10/2024 21:56:17'!
addPage! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 10/10/2024 21:56:54'!
deletePage! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 8/16/2023 21:36:07'!
goBinder
	selectedSection := #binder.
	controlsManager plugBinderView.
	self changed: #isSection:! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 10/13/2024 13:10:07'!
goPage
	selectedSection := #page.
	controlsManager plugDocView .
	self changed: #isSection:! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 8/16/2023 21:36:10'!
goSettings
	selectedSection := #settings.
	controlsManager plugSettingsView.
	self changed: #isSection:! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 8/16/2023 21:36:14'!
goStart
	selectedSection := #start.
	controlsManager plugStartView.
	self changed: #isSection:! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 8/29/2024 11:48:32'!
goTasks
	selectedSection := #tasks.
	controlsManager plugTaskView.
	self changed: #isSection:! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 10/10/2024 21:56:25'!
nextPage! !

!Dynabook methodsFor: 'callback' stamp: 'hlsf 10/10/2024 21:56:38'!
previousPage! !

!Dynabook methodsFor: 'testing' stamp: 'hlsf 8/14/2023 22:29:40'!
isSection: aSymbolSection
"We have the start, task, binder, and settings sections"
	^ selectedSection == aSymbolSection ! !

!Dynabook methodsFor: 'initialization' stamp: 'hlsf 9/5/2024 10:59:45'!
initialize
	domain := DyDomain new.
	controlsManager := DyControlsManager new.
	controlsManager installDynabookView: self.
	self goStart.
	self view openInWorld ! !

!Dynabook methodsFor: 'accessing' stamp: 'hlsf 9/1/2024 09:59:47'!
controlsManager
	^ controlsManager ! !

!Dynabook methodsFor: 'accessing' stamp: 'hlsf 8/16/2023 21:40:14'!
domain
	^ domain! !

!Dynabook methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:00:32'!
view
	^ controlsManager dynabookView! !

!DyCommand methodsFor: 'accessing' stamp: 'hlsf 8/9/2023 14:47:05'!
presenter: aPresenter
	presenter := aPresenter ! !

!DyCommand methodsFor: 'command' stamp: 'hlsf 8/9/2023 14:47:27'!
execute
	self subclassResponsibility ! !

!DyCommand methodsFor: 'command' stamp: 'hlsf 8/9/2023 14:47:30'!
unexecute
	self subclassResponsibility ! !

!DyCommand methodsFor: 'initialize-release' stamp: 'hlsf 8/9/2023 14:48:16'!
release
" Let my subclass instances do clean up if necessary "! !

!DyPlatform methodsFor: 'user interface' stamp: 'hlsf 8/29/2024 11:50:31'!
iconToolbarSize
	^ 32! !

!DyPlatform methodsFor: 'user interface' stamp: 'hlsf 8/14/2023 22:11:06'!
miniToolbarSize
	^ self iconToolbarSize // 2! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 8/1/2023 12:12:16'!
iconsPath
	^ self rootPath / 'icons'! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 8/1/2023 12:04:45'!
rootPath
"Dynabook/ directory"
	^ DirectoryEntry smalltalkImageDirectory parent parent! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 8/20/2023 14:33:21'!
userDataPath
	^ self rootPath / 'data'! !

!DyPlatform methodsFor: 'preferences' stamp: 'hlsf 10/12/2024 10:09:22'!
preferences
	^ preferences ifNil: [self setPreferences ]! !

!DyPlatform methodsFor: 'preferences' stamp: 'hlsf 10/12/2024 10:39:10'!
setPreferences
	preferences := PreferenceSet new.
	preferences 
		name: #paperRatio
		description: 'The default ratio of a page document expressed with two numbers in width and ehight.' translated
		category: #dybo 
		type: {4@3 . 16@9 . 210@297} 
		value: 16@9;
		
		name: #paperBackground
		description: 'The default background for a new page in a document.' translated
		category: #dybo
		type: {BackgroundMorph}
		value: BackgroundMorph.
		
	^ preferences! !

!DyPlatform methodsFor: 'initialize-release' stamp: 'hlsf 10/12/2024 10:50:06'!
reset
	preferences := nil! !

!DyDevelopment methodsFor: 'path' stamp: 'hlsf 8/13/2023 16:31:47'!
iconsPath
	^ self rootPath / 'resources' / 'graphics' / 'icons'! !

!DyDevelopment methodsFor: 'path' stamp: 'hlsf 10/10/2024 10:18:28'!
rootPath
"dynabook/ directory"
	^ DirectoryEntry smalltalkImageDirectory parent / 'DyboApp'! !

!DyDevelopment methodsFor: 'path' stamp: 'hlsf 8/20/2023 21:48:08'!
userDataPath
	^ self rootPath / 'resources' / 'data'! !

!DySystem class methodsFor: 'class initialization' stamp: 'hlsf 8/9/2023 14:40:44'!
beApplication
	platform := DyPlatform new! !

!DySystem class methodsFor: 'class initialization' stamp: 'hlsf 8/9/2023 14:41:14'!
beDevelopment
	platform := DyDevelopment new! !

!DySystem class methodsFor: 'class initialization' stamp: 'hlsf 10/12/2024 10:50:25'!
reset
	platform reset! !

!DySystem class methodsFor: 'user interface' stamp: 'hlsf 8/14/2023 22:11:06'!
iconToolbarSize
" Size of the squared icons in the top toolbar"
	^ platform iconToolbarSize ! !

!DySystem class methodsFor: 'user interface' stamp: 'hlsf 8/13/2023 17:16:57'!
miniToolbarSize
" Size of the squared icons in the secondary toolbar"
	^ platform miniToolbarSize ! !

!DySystem class methodsFor: 'user interface' stamp: 'hlsf 10/12/2024 09:40:04'!
screenSize
	^ self runningWorld morphExtent! !

!DySystem class methodsFor: 'path' stamp: 'hlsf 8/1/2023 11:53:04'!
iconsPath
	^ platform iconsPath! !

!DySystem class methodsFor: 'path' stamp: 'hlsf 8/20/2023 14:30:45'!
userDataPath
" the location of the user data and documents "
	^ platform userDataPath! !

!DySystem class methodsFor: 'events' stamp: 'hlsf 8/11/2024 10:47:46'!
rename: oldName to: newName in: parentDir
	| dir |
	oldName = newName ifTrue: [^ self].
	oldName 
		ifNil: [" folder does not exist yet, create it "
			(parentDir / newName asFileName ) assureExistence ]
	 	ifNotNil: [ " folder exists, rename it "
			(dir := parentDir / oldName asFileName) exists 
				ifTrue: [dir rename: newName asFileName ] 
				ifFalse: [(parentDir / newName asFileName ) assureExistence]						]! !

!DySystem class methodsFor: 'events' stamp: 'hlsf 10/3/2023 22:38:26'!
renameClassGroup: aClassGroup from: oldName to: newName
	self rename: oldName to: newName in: self userDataPath / aClassGroup school dirName! !

!DySystem class methodsFor: 'events' stamp: 'hlsf 10/3/2023 22:37:42'!
renameCourse: aCourse from: oldName to: newName
	| school classGroup |
	classGroup := aCourse classGroup.
	school := classGroup school.
	self rename: oldName to: newName in: self userDataPath / school dirName / classGroup dirName! !

!DySystem class methodsFor: 'events' stamp: 'hlsf 8/22/2023 21:25:21'!
renameSchool: aSchool from: oldName to: newName
"Should use a data manager facade at some point "
	self rename: oldName to: newName in: self userDataPath! !

!DySystem class methodsFor: 'events' stamp: 'hlsf 8/20/2023 17:06:56'!
renameTopic: aTopic from: oldName to: newName! !

!DySystem class methodsFor: 'cleaning' stamp: 'hlsf 8/22/2023 20:57:02'!
removeUserData
	#(renamedSchool renamedClassGroup renamedCourse renamedTopic) do: [:anEvent |
		self removeActionsForEvent: anEvent].
	self userDataPath childrenDo: [:each | each recursiveDelete ].
	! !

!DySystem class methodsFor: 'accessing' stamp: 'hlsf 10/12/2024 10:58:37'!
defaultPaperSize
" Its width fill the screen, according to its default ratio "
	
	^ (self paperRatio * (self screenSize x / self paperRatio x) asFloat) asIntegerPoint .! !

!DySystem class methodsFor: 'accessing' stamp: 'hlsf 10/12/2024 10:51:41'!
paperBackground
	^ self preferences at: #paperBackground! !

!DySystem class methodsFor: 'accessing' stamp: 'hlsf 10/12/2024 10:51:23'!
paperRatio
	^ self preferences at: #paperRatio! !

!DySystem class methodsFor: 'accessing' stamp: 'hlsf 10/12/2024 09:38:35'!
preferences
	^ platform preferences! !

!DyControlsManager methodsFor: 'Doc-circularTool' stamp: 'hlsf 10/13/2024 16:58:33'!
docCircularToolbar
	| toolsData |
	docTools ifNotNil: [^ docTools].
	toolsData := OrderedCollection 
		with: self penColorTools 
		with: self highlighterColorTools .
	docTools := CircularToolbarMorph new
		color: dynabookView defaultColor ;
		selectedColor: dynabookView buttonColor;
		extent: 200;
		buttonSize: DySystem iconToolbarSize + 8;
		dropDownHeight: 10.
	toolsData do: [:subToolsData | | dropDown |
		dropDown := (self addChevron: subToolsData first to: docTools) addDropDown .
		subToolsData do: [:aToolData | self addChevron: aToolData to: dropDown subtoolbar 		] ].
	^ docTools ! !

!DyControlsManager methodsFor: 'Doc-circularTool' stamp: 'hlsf 10/13/2024 16:37:40'!
highlighterColorTools
" Data to build the circular sub toolbar of pen colors "
	| size help |
	size := DySystem iconToolbarSize .
	help := 'Highlight with a {1} color.' translated.
	" XXX any other idea to get the color strings taken in consideration for translation? "	
	'yellow' translated. " Other colors marked for translation in penColorToolsOn: method "
	^ #('yellow' 'red' 'blue' 'green') collect: [:aColor | 
		Array 
			with:	(#highlighter, aColor capitalized) asSymbol
			with: (	icons getForm: HighlighterTool iconName ofSize: size fill: (Color perform: aColor asSymbol))
			with: (help format: {aColor translated})		 	]! !

!DyControlsManager methodsFor: 'Doc-circularTool' stamp: 'hlsf 10/13/2024 16:34:51'!
penColorTools
" Data to build the circular sub toolbar of pen colors "
	| size help |
	size := DySystem iconToolbarSize.
	help := 'Write with a {1} color.' translated.
	" XXX any other idea to get the color strings taken in consideration for translation? "	
	'black' translated. 'blue' translated. 	'green' translated. 'red' translated. 'white' translated.
	^ #('black' 'blue' 'green' 'red' 'white') collect: [:aColor | 
		Array 
			with:	(#pen, aColor capitalized) asSymbol
			with: (	icons getForm: PenTool iconName ofSize: size fill: (Color perform: aColor asSymbol))
			with: (help format: {aColor translated})		 	]! !

!DyControlsManager methodsFor: 'Doc' stamp: 'hlsf 10/13/2024 13:09:40'!
buildDocView
	| row col |
	docView := DocumentView presenter: (Document controlsManager: self).
	docView 
		addMorph: self docHorizontalToolbar
		layoutSpec: (LayoutSpec fixedHeight: DySystem miniToolbarSize + 4).
	row := LayoutMorph newRow 					addMorphUseAll: (PageContainer for: 		docView currentPage).
	" vertical and zoom wheels at the right "
	col := LayoutMorph newColumn name: #wheelsYZ.
	col addMorph: self zoomWheel layoutSpec: (LayoutSpec fixedExtent: 24@	120).
	#(zoom100 fitWidth fitScreen) do: [:aZoomTool |
		col addMorph: 
			(self on: self docPresenter button: aZoomTool state: #isTool: size: DySystem miniToolbarSize)].	
	col	addMorphUseAll: DyControlsManager spacer;
		addMorph: self verticalWheel layoutSpec: (LayoutSpec fixedExtent: 24@	120).
	row addMorph: col  layoutSpec: (LayoutSpec fixedWidth: 24 + 1 proportionalHeight: 1).
	docView addMorph: row.
	
	" status bar and horizontal wheel at the bottom "
	row := LayoutMorph newRow name: #wheelX.
	row addMorphUseAll: self statusBarInScroller;
		addMorph:self horizontalWheel 		layoutSpec: 		(LayoutSpec 	fixedExtent: 120 @ 24);
		addMorph: DyControlsManager spacer layoutSpec: 			(LayoutSpec 		fixedExtent: 24 asPoint).
	docView addMorph: row layoutSpec: (LayoutSpec fixedHeight: 24).
	docView adoptWidgetsColor: docView defaultBorderColor.
	^ docView! !

!DyControlsManager methodsFor: 'Doc' stamp: 'hlsf 10/13/2024 13:07:58'!
docHorizontalToolbar
	| toolbar buttonWidth |
	toolbar := LayoutMorph newRow 		separation: 2.
	buttonWidth := DySystem miniToolbarSize.
	 #(select pen eraser highlighter undo redo 
	blank 
	previousPage nextPage 
	blank 
	deletePage addPage) do: [:aTool | 
		aTool 
			caseOf: {
				[ #spacer ] -> [ toolbar addMorphUseAll: self class spacer ] .
				[ #blank ] -> [ toolbar addMorph: (self class spacer: buttonWidth) ] 			}
			otherwise: [		
				toolbar addMorph: (				
					self on: self docPresenter 					button: aTool 			state: #isTool: 					size: buttonWidth )] 				].
	^ toolbar! !

!DyControlsManager methodsFor: 'Doc' stamp: 'hlsf 10/13/2024 13:09:40'!
docPresenter
" Access the presenter of the currently used document, if any "
	^ docView presenter! !

!DyControlsManager methodsFor: 'Doc' stamp: 'hlsf 10/13/2024 13:09:40'!
docView
	^ docView! !

!DyControlsManager methodsFor: 'Doc' stamp: 'hlsf 8/31/2024 10:45:00'!
statusBarMessage: aString
	statusBar ifNotNil: [
		statusBar contents: aString;
			adjustExtent ;
			redrawNeeded]
		! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/10/2024 10:41:53'!
addPageButtonData
	^ {'New page' translated . 
	#addObject . 
	#addPage . 
	'Insert a new page after the current one.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/10/2024 10:44:15'!
deletePageButtonData
	^ {'Delete page' translated . 
	#removeObject . 
	#deletePage . 
	'Delete the current page.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 9/5/2024 11:37:03'!
eraserButtonData
	^ {EraserTool title. 
	EraserTool iconName . 
	EraserTool action . 
	EraserTool description }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/12/2024 11:15:36'!
fitScreenButtonData
	^ {'Fit screen' translated . 
	#fitScreen . 
	#fitScreenPage . 
	'Scale the page to make it entirely visible.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/11/2024 19:34:49'!
fitWidthButtonData
	^ {'Fit width' translated . 
	#fitWidth . 
	#fitWidthPage . 
	'Scale the page to fit the window width.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 9/5/2024 11:38:02'!
highlighterButtonData
	^ {HighlighterTool title. 
	HighlighterTool iconName . 
	HighlighterTool action. 
	HighlighterTool description }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/10/2024 10:45:36'!
nextPageButtonData
	^ {'Next page' translated . 
	#nextObject . 
	#nextPage . 
	'Go to the next page of the document.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 9/5/2024 11:11:21'!
pageButtonData
" label - iconName - callback - description "
	^ {'New page' translated . 
	#page . 
	#goPage . 
	'Open a blank page to start writing.' translated }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 9/5/2024 11:38:30'!
penButtonData
	^ {PenTool title. 
	PenTool iconName . 
	PenTool action . 
	PenTool description }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/10/2024 10:45:09'!
previousPageButtonData
	^ {'Previous page' translated . 
	#previousObject . 
	#previousPage . 
	'Go to the previous page of the document.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/10/2024 10:42:41'!
redoButtonData
	^ {'Redo' translated . 
	#redo . 
	#redoAction . 
	'Redo your last undone action.' translated }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 9/5/2024 11:39:05'!
selectButtonData
	^ {SelectTool title. 
	SelectTool iconName . 
	SelectTool action . 
	SelectTool description }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/10/2024 10:42:52'!
undoButtonData
	^ {'Undo' translated . 
	#undo . 
	#undoAction . 
	'Undo your last action.' translated  }! !

!DyControlsManager methodsFor: 'Doc-controls data' stamp: 'hlsf 10/11/2024 19:36:38'!
zoom100ButtonData
	^ {'Zoom 100%' translated . 
	#zoom100 . 
	#zoomPageTo100 . 
	'Zoom the page to its natural scale of 1:1 or 100%.' translated  }! !

!DyControlsManager methodsFor: 'Doc-widget' stamp: 'hlsf 10/13/2024 17:11:46'!
addChevron: data to: aToolbar
	"data first = action selector
	data second = button form 
	data third = help string	"	
	^ (aToolbar addButton: data second)
		model: self docPresenter ;
		action: data first;
		state: #isToolColor: ; 		argument: data first;
		setBalloonText: data third ;
		yourself	! !

!DyControlsManager methodsFor: 'Doc-widget' stamp: 'hlsf 10/13/2024 13:07:58'!
horizontalWheel 
	^ (WheelMorph target: self docPresenter actionSelector: #moveOXAction:)
		beHorizontal; 
		factor: 1; 
		setBalloonText: 'Scroll the document to the left or right.' translated;
		borderWidth: 3;
		color: Color orange;
		borderColor: Color black;
		yourself! !

!DyControlsManager methodsFor: 'Doc-widget' stamp: 'hlsf 8/31/2024 10:43:26'!
statusBar
"A bar to print contextual information"
	^ statusBar ifNil: [
		statusBar := TextParagraphMorph new
			color: Color transparent;
			borderWidth: 0;
			setHeightOnContent ;
			yourself	]
	
	! !

!DyControlsManager methodsFor: 'Doc-widget' stamp: 'hlsf 8/31/2024 10:43:38'!
statusBarInScroller
	^ PluggableScrollPane new scroller: self statusBar; 
		borderWidth: 2;
		borderColor: Color transparent ;
		color: Color transparent;
		yourself! !

!DyControlsManager methodsFor: 'Doc-widget' stamp: 'hlsf 10/13/2024 13:07:58'!
verticalWheel 
	^  (WheelMorph target: self docPresenter actionSelector: #moveOYAction:)
		beVertical; 
		factor: 1; 
		setBalloonText: 'Scroll the document up or down.' translated; 
		borderWidth: 3;
		color: Color orange;
		borderColor: Color  black ;
		yourself		
		! !

!DyControlsManager methodsFor: 'Doc-widget' stamp: 'hlsf 10/13/2024 13:07:58'!
zoomWheel 
	^  (WheelMorph target: self docPresenter actionSelector: #zoomAction:)
		beVertical; 
		factor: 0.005; 
		setBalloonText: 'Zoom in or out the document.' translated; 
		borderWidth: 3;
		color: Color gray;
		borderColor: Color black;
		yourself! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:01:23'!
dynabookPresenter
	^ dynabookView presenter! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:00:47'!
dynabookView
	^ dynabookView! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 9/5/2024 11:11:00'!
binderButtonData
" label - iconName - callback - description "
	^ {'Binders' translated . 
	#binder . 
	#goBinder . 
	'In the Binders, find the documents of your courses and start a new one.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 9/5/2024 11:11:51'!
settingsButtonData
" label - iconName - callback - description "
	^ {'Settings' translated . 
	#settings . 
	#goSettings . 
	'In the Settings, edit your course and student lists.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 9/5/2024 11:11:57'!
startButtonData
" label - iconName - callback - description "
	^ {'Start' translated . 
	#start . 
	#goStart . 
	'In Start, review and search for the recent activities.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 9/5/2024 11:12:02'!
tasksButtonData
" label - iconName - callback - description "
	^ {'Tasks' translated . 
	#tasks . 
	#goTasks . 
	'In the Tasks, review forthcoming tasks and assign a new one.' translated }! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 9/17/2024 18:07:57'!
initialize
	icons := IconImporter path: DySystem iconsPath ! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 10/10/2024 11:09:55'!
dynabookToolbar
	| toolbar buttonWidth|
	toolbar := LayoutMorph newRow 		separation: 5.
	buttonWidth := DySystem iconToolbarSize.
	self dynabookTools do: [:aTool | 
		aTool 
			caseOf: {
				[ #spacer ] -> [ toolbar addMorphUseAll: self class spacer ] .
				[ #blank ] -> [ toolbar addMorph: (self class spacer: buttonWidth) ] 			}
			otherwise: [	
				toolbar addMorph: (
					self on: self dynabookPresenter 					button: aTool  					state: #isSection: 					size: buttonWidth )] ].
	^ toolbar! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 9/2/2024 20:57:24'!
dynabookTools
	^ #(start tasks binder page spacer settings)! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 9/5/2024 11:00:47'!
installDynabookView: aPresenter
	dynabookView := DynabookView for: aPresenter.
	dynabookView 
		addMorph: self dynabookToolbar 
		layoutSpec: (LayoutSpec fixedHeight: DySystem iconToolbarSize + 4).
	self plugStartView! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 9/5/2024 11:01:23'!
plugBinderView
	self plugInDynabookView: (DyBinderView presenter: self dynabookPresenter)! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 10/13/2024 13:10:07'!
plugDocView
	self plugInDynabookView: self buildDocView ! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 9/5/2024 11:00:47'!
plugInDynabookView: aMorph
" plug in the dynabook main view this morph, below its toolbar "
	| layout |
	layout := dynabookView layoutMorph.
	layout submorphCount = 2 ifTrue: [
		layout removeMorph: layout firstSubmorph].
	layout addMorphUseAll: aMorph.
	dynabookView changed! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 9/5/2024 11:01:23'!
plugSettingsView
	self plugInDynabookView: (
		BreadcrumbsPane 
			on: self dynabookPresenter domain userData 
			with: DyViewerVisitor )! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 8/16/2023 21:08:23'!
plugStartView
! !

!DyControlsManager methodsFor: 'main' stamp: 'hlsf 9/5/2024 11:01:23'!
plugTaskView
	self plugInDynabookView: (DyAgendaView presenter: self dynabookPresenter)! !

!DyControlsManager methodsFor: 'widget' stamp: 'hlsf 9/17/2024 18:08:45'!
on: aPresenter button: symbol state: stateGetter size: size
	"array first = menu label or button label
	array second = button form = section mode
	array third = symbol callback
	array fourth = help string	"	
	| array |
	array := self perform: (symbol, #ButtonData) asSymbol.
	^ ButtonMorph 
		model: aPresenter
		stateGetter: stateGetter
		action: array third ::
		stateArgument: (stateGetter isUnary ifTrue: [nil] ifFalse: [array second]);
		icon: (icons getForm: array second ofSize: size);
		setBalloonText: array fourth;
		color: dynabookView defaultColor ;
		selectedColor: dynabookView buttonColor ;
		borderColor: dynabookView defaultColor darker;
		borderWidth: 2;
		morphExtent: (size  * 1.3) rounded asPoint;
		yourself	! !

!DyControlsManager class methodsFor: 'widget' stamp: 'hlsf 10/10/2024 11:00:40'!
spacer
	^ self spacer: 1! !

!DyControlsManager class methodsFor: 'widget' stamp: 'hlsf 10/10/2024 11:00:08'!
spacer: size
	^ ColoredBoxMorph new 
		color: Color transparent; 
		morphWidth: size;
		yourself! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 10:25:09'!
decoratedPaneFor: aMold labeled: aMessage
	^ DecoratedPane 
			open: (PluggableScrollPane new 
				layoutSpec: LayoutSpec useAll;
				scroller: aMold newPane;
				yourself) 
			label: aMessage ! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 10:59:55'!
visitAgenda: agenda
| mold |
	mold := agenda mold.
	mold when: #edited send: #triggerEvent: to: agenda with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self editorsFor: agenda daysOff ofType: DyDayInterval}! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 11:00:38'!
visitClassGroup: class
| mold |
	mold := class mold.
	mold when: #edited send: #triggerEvent: to: class with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self decoratedPaneFor: class headTeacher mold labeled: 'Head teacher' translated.
		self editorsFor: class courses ofType: DyCourse in: class.
		self editorsFor: class students ofType: DyStudent }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 11:01:16'!
visitCourse: course 
| mold |
	mold := course mold.
	mold when: #edited send: #triggerEvent: to: course with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self editorsFor: course courseHours ofType: DyCourseHour .
		self decoratedPaneFor: course teacher mold labeled: 'Teacher' translated.
		self editorsFor: course topics ofType: DyTopic in: course
		}! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 11:01:34'!
visitCourseHour: courseHour
| mold |
	mold := courseHour mold: (DyUserData schoolOf: courseHour).
	mold when: #edited send: #triggerEvent: to: courseHour with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Information' translated }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 11:01:56'!
visitSchool: school 
| mold |
	mold := school mold.
	mold when: #edited send: #triggerEvent: to: school with: #edited.
	^ self newColumnWith: { 
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self editorsFor: school classGroups ofType: DyClassGroup in: school.
		self 	editorsFor: school timeSlots 			ofType: DyTimeSlot. }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 11:02:13'!
visitTeacher: teacher
| mold |
	mold := teacher mold.
	mold when: #edited send: #triggerEvent: to: teacher with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Teacher' translated }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/14/2024 10:25:32'!
visitUserData: userData
| mold |
	mold := userData user mold.
	mold when: #edited send: #triggerEvent: to: userData with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Owner' translated.
		self editorsFor: userData schools ofType: DySchool in: userData}! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 8/22/2023 21:15:02'!
editorsFor: aCollection ofType: classModel 
	^ self editorsFor: aCollection ofType: classModel in: nil! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 5/26/2024 15:40:34'!
editorsFor: aCollection ofType: classModel in: anOwner
" A decorated editor to edit a collection of models "
	| listMorph quickButtons decoratedPanel |
	listMorph := PluggableListMorph 
		withModel: (ListModel with: aCollection )		
		listGetter: #list 		indexGetter: #listIndex indexSetter: #listIndex:.
	decoratedPanel := DecoratedPane open: listMorph label: classModel pluralLabel .
	quickButtons := OrderedCollection new.
	quickButtons add: (PluggableButtonMorph 
		model: self 		stateGetter: nil stateArgument: nil 	action: #quickAdd: 
		actionArgument: (Array with: classModel with: decoratedPanel with: listMorph with: anOwner)
		label: nil ::
		icon: Theme current listAddIcon;
		setBalloonText: ('Add a new {1}' translated format: {classModel label});
		yourself).
	quickButtons add: (PluggableButtonMorph 
		model: self 		stateGetter: nil stateArgument: nil 	action: #quickEdit: 
		actionArgument: (Array with: decoratedPanel with: listMorph)
		label: nil ::
		icon: Theme current textEditorIcon;
		setBalloonText: ('Edit the selected {1}' translated format: {classModel label});
		yourself).
	quickButtons add: (PluggableButtonMorph 
		model: self 		stateGetter: nil stateArgument: nil 	action: #quickDelete: 
		actionArgument: (Array with: decoratedPanel with: listMorph)
		label: nil ::
		icon: Theme current deleteIcon ;
		setBalloonText: ('Delete the selected {1}' translated format: {classModel label });
		yourself).	
	(classModel respondsTo: #importFrom:) ifTrue: [
		quickButtons add: (PluggableButtonMorph 
			model: self 		stateGetter: nil stateArgument: nil 	action: #quickImport: 
			actionArgument: (Array with: classModel with: aCollection with: listMorph)
			label: nil ::
			icon: Theme current openIcon ;
			setBalloonText: 'Import from a file' translated;
			yourself) ]. 	
	(classModel respondsTo: #export:to:) ifTrue: [
		quickButtons add: (PluggableButtonMorph 
			model: self 		stateGetter: nil stateArgument: nil 	action: #quickExport: 
			actionArgument: (Array with: classModel with: aCollection )
			label: nil ::
			icon: Theme current saveIcon ;
			setBalloonText: 'Export to a file' translated;
			yourself) ].	
	decoratedPanel quickButtons: quickButtons.
	^ decoratedPanel! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 5/11/2024 17:45:10'!
newColumnWith: morphs
| column |
	column := LayoutMorph newColumn.
	morphs 
		do: [: aMorph | column addMorph: aMorph]
		separatedBy: 	[column addAdjusterMorph ].
	column morphExtent: column minimumExtent.
	^ column ! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 9/21/2023 10:55:12'!
quickAdd: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to instantiate
2. the decorated pane
3. the listMorph
4. an optional owner of the instantiated object, nil otherwise
"
 | school objectClass decorator listModel listMorph newObject objectMold objectPane quickButtons |
	objectClass := args first.
	decorator := args second.
	listMorph := args third .
	listModel := listMorph model.
	quickButtons := decorator quickButtons.
	newObject := objectClass new.
	args fourth ifNotNil: [:owner | newObject owner: owner].
	objectMold := (newObject respondsTo: #mold:) 
		ifTrue: [
			school := DyUserData schoolOf: listModel list.
			school ifNil: [^ self] .
			newObject mold: school] 
		ifFalse: [newObject mold].
	objectPane := objectMold newPane.
	objectPane layoutSpec: LayoutSpec useAll.
	objectPane 
		actionOnButton: [
			objectMold validate.
			objectMold isValid ifTrue: [
				newObject registerEvents. " first "
				objectMold save.
				listModel list add: newObject .
				decorator replaceSubmorph: objectPane by: listMorph.
				quickButtons submorphsDo: #lockUnlockMorph.
				listModel changed: #list]					
			];
		actionOnAltButton: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 8/27/2023 15:37:31'!
quickDelete: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the decorated pane
2. the listMorph
"
 | decorator listModel listMorph objectPane text quickButtons |
	decorator := args first .
	listMorph := args second .
	listModel := listMorph model.
	listModel listIndex isZero ifTrue: [^ self]. "no selected item"
	quickButtons := decorator quickButtons.
	text := TextParagraphMorph contents: ('Are you sure to delete 	"{1}" ?' format: {listModel selectedItem}) :: borderWidth: 0; color: Color transparent.
	objectPane := nil.
	objectPane := PluggablePane open: [text] view: #value action:[
		listModel removeSelectedItem.
		decorator replaceSubmorph: objectPane by: listMorph.
		quickButtons submorphsDo: #lockUnlockMorph.
		listModel changed: #list]				.
	objectPane
		actionOnAltButton: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	objectPane layoutSpec: LayoutSpec useAll.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 8/27/2023 15:34:57'!
quickEdit: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the decorated pane
2. the listMorph
"
 | decorator listModel listMorph objectMold objectPane quickButtons |
	decorator := args first .
	listMorph := args second .
	listModel := listMorph model.
	listModel listIndex isZero ifTrue: [^ self]. "no selected item"
	quickButtons := decorator quickButtons.
	objectMold := (listModel selectedItem respondsTo: #mold:) 
		ifTrue: [listModel selectedItem mold: (DyUserData schoolOf: listModel list)] 
		ifFalse: [listModel selectedItem mold].
	objectPane := objectMold newPane.
	objectPane layoutSpec: LayoutSpec useAll.
	objectPane 
		actionOnButton: [
			objectMold validate.
			objectMold isValid ifTrue: [
				objectMold save.
				decorator replaceSubmorph: objectPane by: listMorph.
				quickButtons submorphsDo: #lockUnlockMorph.
				(listModel selectedItem respondsTo: #<=) ifTrue: [
					listModel list reSort].
				listModel changed: #list]					
			];
		actionOnAltButton: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 10/10/2023 23:05:57'!
quickExport: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to instantiate
2. the collection to export 
"
	|answer  |
	answer := (StandardFileMenu new newFileFrom: DirectoryEntry smalltalkImageDirectory withPattern: '*.csv' excludePattern: '.*') startUpWithCaption: 'CSV file to export' translated.
	answer ifNotNil: [
		answer directory // answer name writeStreamDo: [:str |
			args first export: args second to: str ]]! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/26/2023 13:12:40'!
quickImport: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to import
2. the curent collection of this object
3. the listMorph of the collection
"
| importedCollection answer |
	answer := (StandardFileMenu new oldFileFrom: DirectoryEntry smalltalkImageDirectory withPattern: '*.csv' excludePattern: '.*') 
		startUpWithCaption: 'CSV file to import' translated.
	answer ifNotNil: [
		answer directory // answer name readStreamDo: [:str |
			importedCollection := args first importFrom: str .
			importedCollection ifNotNil: [ 
				args second become: importedCollection.
				args third updateList]] ]! !

!DyPreviewVisitor methodsFor: 'visiting' stamp: 'hlsf 10/14/2023 17:11:09'!
visitDocument: document! !

!DyPreviewVisitor methodsFor: 'ui' stamp: 'hlsf 10/14/2023 17:15:09'!
previewWidth
	^ `150 + 12`! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 6/26/2023 21:29:08'!
paneFor: anObject label: aTitle 
	^self paneFor: anObject label: aTitle browse: true! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 7/1/2023 21:23:29'!
paneFor: anObject label: aTitle browse: canBeBrowsed
" Present the view of an object in a decorated pane with a title "
	| viewBuilderMessage attributeView scroller |
	viewBuilderMessage := anObject isCollection 
		ifTrue:  [#viewsFor:browse:]
		ifFalse: [#viewFor:browse:].
	attributeView := self perform: viewBuilderMessage with: anObject with: canBeBrowsed.
	scroller := PluggableScrollPane new ::
		layoutSpec: LayoutSpec useAll;
		scroller: attributeView.
	attributeView morphWidth: scroller viewableExtent x.
	^ DecoratedPane open: scroller label: aTitle ! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 8/27/2023 15:50:40'!
plugView: aMorph
" Add an Edit button to this contents "
	| viewer |
	viewer := nil.
	viewer := PluggablePane 
		open: [aMorph] 
		view: #value 
		action: 	["Edit me" 
			viewer owner 
				replaceView: viewer 
				byView: (visitedModel accept: DyEditorVisitor new)			] 
		altAction: [		
			ReferenceStream 
				dumpOnFile: (DySystem userDataPath // 'data.ob') 
				object: DyUserData current] 
		::
		buttonLabel: 'Edit' translated;
		altButtonLabel: 'Save' translated;
		buildMorphicWindow ;
		layoutSpec: LayoutSpec useAll;
		yourself.
	^ viewer ! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 8/12/2023 13:58:45'!
viewFor: anAttribute browse: canBeBrowsed
" Present a text view of an attribute."
	| aTextView |
	aTextView := TextParagraphMorph contents: anAttribute printString :: 
		setHeightOnContent ;
		color: Color transparent;
		borderWidth: 0;
		yourself.
	canBeBrowsed ifTrue: [
		aTextView 
			setBalloonText: 
				('Click to browse "{1}".' translated format: {anAttribute printString});			
			setProperty: #'handlesMouseDown:' 					toValue: [ :ignored | true ];
			setProperty: #'mouseButton1Up:localPosition:'
			toValue: [ :event :position | visitedModel triggerEvent: #browseTo with: anAttribute]].
	^ aTextView ! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 7/3/2023 12:30:05'!
viewsFor: aCollection browse: canBeBrowsed
" Present a column of text views for each item of the collection"
	| column |
	column := LayoutMorph newColumn ::
		layoutSpec: LayoutSpec new ;
		color: Color transparent;
		yourself.
	aCollection do: [:anAttribute | 		
		column 
			addMorph: 	(self viewFor: anAttribute browse: canBeBrowsed )		 
			layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: #columnLeft) ].
	column morphExtent: column minimumExtent.
	^ column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/29/2023 16:34:57'!
visitAgenda: agenda
	| column |
	visitedModel := agenda .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: agenda			label: 'School year period' translated browse: false);	
		addMorph: (self paneFor: agenda daysOff label: 'Days off' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/27/2023 00:52:27'!
visitClassGroup: class
	| column |
	visitedModel := class .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: class headTeacher label: 'Head teacher' translated browse: false);	
		addMorph: (self paneFor: class courses label: 'Lessons' translated);
		addMorph: (self paneFor: class students label: 'Students' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 10/8/2023 23:17:13'!
visitCourse: course
	| column |
	visitedModel := course .
	column := LayoutMorph newColumn.
	column
		addMorph: (self paneFor: course courseHours label: 'Periods' translated browse: false);
		addMorph: (self paneFor: course teacher label: 'Teacher' translated browse: false);
		addMorph: (self paneFor: course topics label: 'Topics' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 9/28/2023 12:08:32'!
visitCourseHour: courseHour
	| column slots|
	visitedModel := courseHour .
	slots := ListMultiModel with: (DyUserData schoolOf: courseHour) timeSlots ::
		selectedItems: courseHour timeSlots.
	column := LayoutMorph newColumn.
	column 	
		addMorph: (self paneFor: slots selectedItems label: 'Period(s)' translated browse: false).
	^ self plugView: column	! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/3/2023 15:14:16'!
visitSchool: school
	| column |
	visitedModel := school .
	column := LayoutMorph newColumn.
	column 	
		addMorph: (self paneFor: school classGroups label: 'Classes' translated);
		addMorph: (self paneFor: school timeSlots label: 'Time slots' translated browse: false)		.
	^ self plugView: column	! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/3/2023 15:00:42'!
visitTeacher: teacher
	| column |
	visitedModel := teacher .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: teacher classGroups label: 'Classes ' translated).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/30/2023 18:08:50'!
visitUserData: userData
	| column |
	visitedModel := userData.
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: userData schools label: 'Schools' translated);
		addMorph: (self paneFor: userData agenda label: 'Agenda' translated).
	^ self plugView: column! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 19:58:55'!
end
	^ endTime! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 20:01:48'!
end: aTime
	endTime := aTime! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 19:58:11'!
slotName
	^ name! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 20:02:10'!
slotName: aString
	name := 	aString ! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 19:56:55'!
start
	^ startTime ! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 20:01:59'!
start: aTime
	startTime := aTime ! !

!DyTimeSlot methodsFor: 'printing' stamp: 'hlsf 6/19/2023 21:50:54'!
printOn: aStream
	name ifNil: [ super printOn: aStream ]
		ifNotNil: [	
			aStream nextPutAll: name; 				space.
			startTime print24: true showSeconds: false on: aStream.
			aStream 	nextPut: $-.
			endTime print24: true showSeconds: false on: aStream]! !

!DyTimeSlot methodsFor: 'user interface' stamp: 'hlsf 6/30/2023 21:15:31'!
mold
	| mold start |
	mold := Mold new.
	mold stringField
		label: 'Name' translated;
		on: #slotName of: self;
		beRequired.
	(start := mold timeField)
		label: 'Start time' translated;
		example: '8:35';
		on: #start of: self;
		beRequired.
	mold timeField 
		label: 'End time' translated;
		on: #end of: self;
		addCondition: [:input :value | input isEmptyOrNil or: [value > start value ] ]
			labeled: 'End time can''t preced start time.' translated.
	^ mold
	! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 9/14/2023 15:50:29'!
< aTimeSlot
	^ startTime < aTimeSlot start or: [endTime < aTimeSlot end]! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 9/14/2023 15:53:07'!
= aTimeSlot
	^ startTime = aTimeSlot start and: [endTime = aTimeSlot end]! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 9/14/2023 15:53:29'!
hash
	^ startTime hash bitXor: endTime end! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 9/10/2023 23:15:56'!
includes: aTime
	^ startTime <= aTime and: [endTime >= aTime]! !

!DyTimeSlot class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:37:26'!
label
	^ 'time slot' translated! !

!DyTimeSlot class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:37:35'!
pluralLabel
	^ 'Time slots' translated! !

!DyTimeSlot class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/26/2023 13:10:13'!
export: timeSlots to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(slotName start end);
		addFields: #(slotName start end);
		nextPutAll: timeSlots! !

!DyTimeSlot class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/26/2023 13:09:22'!
importFrom: readStream
"Import time slots from a CSV file with header:
timeSlotName,start, end "
| reader |
	reader := NeoCSVReader on: readStream.
	reader readHeader = #('slotName' 'start' 'end')
		ifFalse: [self error: 'Headers should be slotName, start, end'].
	reader 
		recordClass: self;
		addField: #slotName:;
		addField: #start: converter: [:s | Time fromString: s];
		addField: #end: converter: [:s | Time fromString: s].
	^ reader upToEnd asSortedCollection ! !

!DyView methodsFor: 'ui' stamp: 'hlsf 10/1/2023 18:53:08'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DyView methodsFor: 'ui' stamp: 'hlsf 10/1/2023 18:53:14'!
defaultBorderColor
	^ Theme current transcript! !

!DyView methodsFor: 'ui' stamp: 'hlsf 10/1/2023 18:53:20'!
defaultColor
	^Theme current paneBackgroundFrom: self defaultBorderColor ! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 16:55:05'!
classGroup
" The selected class group, if any "
	^ self classGroups at: classGroupIndex ifAbsent: [nil]! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 16:40:17'!
classGroupCourses
	^ self classGroup ifNil: [`Array new`] ifNotNil: [:cg | cg courses]! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 10/3/2023 22:45:18'!
classGroupIndex
	^ classGroupIndex! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 23:23:52'!
classGroupIndex: anIndex
	classGroupIndex := anIndex.
	self changed: #classGroupIndex:.
	self courseIndex: 0.
	self changed: #classGroupCourses.
	self courseIndex: (self classGroupCourses ifEmpty: [0] ifNotEmpty: [1]).! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 16:29:17'!
classGroups
" All the user class groups "
	^ self data classGroups! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 23:23:00'!
course
" The selected course, if any "
	^ self classGroupCourses at: courseIndex ifAbsent: [nil]! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 16:21:53'!
courseIndex
" The selected course index in a give class group "
	^ courseIndex! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 10/3/2023 22:48:17'!
courseIndex: anIndex
	courseIndex := anIndex.
	self changed: #courseIndex:.! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 10/1/2023 18:53:24'!
data
	^ presenter  domain userData ! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 10/1/2023 18:52:42'!
presenter: aPresenter
	presenter := aPresenter ! !

!DyView methodsFor: 'GUI building' stamp: 'hlsf 5/26/2024 16:34:08'!
classGroupCoursesListMorph
" Present the list of the user courses in a given class group"
	^ DropDownListMorph 
		withModel: self
		listGetter: #classGroupCourses
		indexGetter: #courseIndex
		indexSetter: #courseIndex: ::
		autoDeselect: false.! !

!DyView methodsFor: 'GUI building' stamp: 'hlsf 5/26/2024 16:38:01'!
classGroupListMorph
" Present a list of user class group "
	^ DropDownListMorph 
		withModel: self
		listGetter: #classGroups
		indexGetter: #classGroupIndex
		indexSetter: #classGroupIndex: ::
		autoDeselect: false.! !

!DyView methodsFor: 'initialization' stamp: 'hlsf 10/7/2023 15:56:04'!
initialize
	super initialize.
	self beColumn.
	self doAdoptWidgetsColor.! !

!DyView class methodsFor: 'instance creation' stamp: 'hlsf 10/1/2023 18:52:51'!
presenter: aPresenter
	^ self basicNew 
		presenter: aPresenter ;
		initialize ! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 5/26/2024 15:45:39'!
courseHourDateListMorph
" Present a list of forthcomming date for the selected course (courseIndex) "
	^ DropDownListMorph 
		withModel: self
		listGetter: #courseHourDates
		indexGetter: #courseHourIndex
		indexSetter: #courseHourIndex: ::
		autoDeselect: false.! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 10/7/2023 11:24:12'!
incomingTasksPanel
"A view to browse the tasks already assigned "
	^ LayoutMorph newRow addMorph: (LabelMorph contents: 'Future tasks' translated)! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 9/1/2024 09:59:19'!
newTaskPanel
"The tools to assign a new task : which classGroup, which course and when "
	^​ LayoutMorph newRow ::
		addMorph: (LabelMorph contents: 'New task in ' translated);
		addMorph: self classGroupListMorph ;
		addMorph: self classGroupCoursesListMorph ;
		addMorph: (LabelMorph contents: ' at ' translated);
		addMorph: self courseHourDateListMorph;
		addMorphUseAll: DyControlsManager spacer;
		addMorph: (PluggableButtonMorph 
			model: presenter
			action: #saveTask
			label: 'Save' translated)! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 17:15:41'!
classGroupIndex: anIndex
	super classGroupIndex: anIndex.
	self courseHourIndex:​ 0.
	self changed: #courseHourDates.
	self courseHourIndex:​ (self courseHourDates ifEmpty: [0] ifNotEmpty: [1]).! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 10/7/2023 15:12:20'!
courseHourDates
" A list of future course hour date"
	^ self course 
		ifNil: [Array new]
		ifNotNil: [:course | |future |
			future := course futureDates: 10.
			future collect: [:aCourseHourAndDate | 
				String streamContents: [:str |
					str nextPutAll: aCourseHourAndDate second ddmmyyyy; space.
					aCourseHourAndDate first timeSlots 
						do: [:each | str nextPutAll: each slotName ]
						separatedBy: [str nextPut: $-]					 ] ] ]
		! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 9/28/2023 11:13:57'!
courseHourIndex
	^ courseHourIndex! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 9/28/2023 16:31:16'!
courseHourIndex: anIndex
	courseHourIndex := anIndex.
	self changed: #courseHourIndex:! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 17:16:38'!
courseIndex: anIndex
	super courseIndex: anIndex.
	self courseHourIndex:​ 0.
	self changed: #courseHourDates.
	self courseHourIndex:​ (self courseHourDates ifEmpty: [0] ifNotEmpty: [1]).! !

!DyAgendaView methodsFor: 'initialization' stamp: 'hlsf 5/26/2024 23:21:22'!
initialize
	| courseGroupNow |
	super initialize.
	" Guess the course at current time, then its classGroup "
	courseGroupNow := self data courseAndGroupAt: DateAndTime now.
	courseGroupNow 
		ifNotNil: 		[
			classGroupIndex := self classGroups indexOf: courseGroupNow second.
			courseIndex := self classGroupCourses indexOf: courseGroupNow first 	.
			courseHourIndex := self courseHourDates ifEmpty: [0] ifNotEmpty: [1] ]
		ifNil: [	classGroupIndex := courseIndex := courseHourIndex := 0			].
	
	self addMorphKeepMorphHeight: self newTaskPanel.
	self addMorphUseAll: self incomingTasksPanel.
	self adoptWidgetsColor: self defaultBorderColor 
	
! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 17:17:48'!
classGroupIndex: anIndex
	super classGroupIndex: anIndex.
	self topicIndex: 0.
	self changed: #topics.
	self topicIndex:​ (self topics ifEmpty: [0] ifNotEmpty: [1])! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 17:17:24'!
courseIndex: anIndex
	super courseIndex: anIndex.
	self topicIndex: 0.
	self changed: #topics.
	self topicIndex:​ (self topics ifEmpty: [0] ifNotEmpty: [1]).! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 10/7/2023 11:52:11'!
sortIndex
	^ sortIndex! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 10/7/2023 11:52:37'!
sortIndex: anIndex
	sortIndex := 	anIndex.
	self changed: #sortIndex:! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 10/7/2023 11:51:47'!
sortOptions
	^ `Array with: 'Newer first' translated with: 'Older first' translated with: 'By name' translated`! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 10/4/2023 22:39:04'!
topicIndex
	^ topicIndex! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 10/10/2023 00:04:22'!
topicIndex: anIndex
	topicIndex := anIndex.
	self changed: #topicIndex:! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 5/26/2024 16:57:40'!
topics
"The topics of a given course"
	^ self course 
		ifNotNil: [:aCourse | aCourse topics]
		ifNil: [`Array new`]! !

!DyBinderView methodsFor: 'GUI Building' stamp: 'hlsf 10/14/2023 17:21:30'!
documentPreviewPanel
" Fill the preview panel with document previews from the user selected classGroup-course-topic "
	| previewsPerLine previewVisitor documents |
	documents := self topics documents.
	previewVisitor := DyPreviewVisitor new.
	previewPanel removeAllMorphs.
	previewsPerLine := previewPanel morphWidth // previewVisitor previewWidth.
	documents groupsOf: previewsPerLine atATimeDo: [:documentsGroup | 
		previewPanel addMorph: (			documentsGroup 
			inject: self previewRow 
			into: [:row :document |			row addMorph: (document accept: previewVisitor)		]) ].
	documents size \\ previewsPerLine ifNotZero: [ "There is an incomplete row to add "
		previewPanel addMorph: (
			(documents allButFirst: (documents size // previewsPerLine * previewsPerLine))
				inject: self previewRow 
				into: [:row :document |			row addMorph: (document accept: previewVisitor)		]) 		].
	^ previewPanel ! !

!DyBinderView methodsFor: 'GUI Building' stamp: 'hlsf 9/1/2024 09:59:19'!
documentSelectorPanel
" A view to select documents according to classGroups, courses, topics and sorting option "
	^ LayoutMorph newRow ::
		addMorph: self classGroupListMorph ;
		addMorph: self classGroupCoursesListMorph;
		addMorph: self topicListMorph;
		addMorphUseAll: DyControlsManager spacer;
		addMorph: self sortListMorph! !

!DyBinderView methodsFor: 'GUI Building' stamp: 'hlsf 10/14/2023 16:53:21'!
previewRow
	^ ​ LayoutMorph newRow 	:: 
		separation: 8; 
		adoptWidgetsColor: 
		self defaultColor
	! !

!DyBinderView methodsFor: 'GUI Building' stamp: 'hlsf 10/7/2023 15:55:36'!
selectedDocumentsPanel
" A view to present previews of the selected documents from the documentSelectorPanel "
	| quickButtons |
	quickButtons := Array 
		with: (PluggableButtonMorph model: self action: #newDocument ::
			icon: Theme current listAddIcon;
			setBalloonText: 'Create a new document' translated)
		with: (PluggableButtonMorph model: self action: #importResource ::
			icon: Theme current openIcon;
			setBalloonText: 'Import a resource' translated).
	^ DecoratedPane 
		open: (previewPanel := LayoutMorph newColumn) 
		label:  'Selected documents' translated
		quickButtons: quickButtons! !

!DyBinderView methodsFor: 'GUI Building' stamp: 'hlsf 5/26/2024 15:45:41'!
sortListMorph
" Present a list of topic in selected course "
	^ DropDownListMorph 
		withModel: self
		listGetter: #sortOptions
		indexGetter: #sortIndex
		indexSetter: #sortIndex: ::
		autoDeselect: false.! !

!DyBinderView methodsFor: 'GUI Building' stamp: 'hlsf 5/26/2024 15:45:44'!
topicListMorph
" Present a list of topic in selected course "
	^ DropDownListMorph 
		withModel: self
		listGetter: #topics
		indexGetter: #topicIndex
		indexSetter: #topicIndex: ::
		autoDeselect: false.! !

!DyBinderView methodsFor: 'initialization' stamp: 'hlsf 5/26/2024 23:21:34'!
initialize
	super initialize.
	classGroupIndex :=  self classGroups ifNotEmpty: [1] ifEmpty: [0].
	courseIndex := self classGroupCourses ifNotEmpty: [1] ifEmpty: [0].
	topicIndex := self topics ifNotEmpty: [1] ifEmpty: [0].
	sortIndex := 1.
	self addMorphKeepMorphHeight: self documentSelectorPanel.
	self addMorphUseAll: self selectedDocumentsPanel.
	self adoptWidgetsColor: self defaultBorderColor ! !

!DynabookView methodsFor: 'accessing' stamp: 'hlsf 9/28/2023 21:38:59'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DynabookView methodsFor: 'accessing' stamp: 'hlsf 9/28/2023 21:38:31'!
defaultBorderColor
	^ Theme current transcript! !

!DynabookView methodsFor: 'accessing' stamp: 'hlsf 9/28/2023 21:38:23'!
defaultColor
	^Theme current paneBackgroundFrom: self defaultBorderColor ! !

!DynabookView methodsFor: 'accessing' stamp: 'hlsf 9/5/2024 11:14:05'!
presenter
	^ presenter! !

!DynabookView methodsFor: 'accessing' stamp: 'hlsf 8/15/2023 20:52:33'!
presenter: aPresenter
	presenter := aPresenter ! !

!DynabookView methodsFor: 'accessing' stamp: 'hlsf 8/29/2024 11:58:28'!
windowColor
	^ Theme current workspace! !

!DynabookView class methodsFor: 'instance creation' stamp: 'hlsf 8/15/2023 20:51:48'!
for: aPresenter
	^ self new ::
		presenter: aPresenter;
		yourself! !

!DynabookTestCase methodsFor: 'setUp/tearDown' stamp: 'hlsf 9/13/2023 23:21:14'!
setUp
	data := self resources anyOne current data! !

!DynabookTestCase methodsFor: 'setUp/tearDown' stamp: 'hlsf 9/28/2023 21:28:52'!
tearDown
	self tearDownResources! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/24/2023 14:07:36'!
testAgenda
	self assert: data agenda start = '2023-08-21' asDate.
	self assert: data agenda end = '2024-06-28' asDate.
	self deny: (data agenda isDayOff: '2023-08-21' asDate).
	self deny: (data agenda isDayOff: '2023-06-28' asDate).	
	
	self assert: (data agenda isDayOff: '2023-9-7' asDate).
	self assert: (data agenda isDayOff: '2024-02-21' asDate).
	self assert: (data agenda isDayOff: '2023-12-25' asDate).
	self assert: (data agenda isDayOff: '2024-01-5' asDate).
	self deny: (data agenda isDayOff: '2024-01-6' asDate).
	self deny: (data agenda isDayOff: '2024-05-16' asDate)
	! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/28/2023 12:49:44'!
testAsCourseIn	
	| school course courseHour | 
	school := data schools first.
	course := school classGroups first courses first.
	courseHour := '123 1 P2' asCourseHourIn: course.
	self assert: courseHour room = '123'.
	self assert: courseHour dayOfWeek = 1.
	self assert: courseHour timeSlots size = 1.
	self assert: (school timeSlots includes: courseHour timeSlots first).
	""
	courseHour := '123 2 P4 P5' asCourseHourIn: course.
	self assert: courseHour room = '123'.
	self assert: courseHour dayOfWeek = 2.
	self assert: courseHour timeSlots size = 2.
	courseHour timeSlots do: [:each |
	self assert: (school timeSlots includes: each) ]! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/14/2023 16:15:38'!
testClassGroupCourse
	| school group course | 
	school := data schools first.
	group := school classGroups first.
	course := group courses first.
	self assert: group school equals: school.
	self assert: course school equals: school.
	self assert: group number equals: '932'.
	self assert: course subject equals: 'Histoire'
	! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/23/2023 10:28:35'!
testCourseAgendaAccess
	| school group course agenda | 
	school := data schools first.
	group := school classGroups first.
	course := group courses first.
	agenda := course agenda.
	self assert: agenda start = '2023-08-21' asDate.
	self assert: agenda end = '2024-06-28' asDate! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 10/1/2023 22:27:03'!
testCourseAt
	| courseH courseM classGroup dateAndTime | 
	classGroup := data schools first classGroups first.
	courseH := classGroup courses first.
	courseM := classGroup courses second .

	dateAndTime := DateAndTime fromString: '2023-09-11 9:00'. "Monday"
	self assert: (data courseAt: dateAndTime) equals: courseH.
	dateAndTime := DateAndTime fromString: '2023-09-11 7:00'. 
	self assert: (data courseAt: dateAndTime) equals: nil.
	
	dateAndTime := DateAndTime fromString: '2023-09-12 11:30'.
	self assert: (data courseAt: dateAndTime) equals: courseH.
	dateAndTime := DateAndTime fromString: '2023-09-12 11:15'.
	self assert: (data courseAt: dateAndTime) equals: courseH.
	dateAndTime := DateAndTime fromString: '2023-09-12 11:13'.
	self assert: (data courseAt: dateAndTime) equals: courseH.

	dateAndTime := DateAndTime fromString: '2023-09-13 9:00'. 
	self assert: (data courseAt: dateAndTime) equals: courseM.
	
	dateAndTime := DateAndTime fromString: '2023-09-15 15:54'. 
	self assert: (data courseAt: dateAndTime) equals: courseH.
	! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/14/2023 16:29:19'!
testCourseHours
	| school group courseHours | 
	school := data schools first.
	group := school classGroups first.
	courseHours := group courses first courseHours .
	" Qty "
	self assert: courseHours size = 4	.
	" Day "
	self assert: courseHours first dayOfWeek equals: 1.
	self assert: courseHours second dayOfWeek equals: 2.
	self assert: courseHours third dayOfWeek equals: 4.
	self assert: courseHours fourth dayOfWeek equals: 5.
	" Room & time slots" 
	courseHours do: [:aCourseHour | 	
		self assert: aCourseHour room equals: '123'.
		aCourseHour timeSlots do: [:aTimeSlot | 		self assert: school timeSlots includes: aTimeSlot ] ]
! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/26/2023 22:04:27'!
testFutureDates
	| course date futureDates| 
	date := (DateAndTime fromString: '2023-09-05 10:45') date . "Tuesday"
	course := data schools first classGroups first courses first.
	futureDates := course next: 5 courseHoursAfter: date.
	"Should be Friday (Wednesday no course, Thursday day off), time slot: P9 "
	self assert: futureDates size = 5.
	self assert: futureDates first  second = '2023-09-8' asDate.
	self assert: futureDates second  second = '2023-09-11' asDate.
	self assert: futureDates third  second = '2023-09-12' asDate.
	self assert: futureDates fourth  second = '2023-09-14' asDate.
	self assert: futureDates fifth  second = '2023-09-15' asDate.
	
	self assert: futureDates third first dayOfWeek= 2 .
	self assert: futureDates third first timeSlots first = 'P4 10:25 11:10' asTimeSlot.
! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/19/2023 21:10:49'!
testIsDuring
	| courseHours classGroup dateAndTime | 
	classGroup := data schools first classGroups first.
	courseHours := classGroup courses first courseHours.

	dateAndTime := DateAndTime fromString: '2023-09-11 9:00'. "Monday"
	self assert: (courseHours first isDuring: dateAndTime).
	self deny: (courseHours second isDuring: dateAndTime).
	self deny: (courseHours third isDuring: dateAndTime).
	self deny: (courseHours fourth isDuring: dateAndTime).
	
	dateAndTime := DateAndTime fromString: '2023-09-12 11:00'.
	self deny: (courseHours first isDuring: dateAndTime).
	self assert: (courseHours second isDuring: dateAndTime).
	self deny: (courseHours third isDuring: dateAndTime).
	self deny: (courseHours fourth isDuring: dateAndTime).
	
" 
A course hour with 2 periods, isDuring: tested between the two period timeslots, should be true as well
"
	dateAndTime := DateAndTime fromString: '2023-09-12 11:12'. 
	self assert: (courseHours second isDuring: dateAndTime).! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/23/2023 10:24:02'!
testNextCourseHourAfter
	| nextCourse dateAndTime | 
	dateAndTime := DateAndTime fromString: '2023-09-11 9:00'. "Monday"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	"Should be: next day, time slots: P4 P5 "
	self assert: nextCourse second = '2023-09-12' asDate.
	self assert: nextCourse first room = '123' .
	self assert: nextCourse first dayOfWeek= 2 .
	self assert: nextCourse first timeSlots first = 'P4 10:25 11:10' asTimeSlot.
	self assert: nextCourse first timeSlots second = 'P5 11:15 12:00' asTimeSlot.
	""
	dateAndTime := DateAndTime fromString: '2023-09-12 9:00'. "Tuesday, no course at this time"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	self assert: nextCourse isNil.
	""
	dateAndTime := DateAndTime fromString: '2023-09-12 11:12'.
	nextCourse := data nextCourseHourAfter: dateAndTime.
	"Should be: two days later, time slots: P7 "
	self assert: nextCourse second = '2023-09-14' asDate.
	self assert: nextCourse first dayOfWeek= 4 .
	self assert: nextCourse first timeSlots first = 'P7 13:35 14:20' asTimeSlot.
	""
	dateAndTime := DateAndTime fromString: '2023-09-15 16:01'. "Friday"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	" Should be next monday, time slot P2 "
	self assert: nextCourse second = '2023-09-18' asDate.
	self assert: nextCourse first dayOfWeek= 1 .
	self assert: nextCourse first timeSlots first = 'P2 8:35 9:20' asTimeSlot.
! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/23/2023 11:12:53'!
testNextCourseHourAfterWithDaysOff
	| nextCourse dateAndTime | 
	dateAndTime := DateAndTime fromString: '2023-09-05 10:45'. "Tuesday"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	"Should be Friday (Wednesday no course, Thursday day off), time slot: P9 "
	self assert: nextCourse second = '2023-09-8' asDate.
	self assert: nextCourse first room = '123' .
	self assert: nextCourse first dayOfWeek= 5 .
	self assert: nextCourse first timeSlots first = 'P9 15:25 16:10' asTimeSlot.

	dateAndTime := DateAndTime fromString: '2023-10-20 16:00'. "Friday, before 1 week holiday"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	"Should be Monday, one week later"
	self assert: nextCourse second = '2023-10-30' asDate.
	
	dateAndTime := DateAndTime fromString: '2024-5-7 11:00'. "Tuesday"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	"Should be Monday, next week"
	self assert: nextCourse second = '2024-5-13' asDate.
	
	dateAndTime := DateAndTime fromString: '2024-6-28 16:00'. "Friday, end of school"
	nextCourse := data nextCourseHourAfter: dateAndTime.
	"Should be nil"
	self assert: nextCourse isNil
! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/14/2023 15:36:08'!
testSchoolsExist
	self assert: data schools notEmpty.
	self assert: (data schools anySatisfy: [:aSchool | aSchool schoolName = 'CO Foron'])! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/14/2023 15:54:42'!
testTimeSlotCompare
	| t1 t2 t3 t4| 
	t1 := 'P4 10:05 11:30' asTimeSlot.
	t2 := 'P5 10:10 11:30' asTimeSlot.
	t3 := 'P4 10:10 12:30' asTimeSlot.
	t4 := 'H4 10:10 12:30' asTimeSlot.
	self assert: t1 < t2.
	self assert: t2 < t3.
	self deny: t2 >= t3.
	self deny: t2 = t3.
	self assert: t3 = t4.
	self assert: t3 > t1.
	self assert: (t2 between: t1 and: t3)! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/14/2023 15:42:10'!
testTimeSlotInstance
	| t | 
	t := 'P4 10:05 11:30' asTimeSlot.
	self assert: t slotName equals: 'P4'.
	self assert: t start equals: (Time fromString: '10:05').
	self assert: t end equals: (Time fromString: '11:30')! !

!DynabookTestCase methodsFor: 'testing' stamp: 'hlsf 9/14/2023 16:10:35'!
testTimeSlotsOrder
	| t | 
	t := data schools first timeSlots.
	self assert: t first slotName equals: 'P1'.
	self assert: t third slotName equals: 'P3'.
	self assert: t last slotName equals: 'P9'! !

!DynabookTestCase class methodsFor: 'as yet unclassified' stamp: 'hlsf 9/13/2023 23:18:27'!
resources
	^{DynabookTestResource }! !

!DynabookTestCase class methodsFor: 'nil' stamp: 'hlsf 9/28/2023 12:52:19'!
tearDownResources
	self halt! !

!DynabookTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 10/8/2023 23:25:12'!
classGroup932in: school
	| group course |
	group := DyClassGroup number: '932' in: school.
	course := DyCourse subject: 'Histoire' in: group.
	group courses add: course.
	course courseHours
		add: ('123 1 P2' asCourseHourIn: course);
		add: ('123 2 P4 P5' asCourseHourIn: course);
		add: ('123 4 P7' asCourseHourIn: course);
		add: ('123 5 P9' asCourseHourIn: course).
	course topics 
		add: (DyTopic title: 'Middle Age' in: course);
		add: (DyTopic title: 'Modern Time' in: course).
	course := DyCourse subject: 'Mathématiques' in: group.
	group courses add: course.
	course courseHours
		add: ('315 1 P3' asCourseHourIn: course);
		add: ('315 2 P7 P8' asCourseHourIn: course);
		add: ('315 3 P2' asCourseHourIn: course);
		add: ('315 5 P4' asCourseHourIn: course).		
	course topics 
		add: (DyTopic title: 'Rational' in: course);
		add: (DyTopic title: 'Triangle' in: course).
	^ group! !

!DynabookTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 9/24/2023 14:04:47'!
daysOff
	^{ 
		DyDayInterval start: '2023-10-23' end: '2023-10-27'.
		DyDayInterval start: '2023-12-25' end: '2024-01-05' .
		DyDayInterval start: '2024-02-19' end: '2024-02-23'.
		DyDayInterval start: '2024-03-29' end: '2024-04-12'		.
		DyDayInterval start: '2024-05-09' end: '2024-05-10'.
		DyDayInterval start: '2023-09-07' end: '2023-09-07'		.
		DyDayInterval start: '2024-05-01' end: '2024-05-01'		.
		DyDayInterval start: '2024-05-20' end: '2024-05-20'	 }! !

!DynabookTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 9/23/2023 10:57:04'!
schoolA
	| school  |
	school := DySchool new schoolName: 'CO Foron'.
	school timeSlots 
		add: 'P5 11:15 12:00' asTimeSlot;
		add: 'P1 7:45 8:30' asTimeSlot;
		add: 'P8 14:25 15:10' asTimeSlot;
		add: 'P2 8:35 9:20' asTimeSlot;
		add: 'P9 15:25 16:10' asTimeSlot;
		add: 'P4 10:25 11:10' asTimeSlot;
		add: 'P7 13:35 14:20' asTimeSlot;		
		add: 'P3 9:25 10:10' asTimeSlot.
	school classGroups add: (self classGroup932in: school).
	^ school! !

!DynabookTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 11/7/2023 23:52:52'!
setUp
	data := DyUserData current.
	data user: (DyTeacher new lastName: 'Dupont'; firstName: 'Eric').
	self setUpAgenda.
	data schools add: (self schoolA owner: data; yourself)! !

!DynabookTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 9/23/2023 09:28:58'!
setUpAgenda
	data agenda
		start: '2023-08-21' asDate;
		end: '2024-06-28' asDate.
	data agenda daysOff addAll: self daysOff ! !

!DynabookTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 9/28/2023 12:52:52'!
tearDown
	DyUserData reset.
	data := nil.! !

!DynabookTestResource methodsFor: 'testing' stamp: 'hlsf 9/13/2023 22:10:45'!
isAvailable 
	^ data notNil! !

!DynabookTestResource methodsFor: 'accessing' stamp: 'hlsf 9/13/2023 22:32:24'!
data
	^ data! !

!DynabookTestResource class methodsFor: 'testing' stamp: 'hlsf 9/28/2023 12:28:49'!
isAvailable
	^ true! !

!ProtoObject methodsFor: '*Dynabook' stamp: 'hlsf 7/1/2023 12:19:17'!
treePointsTo: anObject
" Are my instances and sub instances hold a reference of anObject"
	^ (self statePointsTo: anObject) or: [ |attributesToVisit |
		attributesToVisit := OrderedCollection new.
		1 to: self class instSize do: [:i |
			(self instVarAt: i) isCollection 	ifTrue: [ attributesToVisit addAll: (self instVarAt: i)] ].
		attributesToVisit anySatisfy: [:attribute | 
			attribute == anObject or: [attribute treePointsTo: anObject		] 		] ]! !

!Object methodsFor: '*Dynabook' stamp: 'hlsf 8/20/2023 16:05:49'!
registerEvents! !

!String methodsFor: '*Dynabook' stamp: 'hlsf 9/13/2023 23:17:33'!
asCourseHourIn: aCourse
" room day timeSlotName1 timeSlotName2 ... "
	| timeSlots elements |
	elements := self substrings.
	timeSlots := aCourse school timeSlotsDic.
	^ DyCourseHour new ::
		room: elements first;
		dayOfWeek: elements second asNumber;
		timeSlots: ( (elements allButFirst: 2) collect: [:timeSlotName |
			timeSlots at: timeSlotName] )! !

!String methodsFor: '*Dynabook' stamp: 'hlsf 9/13/2023 21:51:32'!
asTimeSlot
| elements|
	elements := self substrings.
	^ DyTimeSlot new ::
		slotName: elements first;
		start: (Time fromString: elements second);
		end: (Time fromString: elements third)! !

!Date methodsFor: '*Dynabook-printing' stamp: 'hlsf 7/29/2023 15:51:19'!
ddmmyy
	^ self printFormat: #(1 2 3 $/ 1 2 1)! !

!Date methodsFor: '*Dynabook-printing' stamp: 'hlsf 7/29/2023 15:48:49'!
ddmmyyyy
	^ self printFormat: #(1 2 3 $/ 1 1 1)! !
