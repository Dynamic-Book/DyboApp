'From Cuis7.9 [latest update: #8056] on 17 July 2026 at 12:53:12 pm'!
'Description '!
!provides: 'Dybo' 1 237!
!requires: 'Gettext' 1 26 nil!
!requires: 'OSProcess' 1 36 nil!
!requires: 'Goodies' 1 9 nil!
!requires: 'UI-Mold' 1 13 nil!
!requires: 'DyboDoc' 1 5 nil!
!requires: 'Neo-CSV-Core' 1 2 nil!
!requires: 'UI-Graphic-Import' 1 0 nil!
!requires: 'UI-Panel' 1 91 nil!
!requires: 'Commander' 1 9 nil!
!requires: 'Compression' 1 42 nil!
SystemOrganization addCategory: #'Dybo-Morph'!
SystemOrganization addCategory: #Dybo!
SystemOrganization addCategory: #'Dybo-Data'!
SystemOrganization addCategory: #'Dybo-Model'!
SystemOrganization addCategory: #'Dybo-Presenter'!
SystemOrganization addCategory: #'Dybo-System'!
SystemOrganization addCategory: #'Dybo-Test'!
SystemOrganization addCategory: #'Dybo-View'!
SystemOrganization addCategory: #'Dybo-Wizard'!


!classDefinition: #DyUserData category: #'Dybo-Data'!
Object subclass: #DyUserData
	instanceVariableNames: 'user schools agenda ppcm'
	classVariableNames: 'Current'
	poolDictionaries: ''
	category: 'Dybo-Data'!
!classDefinition: 'DyUserData class' category: #'Dybo-Data'!
DyUserData class
	instanceVariableNames: ''!

!classDefinition: #DyCourseHour category: #'Dybo-Model'!
Object subclass: #DyCourseHour
	instanceVariableNames: 'room dayOfWeek timeSlots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyCourseHour class' category: #'Dybo-Model'!
DyCourseHour class
	instanceVariableNames: ''!

!classDefinition: #DyCourseHourDate category: #'Dybo-Model'!
Object subclass: #DyCourseHourDate
	instanceVariableNames: 'date timeSlots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyCourseHourDate class' category: #'Dybo-Model'!
DyCourseHourDate class
	instanceVariableNames: ''!

!classDefinition: #Dybo category: #'Dybo-Presenter'!
Object subclass: #Dybo
	instanceVariableNames: 'domain controlsManager activeViewType currentTopic'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Presenter'!
!classDefinition: 'Dybo class' category: #'Dybo-Presenter'!
Dybo class
	instanceVariableNames: ''!

!classDefinition: #DyPlatform category: #'Dybo-System'!
Object subclass: #DyPlatform
	instanceVariableNames: 'icons scriptLibrary fullscreen'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-System'!
!classDefinition: 'DyPlatform class' category: #'Dybo-System'!
DyPlatform class
	instanceVariableNames: ''!

!classDefinition: #DyDevelopment category: #'Dybo-System'!
DyPlatform subclass: #DyDevelopment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-System'!
!classDefinition: 'DyDevelopment class' category: #'Dybo-System'!
DyDevelopment class
	instanceVariableNames: ''!

!classDefinition: #DyboSystem category: #'Dybo-System'!
Object subclass: #DyboSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-System'!
!classDefinition: 'DyboSystem class' category: #'Dybo-System'!
DyboSystem class
	instanceVariableNames: 'platform'!

!classDefinition: #DyControlsManager category: #'Dybo-View'!
Object subclass: #DyControlsManager
	instanceVariableNames: 'dyboView docView activeView'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyControlsManager class' category: #'Dybo-View'!
DyControlsManager class
	instanceVariableNames: ''!

!classDefinition: #DyEditorVisitor category: #'Dybo-View'!
Object subclass: #DyEditorVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyEditorVisitor class' category: #'Dybo-View'!
DyEditorVisitor class
	instanceVariableNames: ''!

!classDefinition: #DyViewerVisitor category: #'Dybo-View'!
Object subclass: #DyViewerVisitor
	instanceVariableNames: 'visitedModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyViewerVisitor class' category: #'Dybo-View'!
DyViewerVisitor class
	instanceVariableNames: ''!

!classDefinition: #DyClassCourse category: #'Dybo-Wizard'!
Object subclass: #DyClassCourse
	instanceVariableNames: 'classNumber courseName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Wizard'!
!classDefinition: 'DyClassCourse class' category: #'Dybo-Wizard'!
DyClassCourse class
	instanceVariableNames: ''!

!classDefinition: #DyNewUser category: #'Dybo-Wizard'!
Object subclass: #DyNewUser
	instanceVariableNames: 'userFirstname userLastname schoolName classCourses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Wizard'!
!classDefinition: 'DyNewUser class' category: #'Dybo-Wizard'!
DyNewUser class
	instanceVariableNames: ''!

!classDefinition: #DyDayInterval category: #'Dybo-Model'!
ActiveModel subclass: #DyDayInterval
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyDayInterval class' category: #'Dybo-Model'!
DyDayInterval class
	instanceVariableNames: ''!

!classDefinition: #DyObject category: #'Dybo-Model'!
ActiveModel subclass: #DyObject
	instanceVariableNames: 'owner'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyObject class' category: #'Dybo-Model'!
DyObject class
	instanceVariableNames: ''!

!classDefinition: #DyAgenda category: #'Dybo-Model'!
DyObject subclass: #DyAgenda
	instanceVariableNames: 'start end daysOff tasks'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyAgenda class' category: #'Dybo-Model'!
DyAgenda class
	instanceVariableNames: ''!

!classDefinition: #DyClassGroup category: #'Dybo-Model'!
DyObject subclass: #DyClassGroup
	instanceVariableNames: 'number headTeacher students courses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyClassGroup class' category: #'Dybo-Model'!
DyClassGroup class
	instanceVariableNames: ''!

!classDefinition: #DyCourse category: #'Dybo-Model'!
DyObject subclass: #DyCourse
	instanceVariableNames: 'subject color teacher courseHours topics'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyCourse class' category: #'Dybo-Model'!
DyCourse class
	instanceVariableNames: ''!

!classDefinition: #DySchool category: #'Dybo-Model'!
DyObject subclass: #DySchool
	instanceVariableNames: 'name phone email timeSlots classGroups'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DySchool class' category: #'Dybo-Model'!
DySchool class
	instanceVariableNames: ''!

!classDefinition: #DyTopic category: #'Dybo-Model'!
DyObject subclass: #DyTopic
	instanceVariableNames: 'title color documents resources'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyTopic class' category: #'Dybo-Model'!
DyTopic class
	instanceVariableNames: ''!

!classDefinition: #DyPerson category: #'Dybo-Model'!
ActiveModel subclass: #DyPerson
	instanceVariableNames: 'lastName firstName email'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyPerson class' category: #'Dybo-Model'!
DyPerson class
	instanceVariableNames: ''!

!classDefinition: #DyStudent category: #'Dybo-Model'!
DyPerson subclass: #DyStudent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyStudent class' category: #'Dybo-Model'!
DyStudent class
	instanceVariableNames: ''!

!classDefinition: #DyTeacher category: #'Dybo-Model'!
DyPerson subclass: #DyTeacher
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyTeacher class' category: #'Dybo-Model'!
DyTeacher class
	instanceVariableNames: ''!

!classDefinition: #DyTask category: #'Dybo-Model'!
ActiveModel subclass: #DyTask
	instanceVariableNames: 'courseHourDate document'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyTask class' category: #'Dybo-Model'!
DyTask class
	instanceVariableNames: ''!

!classDefinition: #DyTimeSlot category: #'Dybo-Model'!
Magnitude subclass: #DyTimeSlot
	instanceVariableNames: 'name startTime endTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Model'!
!classDefinition: 'DyTimeSlot class' category: #'Dybo-Model'!
DyTimeSlot class
	instanceVariableNames: ''!

!classDefinition: #DyView category: #'Dybo-View'!
LinearLayoutMorph subclass: #DyView
	instanceVariableNames: 'presenter classGroupIndex courseIndex sortIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyView class' category: #'Dybo-View'!
DyView class
	instanceVariableNames: ''!

!classDefinition: #DyAgendaView category: #'Dybo-View'!
DyView subclass: #DyAgendaView
	instanceVariableNames: 'courseHourIndex miniDocView taskIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyAgendaView class' category: #'Dybo-View'!
DyAgendaView class
	instanceVariableNames: ''!

!classDefinition: #DyBinderView category: #'Dybo-View'!
DyView subclass: #DyBinderView
	instanceVariableNames: 'topicIndex previewPanel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyBinderView class' category: #'Dybo-View'!
DyBinderView class
	instanceVariableNames: ''!

!classDefinition: #DyStartView category: #'Dybo-View'!
DyView subclass: #DyStartView
	instanceVariableNames: 'quantityIndex typeIndex previewPanel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyStartView class' category: #'Dybo-View'!
DyStartView class
	instanceVariableNames: ''!

!classDefinition: #DyboFullscreenView category: #'Dybo-View'!
LinearLayoutMorph subclass: #DyboFullscreenView
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyboFullscreenView class' category: #'Dybo-View'!
DyboFullscreenView class
	instanceVariableNames: ''!

!classDefinition: #DyboWindow category: #'Dybo-View'!
SystemWindow subclass: #DyboWindow
	instanceVariableNames: 'presenter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-View'!
!classDefinition: 'DyboWindow class' category: #'Dybo-View'!
DyboWindow class
	instanceVariableNames: ''!

!classDefinition: #DyWizardNewUser category: #'Dybo-Wizard'!
WizardPanel subclass: #DyWizardNewUser
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Wizard'!
!classDefinition: 'DyWizardNewUser class' category: #'Dybo-Wizard'!
DyWizardNewUser class
	instanceVariableNames: ''!

!classDefinition: #DyboTestCase category: #'Dybo-Test'!
TestCase subclass: #DyboTestCase
	instanceVariableNames: 'domain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Test'!
!classDefinition: 'DyboTestCase class' category: #'Dybo-Test'!
DyboTestCase class
	instanceVariableNames: ''!

!classDefinition: #DyboTestResource category: #'Dybo-Test'!
TestResource subclass: #DyboTestResource
	instanceVariableNames: 'domain backupData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dybo-Test'!
!classDefinition: 'DyboTestResource class' category: #'Dybo-Test'!
DyboTestResource class
	instanceVariableNames: ''!


!DyUserData commentStamp: '<historical>' prior: 0!
I am a Singleton, the root of the user data, both administrative and pedagogical.
- user: a teacher or student 
- schools: collection of schools the student is enrolled in or the teacher teaches in
- agenda of the user!

!DyCourseHour commentStamp: 'hlsf 10/27/2024 19:27:22' prior: 0!
Describes one or more contiguous teaching periods.
- room:  the physical location of the course (string)
- dayOfWeek: 1 to 7, day of the week, 1 is Monday
- timesSlots: a collection of time slot object!

!DyCourseHourDate commentStamp: '<historical>' prior: 0!
I represent a course hour in a week described by a date and a time slot.!

!Dybo commentStamp: '<historical>' prior: 0!
A presenter for a Dynabook application.!

!DyPlatform commentStamp: '<historical>' prior: 0!
Access to preferences, path, information in deployment mode.
Pattern: strategy!

!DyDevelopment commentStamp: '<historical>' prior: 0!
Access to preferences, path, information in development mode.!

!DyboSystem commentStamp: '<historical>' prior: 0!
I map settings/preferences to the underneath hardware/os plateform
Pattern: strategy!

!DyControlsManager commentStamp: '<historical>' prior: 0!
A manager for the Dynabook user interface : main dynabook view, document view,  toolbars, controls and other widgets!

!DyEditorVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide an editor!

!DyViewerVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide a viewer linked to an editor.!

!DyClassCourse commentStamp: '<historical>' prior: 0!
DyClassCourse is the the model to set the pair Class group and Course. For example (1035, Mathematics). The user can input several identical class group, i.e. (1035, CS)!

!DyNewUser commentStamp: '<historical>' prior: 0!
I am a minimal model to install new user with minimal data!

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
- topics a collection of taught topics
- teacher attributes only make sense when user is Student (DyUserData current user isStudent == true)

My owner is a ClassGroup!

!DySchool commentStamp: '<historical>' prior: 0!
Description of the user's educational institutions. Possibly several per user.
My owner is a DyUserData instance, so keep it nil as we can access from the Data Singleton if needed
!

!DyTopic commentStamp: '<historical>' prior: 0!
Pedagogical document grouped in one topic.!

!DyTask commentStamp: '<historical>' prior: 0!
I represent an assignment for student with a course hour date and a document with written instructions.!

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

!DyStartView commentStamp: '<historical>' prior: 0!
I am the start view from where the user can search for all his recent activities, in all class groups.!

!DyboWindow commentStamp: '<historical>' prior: 0!
I am the main view of the Dynabook app.!

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 9/Aug/2023, 12:36:55 pm (UTC)'!
agenda
	^ agenda ifNil: [agenda := DyAgenda new]! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 11:03:00 am (UTC)'!
directory
	^ DyboSystem userDataPath ! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 16/Dec/2024, 7:45:36 pm (UTC)'!
relPath
	^ ''! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 25/Jun/2023, 9:54:13 pm (UTC)'!
schools
	^ schools ! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 10:08:12 am (UTC)'!
tasks

	^ DyUserData current agenda tasks! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 25/Jun/2023, 9:54:03 pm (UTC)'!
user
	^ user! !

!DyUserData methodsFor: 'accessing' stamp: 'hlsf 7/Nov/2023, 9:50:33 pm (UTC)'!
user: aPerson
	user := aPerson ! !

!DyUserData methodsFor: 'dangerous' stamp: 'hlsf 17/Apr/2026, 10:09:40 am (UTC)'!
purge
	self allTopics do: [:aTopic | 
		aTopic documents do: [:aDocument | aTopic documents remove: aDocument ]].
	self tasks do: [:aTask | self deleteTask: aTask]! !

!DyUserData methodsFor: 'initialization' stamp: 'hlsf 2/Mar/2026, 5:38:09 pm (UTC)'!
initialize
	super initialize.
	schools := OrderedCollection new.
	user := DyTeacher new.
	agenda := DyAgenda new owner: self.
	ppcm := 59.! !

!DyUserData methodsFor: 'initialization' stamp: 'hlsf 16/Apr/2026, 3:11:43 pm (UTC)'!
reset
	user := schools := agenda := ppcm := nil! !

!DyUserData methodsFor: 'printing' stamp: 'hlsf 27/Jun/2023, 10:09:47 pm (UTC)'!
printOn: str
	user firstName 
		ifNotNil:  [:firstName | str nextPutAll: ('{1}''s Dynabook' translated format: {firstName})]
		ifNil: [super printOn: str]! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:28:09 am (UTC)'!
addDocument: aDocument to: topic
	topic documents add: aDocument.
	aDocument model owner: topic.
	"Save the empty document in case the user does not do it after editing"
	aDocument modified .
	aDocument saveDocument.
	^ aDocument ! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:09:48 am (UTC)'!
allCourses
" Returns the collection of the user's courses"
	^ self classGroups inject: OrderedCollection new into: [:courses :aClassGroup |
		courses 	addAll: aClassGroup courses.
		courses ]! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:09:52 am (UTC)'!
allTopics
" Returns the collection of the user's topcis "
	^ self allCourses inject: OrderedCollection new into: [:topics :aCourse |
		topics addAll: aCourse topics.
		topics ]! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:09:57 am (UTC)'!
classGroupOf: aDocumentModel
"	Determine the class group this document belongs to. 
	The document may come from a topic of  a course or a task "
	^ aDocumentModel isCourse
		ifTrue: [aDocumentModel owner course classGroup]
		ifFalse: [(self courseAndGroupOf: aDocumentModel owner) ifNotNil: [:array | array second] ]! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:10:04 am (UTC)'!
classGroups
" Returns the collection of the user's class groups"
	^ DyUserData current schools inject: OrderedCollection new into: [:classGroups :aSchool |
		classGroups addAll: aSchool classGroups.
		classGroups ]! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:10:09 am (UTC)'!
courseAndGroupAt: aDateTime
" 	Search my course and group occuring at this date and time "
	DyUserData current schools do: [:aSchool |
		aSchool classGroups do: [:aClassGroup |
			aClassGroup courses do: [:aCourse |
				(aCourse isDuring: aDateTime) ifTrue: [^ Array with: aCourse with: aClassGroup ] 
			]
		]
	].
	^ nil! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:10:13 am (UTC)'!
courseAndGroupOf: aTask
" 	Search the course and group aTask belongs to
"
	^ self courseAndGroupAt: aTask courseHourDate asDateAndTime ! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:10:18 am (UTC)'!
courseAt: aDateTime
" Search my course occuring at this date and time "
	^ (self courseAndGroupAt: aDateTime) ifNotNil: [:anArray | anArray first]! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 7/May/2026, 8:43:56 am (UTC)'!
deleteDocument: aDocPresenter from: topic
	topic documents remove: aDocPresenter .
	(topic directory / aDocPresenter model dirName) recursiveDelete! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 7/May/2026, 8:43:40 am (UTC)'!
deleteDocumentNamed: aDirName from: topic
	| docPresenter |
	" Delete a document according to its unique dirName identifier, see DocumentModel "
	docPresenter := topic documents detect: [:aDocument | aDocument model dirName = aDirName].
	self deleteDocument: docPresenter from: topic! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:08:33 am (UTC)'!
deleteTask: aTask
	self tasks remove: aTask.
	(DyboSystem userDataPath / DyboSystem tasksRelPath / aTask document model dirName) recursiveDelete! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 6:36:48 pm (UTC)'!
documentOwner: docModel
"Search in my tasks "
	self tasks 
		detect: [:aTask | aTask document model = docModel] 
		ifFound: [:ownerTask | ^ ownerTask]
		ifNone: [nil].
" Search in document in all ClassGroups/Courses/Topics "
	self allTopics 
		detect:  [:aTopic | aTopic documents 
			detect: [:aDocPresenter | aDocPresenter model = docModel ] 
			ifFound: [:matchingTopic | true ]
			ifNone: [false] ]
		ifFound: [:ownerTopic | ^ ownerTopic ]
		ifNone: [].
	^ nil! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 7/May/2026, 10:08:03 am (UTC)'!
importDocument: aDocument in: topic
	topic documents add: aDocument.
	aDocument model owner: topic.
	^ aDocument ! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:08:26 am (UTC)'!
newTask: aTask
	self tasks add: aTask.
	aTask document model owner: aTask.
	"Save the empty document in case the user does not do it after editing"
	aTask document
		modified;
		saveDocument! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:10:25 am (UTC)'!
nextCourseHourAfter: aDateAndTime
"Search for the next course hour in the same course occuring at aDateAndTime"
	| course |
	course := self courseAt: aDateAndTime.
	course ifNil: [^nil].
	^ course nextCourseHourAfter: aDateAndTime date! !

!DyUserData methodsFor: 'queries' stamp: 'hlsf 17/Apr/2026, 10:10:29 am (UTC)'!
tasksOf: aClassGroup
	^ self tasks select: [:aTask | (self courseAndGroupOf: aTask) second = aClassGroup]! !

!DyUserData methodsFor: 'visiting' stamp: 'hlsf 26/Jun/2023, 7:28:11 pm (UTC)'!
accept: aVisitor
	^ aVisitor visitUserData: self! !

!DyUserData class methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 10:02:23 am (UTC)'!
current
	^ Current ifNil: [Current := self basicNew initialize]! !

!DyUserData class methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 8:27:31 am (UTC)'!
load
	Current := nil.
	Current := ReferenceStream restoreFromCompressedFile: DyboSystem userDataFile! !

!DyUserData class methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 9:58:10 am (UTC)'!
new
	self error: 'I am a Singleton, new instance are not possible'! !

!DyUserData class methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 4:21:36 pm (UTC)'!
reset
	Current ifNotNil: [:instance| 
		instance reset.
		Current := nil]! !

!DyUserData class methodsFor: 'translated' stamp: 'hlsf 17/Apr/2026, 10:11:07 am (UTC)'!
daysOfWeek
	^ Week dayNames collect: [:day | day translated]! !

!DyCourseHour methodsFor: 'ui' stamp: 'hlsf 17/Apr/2026, 10:11:16 am (UTC)'!
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

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 10:33:27 am (UTC)'!
dayOfWeek
	^ dayOfWeek ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 10:34:47 am (UTC)'!
dayOfWeek: anInteger
"1 is Monday"
	dayOfWeek := anInteger ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 10:33:12 am (UTC)'!
room
	^ room! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 10:33:00 am (UTC)'!
room: aString
	room := aString ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 11:28:30 am (UTC)'!
timeSlots
	^ timeSlots ! !

!DyCourseHour methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 11:29:14 am (UTC)'!
timeSlots: aCollection
	timeSlots := aCollection ! !

!DyCourseHour methodsFor: 'printing' stamp: 'hlsf 17/Apr/2026, 10:11:26 am (UTC)'!
printOn: str
	dayOfWeek 
		ifNotNil:  [str nextPutAll: (DyUserData daysOfWeek at: dayOfWeek);
				nextPutAll: ' (';
				nextPutAll: room;
				nextPut: $)]
		ifNil: [super printOn: str]! !

!DyCourseHour methodsFor: 'initialization' stamp: 'hlsf 1/Jul/2023, 4:34:56 pm (UTC)'!
initialize
	super initialize.
	dayOfWeek := 0.
	timeSlots := OrderedCollection new! !

!DyCourseHour methodsFor: 'testing' stamp: 'hlsf 27/Oct/2024, 5:51:18 pm (UTC)'!
isAt: aTimeSlot day: aDayNumber
	^ dayOfWeek = aDayNumber 		and: [timeSlots includes: aTimeSlot ]! !

!DyCourseHour methodsFor: 'testing' stamp: 'hlsf 28/Sep/2025, 2:27:23 pm (UTC)'!
isDuring: aDateAndTime
	^ dayOfWeek = aDateAndTime dayOfWeek 
		and: [aDateAndTime time between: timeSlots first start and: timeSlots last end]! !

!DyCourseHour class methodsFor: 'user inteface' stamp: 'hlsf 15/Jul/2023, 9:35:55 am (UTC)'!
label
	^ 'period' translated! !

!DyCourseHour class methodsFor: 'user inteface' stamp: 'hlsf 15/Jul/2023, 9:36:05 am (UTC)'!
pluralLabel
	^ 'Periods' translated! !

!DyCourseHourDate methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 3:59:16 pm (UTC)'!
date
	"Answer the value of date"

	^ date! !

!DyCourseHourDate methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 3:59:16 pm (UTC)'!
date: anObject
	"Set the value of date"

	date := anObject! !

!DyCourseHourDate methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:01:34 pm (UTC)'!
printOn: stream
	stream nextPutAll: date ddmmyyyy ;
		nextPut: Character space.
	timeSlots 		
		do: [:each | 	stream nextPutAll: each slotName ]
		separatedBy: [stream nextPut: $-]					! !

!DyCourseHourDate methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:01:45 pm (UTC)'!
timeSlots
	"Answer the value of timeSlots"

	^ timeSlots! !

!DyCourseHourDate methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:01:45 pm (UTC)'!
timeSlots: anObject
	"Set the value of timeSlots"

	timeSlots := anObject! !

!DyCourseHourDate methodsFor: 'converting' stamp: 'hlsf 1/Dec/2024, 4:25:55 pm (UTC)'!
asDateAndTime
	^ DateAndTime 
		date: date
		time: timeSlots first start! !

!DyCourseHourDate methodsFor: 'comparing' stamp: 'hlsf 7/Dec/2024, 7:39:53 am (UTC)'!
= aCourseHourDate
	^ date = aCourseHourDate date 
	and: [timeSlots = aCourseHourDate timeSlots]! !

!DyCourseHourDate methodsFor: 'comparing' stamp: 'hlsf 7/Dec/2024, 7:41:14 am (UTC)'!
hash
	^ date hash bitXor: timeSlots hash! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 12/Dec/2024, 7:08:35 pm (UTC)'!
activeView
	^ controlsManager activeView ! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 1/Sep/2024, 7:59:47 am (UTC)'!
controlsManager
	^ controlsManager ! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 31/Dec/2024, 9:08:13 am (UTC)'!
currentTopic
	^ currentTopic ! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 31/Dec/2024, 10:33:21 am (UTC)'!
currentTopic: aTopic
	currentTopic := aTopic ! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 28/Apr/2026, 8:14:28 am (UTC)'!
defaultColor
	^ controlsManager defaultColor! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 16/Aug/2023, 7:40:14 pm (UTC)'!
domain
	^ domain! !

!Dybo methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 3:02:49 pm (UTC)'!
view
	^ controlsManager dyboView! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 31/Dec/2024, 9:07:16 am (UTC)'!
goBinder
	activeViewType := #binder.
	controlsManager plugBinder.
	self changed: #isView:	! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 16/Aug/2025, 2:21:10 pm (UTC)'!
goDocument
" Plug a new document "
	^ self goDocument:  (DocumentView presenter: Document new :: installView)
! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 14/Dec/2024, 12:55:15 pm (UTC)'!
goDocument: aDocumentView
" Go to an existing document "
	activeViewType := #document.
	controlsManager 
		docView: aDocumentView;
		plugInDyboView: aDocumentView.
	self changed: #isView:.
	^ controlsManager docPresenter! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 1/Dec/2024, 3:18:51 pm (UTC)'!
goSettings
	activeViewType := #settings.
	controlsManager plugSettings.
	self changed: #isView:! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 1/Dec/2024, 3:18:51 pm (UTC)'!
goStart
	activeViewType := #start.
	controlsManager plugStart.
	self changed: #isView:! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 1/Dec/2024, 3:18:51 pm (UTC)'!
goTasks
	activeViewType := #tasks.
	controlsManager plugTask.
	self changed: #isView:! !

!Dybo methodsFor: 'actions' stamp: 'hlsf 26/Feb/2026, 12:51:18 pm (UTC)'!
toggleFullscreen
	DyboSystem toggleFullscreen ! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
deleteDocument: aDocument 
 | topic binderView |
	binderView := controlsManager activeView.
	topic := binderView topic.
	(PopUpMenu 
		confirm: ('Delete the document: {1}
in the topic: {2}?' translated 
			format: {aDocument model dirName. topic })
		trueChoice: 'Yes, I want to delete it.' translated falseChoice: 'No, keep it.' translated) 
			ifFalse: [^ self].
	DyUserData current deleteDocument: aDocument from: topic.
	binderView updateView.
	DyboSystem saveData! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 7/May/2026, 12:49:43 pm (UTC)'!
exportDocument: aDocument
	| exportedDocDirectory |
	self isExchangePath ifFalse: [^ self].
	exportedDocDirectory := DyboSystem exchangePath asDirectoryEntry / 'exports' / aDocument model relPath.
	exportedDocDirectory exists
		ifTrue: [(PopUpMenu 
			confirm: 'This document has already been exported.
Do you want to overwrite it?' translated
			trueChoice: 'Overwrite' translated
			falseChoice: 'Cancel' translated) 
				ifTrue: ["delete previous export"
					exportedDocDirectory recursiveDelete ] 
				ifFalse: [^ self] ].
	aDocument model path asDirectoryEntry copyTo: exportedDocDirectory pathName
	! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 10/May/2026, 9:32:28 am (UTC)'!
importDocument
	| answer importedDocument |
	self isExchangePath ifFalse: [^ self].
"	1. Select a document "
	answer := (StandardFileMenu new oldDirectoryFrom: DyboSystem exchangePath asDirectoryEntry / 'exports')
		startUpWithCaption: 'Select a document' translated.
	answer ifNil: [^ self].
"	2. Check it is a valid document, with a doc.obj file "
	(answer directory // 'doc.obj') exists ifFalse: [^ PopUpMenu inform: 'Not a valid document.'].
"	3. Check it does not exist in current topic "
	(currentTopic directory / answer name) existsAsDirectory ifTrue: [
		(PopUpMenu 
		    confirm: 'This document already exists.
Do you want to overwrite it?' translated
		    trueChoice: 'Overwrite' translated
 		falseChoice: 'Cancel' translated) 
				ifTrue: ["delete previous import"
					DyUserData current deleteDocumentNamed: answer name from: currentTopic] 
				ifFalse: [^ self] ].
"	4. copy the document and open it "
	answer directory copyTo: (currentTopic directory / answer name) pathName.
	importedDocument := Document loadDocument: currentTopic relPath, '/', answer name.
" 	5. Import the document in the topic "
	DyUserData current importDocument: importedDocument in: currentTopic.
"	6. Save data "
	self activeView updateView.
	DyboSystem saveData! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 14/Jul/2026, 11:26:06 am (UTC)'!
importPDF
	| newDoc answer |
	currentTopic ifNil: [^ self].
	answer := (StandardFileMenu  new 
		oldFileFrom:  DyboSystem myPDFPath 
		withPattern:  '*.pdf'
		excludePattern: '.*') startUpWithCaption: 'Import a PDF document.' translated.
	answer ifNil: [^ self].
	newDoc := self newDocument.
	newDoc model title: (answer name allButLast: 4) capitalized.
	newDoc 	importPDF: answer directory // answer name.
	" Remove the former first page and present the first page "
	newDoc view 
		goFirstPage;
		deletePage.
	newDoc 
		modified;
		saveDocument.
	^ newDoc! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 17/Apr/2026, 10:28:14 am (UTC)'!
newDocument
	| newDoc |
	currentTopic ifNil: [^ self].
	newDoc := DyUserData current addDocument: self goDocument to: currentTopic.
	DyboSystem saveData.
	^ newDoc ! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 31/Dec/2024, 10:35:33 am (UTC)'!
openDocument: aDocument
	self goDocument: aDocument view! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 11/Jun/2026, 8:50:55 am (UTC)'!
renameDocument: aPreviewMorph 
	StringRequestMorph 
		request:  'Rename the document' translated
		initialAnswer:  aPreviewMorph object model title
		do: [:aString |
			aString ifNotEmpty: [
				aPreviewMorph object model title: aString.
				aPreviewMorph relabel: aString.
				aPreviewMorph object saveDocument.
				controlsManager activeView updateView]
			]! !

!Dybo methodsFor: 'actions binder' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
saveDocument: aDocument 
 | binderView |
	binderView := controlsManager activeView.
	aDocument saveDocument ifTrue: [binderView updateView]! !

!Dybo methodsFor: 'actions exchange' stamp: 'hlsf 10/May/2026, 10:54:05 am (UTC)'!
backupUserData
	| backupDir archive |
	self isExchangePath ifFalse: [^ self].
	WaitSpinner start.
	backupDir := (DyboSystem exchangePath asDirectoryEntry / 'backup') assureExistence.
	archive := DyboSystem exchangePath asDirectoryEntry / 'archive'.
	archive recursiveDelete.
	backupDir copyTo: archive pathName.
	backupDir recursiveDelete.
	DyboSystem userDataPath copyTo: backupDir pathName.
	WaitSpinner stop! !

!Dybo methodsFor: 'actions exchange' stamp: 'hlsf 15/May/2026, 3:04:00 pm (UTC)'!
chooseExchangePath: label
	| answer exchangeDirecotry |
	exchangeDirecotry := DyboSystem exchangePath 
		ifEmpty: [DirectoryEntry userBaseDirectory]
		ifNotEmpty: [:path | path asDirectoryEntry].	
	answer := (StandardFileMenu new newDirectoryFrom: exchangeDirecotry)
		startUpWithCaption: 'Select the exchange folder' translated.
	answer ifNil: [^ self].
	exchangeDirecotry := answer directory name = answer name 
		ifTrue: [answer directory ]
		ifFalse: [	answer directory / answer name].  " The user input a new directory name "
	DyboSystem exchangePath: exchangeDirecotry printString.
	controlsManager setExchangePathIn: label
	! !

!Dybo methodsFor: 'actions exchange' stamp: 'hlsf 10/May/2026, 10:54:33 am (UTC)'!
restoreUserData
	| backupDir archive warningMsg |
	self isExchangePath ifFalse: [^ self].
	backupDir := (DyboSystem exchangePath asDirectoryEntry / 'backup') assureExistence.
	archive := DyboSystem exchangePath asDirectoryEntry / 'archive'.
"	1. Ensure we have a valid backup "	
	(backupDir // 'data.obj') exists ifFalse: [
		^ PopUpMenu inform: 'No backup was found to restore.' translated].
"	2. Warning about the destructive operation on the local user data "	
	warningMsg := 'You are about to restore your user data from the backup at:
{1}
All current local data will be replaced.
Do you really want to proceed?' translated format: { backupDir pathName }.
	(PopUpMenu 
		confirm: warningMsg 
		trueChoice: 'Restore' translated
 		falseChoice: 'Cancel' translated) ifFalse: [^ self].
	WaitSpinner start.
"	3. Delete the archive and make a copy of the local data in the archvie "
	archive recursiveDelete.
	DyboSystem userDataPath copyTo: archive pathName.
"	4. Delete the local user data, restore it from the backup and load the new data "
	DyboSystem userDataPath recursiveDelete.
	backupDir copyTo: DyboSystem userDataPath pathName.
	DyUserData load.
	WaitSpinner stop.! !

!Dybo methodsFor: 'actions paper' stamp: 'hlsf 17/Jul/2026, 10:43:21 am (UTC)'!
paperBackgroundIndex
	^ DyboSystem paperBackgrounds indexOf: (Preferences at: #paperModel)! !

!Dybo methodsFor: 'actions paper' stamp: 'hlsf 17/Jul/2026, 10:34:43 am (UTC)'!
paperBackgroundIndex: newIndex
	Preferences 
		at: #paperModel
		put: (DyboSystem paperBackgrounds at: newIndex).
	Preferences saveToDisk: #paperModel! !

!Dybo methodsFor: 'actions paper' stamp: 'hlsf 17/Jul/2026, 10:33:05 am (UTC)'!
paperBackgrounds
	^ DyboSystem paperBackgrounds collect: [:aSymbol | (Smalltalk at: aSymbol) title]! !

!Dybo methodsFor: 'actions paper' stamp: 'hlsf 17/Jul/2026, 10:11:35 am (UTC)'!
paperRatioIndex
	^ DyboSystem paperRatios indexOf: (Preferences at: #paperRatio)! !

!Dybo methodsFor: 'actions paper' stamp: 'hlsf 17/Jul/2026, 10:09:01 am (UTC)'!
paperRatioIndex: newIndex
	Preferences 
		at: #paperRatio 
		put: (DyboSystem paperRatios at: newIndex).
	Preferences saveToDisk: #paperRatio! !

!Dybo methodsFor: 'actions paper' stamp: 'hlsf 17/Jul/2026, 10:08:14 am (UTC)'!
paperRatios
	^ DyboSystem paperRatios collect: [:ratio |
		 ratio caseOf: {
			[16@9] -> ['Wide 16/9' translated] .
			[210@297] -> ['A4 portrait' translated].
			[297@210] -> ['A4 landscape' translated]} ]! !

!Dybo methodsFor: 'actions task' stamp: 'hlsf 17/Apr/2026, 10:12:36 am (UTC)'!
deleteTask: aDyTask 
	(PopUpMenu 
		confirm: ('Delete the task at {1}?' translated format: {aDyTask})
		trueChoice: 'Yes' translated falseChoice: 'No' translated) ifFalse: [^ self].
	DyUserData current deleteTask: aDyTask.
	DyboSystem saveData.
	self activeView resetTask.! !

!Dybo methodsFor: 'actions task' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
saveCurrentTask
	" The user is viewing an existing task, save what has been edited, if any "
	| task agendaView |
	agendaView := self activeView.
	task :=  agendaView task.
	agendaView courseHourDate ifNil: [ ^ self ]. "Quit, no course hour date selected or one in the past nil-ified "
	" Does the task's document have unsaved state? "
	task document saveDocument.
	" Was the task's course hour date modified? "
	agendaView courseHourDate = task courseHourDate ifFalse: [	
		task courseHourDate: agendaView courseHourDate .
		DyboSystem saveData.
		agendaView changedFutureTasks]
	! !

!Dybo methodsFor: 'actions task' stamp: 'hlsf 17/Apr/2026, 10:13:06 am (UTC)'!
saveNewTask
	| taskView task |
	taskView := self activeView.
	taskView isTaskValid ifFalse: [^ self].
	task := DyTask new
		courseHourDate: taskView courseHourDate;
		document: controlsManager docPresenter.		
	DyUserData current newTask: task.
	DyboSystem saveData.
	taskView resetTask 
	! !

!Dybo methodsFor: 'actions task' stamp: 'hlsf 12/Dec/2024, 7:09:51 pm (UTC)'!
saveTask
	self activeView task
		ifNotNil: [self saveCurrentTask]
		ifNil: [self saveNewTask]
	! !

!Dybo methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:08:13 am (UTC)'!
defaultBorderColor
	^ controlsManager defaultBorderColor ! !

!Dybo methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 10:13:30 am (UTC)'!
initialize
	self installComponents ! !

!Dybo methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 3:59:26 pm (UTC)'!
installComponents
	controlsManager := DyControlsManager new.
	DyboSystem isDeployment 
		ifTrue:  [controlsManager installDyboFullscreenView: self]
		ifFalse: [	controlsManager installDyboWindow: self].
	self view openInWorld.
	self goStart.
! !

!Dybo methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 10:42:01 am (UTC)'!
load
	DyUserData load.
	self installComponents ! !

!Dybo methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 10:41:18 am (UTC)'!
reset
	controlsManager := activeViewType := currentTopic := nil! !

!Dybo methodsFor: 'testing' stamp: 'hlsf 21/May/2026, 8:20:19 am (UTC)'!
isExchangePath
	^ DyboSystem exchangePath notEmpty or: [
		PopUpMenu inform: 'No exchange folder defined.
Go to Settings/Exchange Data to set one.' translated.
		false]! !

!Dybo methodsFor: 'testing' stamp: 'hlsf 1/Dec/2024, 3:18:51 pm (UTC)'!
isView: aSymbolView
" We have the start, tasks, binder, and settings views "
	^ activeViewType == aSymbolView ! !

!Dybo methodsFor: 'tool' stamp: 'hlsf 14/Dec/2024, 12:27:18 pm (UTC)'!
isTool: aToolName
	^ controlsManager docPresenter isTool: aToolName ! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 22/Feb/2026, 9:33:07 am (UTC)'!
about
	UISupervisor whenUIinSafeState: [
		(PopUpMenu labels: ' Ok ') 
			startUpNonModalWithCaption:  self informationString ]! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 22/Feb/2026, 8:59:35 am (UTC)'!
copyright
	^ 'Source code application: Copyright 2023-2026 Hilaire Fernandes'! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 22/Feb/2026, 8:59:50 am (UTC)'!
cuisVersion
	^ SystemVersion current versionString, ' #', SystemVersion current highestUpdate printString! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 23/Feb/2026, 9:31:44 am (UTC)'!
getMenuIn: aWorld at: aHand
	| menu |
	menu :=  (CommandBuilder on: #dyboWorldMenu) getMenu.
	menu addStayUpIcons ;
		addTitle: 'System menu' translated.
	^ menu! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 23/Feb/2026, 9:40:01 am (UTC)'!
informationString
	|text |
	text := 'The Dybo application for educators and learners to manage their job. 
{1}

{2}
LICENSES: 
 - Dybo packages LGPL
 - Each DKM package is released under the terms of its specific license 
     with possible restrictions.' translated format: {self version. self copyright}.
	^ text! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 22/Feb/2026, 9:32:22 am (UTC)'!
quit
	(self confirm: 'You may have unsaved data!! 
Are you sure to quit the Dybo application?' translated) ifFalse: [ ^ self].
	Smalltalk quitPrimitive! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 22/Feb/2026, 10:00:09 am (UTC)'!
toolsMenu: builder
	<dyboWorldMenu>
	(builder newEntry: 'System Browser' translated in: 'Tools' translated)
		icon: #developmentIcon;
		action: [HierarchyBrowserWindow onClass: Dybo selector: nil];
		help:'A source code browser to view, edit and save Dybo code. Hacker only!!' translated;
		order: 40.

	(builder newEntry: 'Workspace' translated in: 'Tools' translated)
		icon: #terminalIcon;
		action: [Workspace open ];
		help: 'A window used as a scratchpad area where fragments of Cuis-Smalltalk code can be entered, stored, edited, and evaluated. ' translated;
		order: 30.

	(builder newEntry: 'Transcript' translated in: 'Tools' translated)
		icon: #printerIcon;
		action: [Transcript open ];
		help: 'A window used to print information from the code - text output. Any object receiving the message #print is output in the Transcript: ''hello'' print, (k * 5) print. Use the Transcript class for more elaborated output.' 	translated;
		order: 35.
		
	(builder newEntry: 'Open a file' translated in: 'Tools' translated)
		icon: #systemFileManagerIcon;
		action: [FileList open];
		help: 'Open the filer on your personal models collection.' translated;
		order: 50.
		
	(builder newEntry: 'Save session' translated in: 'Tools' translated)
		order: 999;
		action: [Smalltalk saveImage];
		icon: #saveIcon;
		help: 'Save this Dybo application as it is right now.' translated! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 23/Feb/2026, 9:33:37 am (UTC)'!
version
	^ 'Release ' translated, 
		'26.02a beta', 
		(String streamContents: [:str | 
			str nextPut: Character lf; nextPut: Character lf.
			str nextPutAll: self cuisVersion; nextPut: Character lf.
			#('Dybo' 'DyboDoc' 'DyboTools-Geometry') 
				do: [:each | 
					str nextPutAll: each; nextPut: Character space.
					(CodePackage installedPackages at: each) featureSpec provides printVersionRevisionOn: str.
					str nextPut: Character lf].
			(CodePackage installedPackages select: [:each | 'DKM-*' match: each packageName]) 
				do:  [:package |
					str nextPutAll: package packageName; nextPut: Character space.
					package featureSpec provides printVersionRevisionOn: str]
				separatedBy: [str nextPut: Character lf]
			])! !

!Dybo class methodsFor: 'menu' stamp: 'hlsf 23/Feb/2026, 9:36:19 am (UTC)'!
worldMenu: builder
	<dyboWorldMenu>
	(builder newEntry: 'Open Dybo environent' translated)
		icon: #openIcon;
		action: [Dybo load];
		order: 20.
	(builder newEntry: 'New Dybo environment' translated)
		icon: #newIcon;
		action: [Dybo new];
		order: 10.
	(builder newEntry: 'Toggle full screen mode' translated)
		icon: #viewFullscreenIcon;
		action: [DyboSystem toggleFullscreen];
		help: 'Turn full screen mode on when it is off, off when it is on.' translated;
		order: 30.
	(builder newEntry: 'Tools' translated)
		order: 40;
		icon: #systemIcon.
	(builder newEntry: 'About' translated)
		action: [ Dybo about ];
		order: 100.
	(builder newEntry:  'Quit' translated)
		action: [ Dybo quit ];
		icon: #quitIcon;
		order: 999! !

!Dybo class methodsFor: 'instance creation' stamp: 'hlsf 16/Feb/2026, 7:54:01 pm (UTC)'!
load
" load the user data in a new Dybo window "
	^ self basicNew
		load! !

!Dybo class methodsFor: 'instance creation' stamp: 'hlsf 21/May/2026, 5:28:09 pm (UTC)'!
start
" 	I am starting operation,  
	if user data does not exist I start the Dybo Wiizard, otherwise I just load the data "
	DyboSystem isUserData 
		ifTrue: [self load] 
		ifFalse: [DyWizardNewUser open: DyNewUser new :: centered]! !

!DyPlatform methodsFor: 'user interface' stamp: 'hlsf 29/Aug/2024, 9:50:31 am (UTC)'!
iconToolbarSize
	^ 32! !

!DyPlatform methodsFor: 'user interface' stamp: 'hlsf 14/Aug/2023, 8:11:06 pm (UTC)'!
miniToolbarSize
	^ self iconToolbarSize // 2! !

!DyPlatform methodsFor: 'user interface' stamp: 'hlsf 24/Feb/2026, 1:04:06 pm (UTC)'!
toggleFullscreen
	fullscreen := fullscreen not.
	Display fullScreenMode: fullscreen ! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 25/Feb/2026, 1:26:47 pm (UTC)'!
iconsPath
	^ self resourcesPath / 'graphics' / 'icons'! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 9/Feb/2026, 4:36:05 pm (UTC)'!
resourcesPath
	^ self rootPath / 'Resources'
	! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 1/Aug/2023, 10:04:45 am (UTC)'!
rootPath
"Dynabook/ directory"
	^ DirectoryEntry smalltalkImageDirectory parent parent! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 9/Feb/2026, 4:25:04 pm (UTC)'!
userPath
"Where are located user resources as PDF, image, DKM scripts 
Global variable userPath may be set by Dybo start-up script "
	^ Smalltalk at: #userPath ifAbsent: [self userPathPreference]! !

!DyPlatform methodsFor: 'path' stamp: 'hlsf 23/May/2026, 2:27:29 pm (UTC)'!
userPathPreference
"	Is there a user prefrerence where to save user data ?"
	^ (Preferences at: #userPath) 
		ifNotEmpty: [:userPath | | userDirectoryEntry |
			userDirectoryEntry := userPath asDirectoryEntry .
			" Check if it is a relative path or an absolute path "
			userDirectoryEntry pathName = userPath
				ifTrue: [userDirectoryEntry "Absolute path"]
				ifFalse: ["Relative path, append the home/user directory if any"
					Smalltalk at: #home 
						ifPresent: [:home | home / userPath]
						ifAbsent: [userDirectoryEntry ] ] ]
		ifEmpty: [self resourcesPath ]
		! !

!DyPlatform methodsFor: 'preferences' stamp: 'hlsf 5/May/2026, 12:43:38 pm (UTC)'!
desktopPreferences
	Preferences 
		at: #worldMenu put: Dybo;
		at: #fullScreenLeavesDeskMargins put: false.
! !

!DyPlatform methodsFor: 'preferences' stamp: 'hlsf 17/Jul/2026, 10:24:29 am (UTC)'!
paperPreferences
	Preferences 
		name: #paperRatio
		description: 'The default ratio of a page defined by two numbers, width and height.' translated
		category: #dybo 
		type: Point 
		value: 16@9;
		
		name: #paperModel
		description: 'The default background for a new page in a document.' translated
		category: #dybo
		type: Symbol
		value: #PageBackgroundHL! !

!DyPlatform methodsFor: 'preferences' stamp: 'hlsf 5/May/2026, 12:42:39 pm (UTC)'!
pathPreferences
	Preferences 
		name: #userPath
		description:  'Path for user data as documents, PDF, knowledge models. An empty path locates these resources in the Dybo application folder. Relative path accepted, home/user directory is then prepended' translated
		category:  #dybo
		type:  nil
		value: ''! !

!DyPlatform methodsFor: 'initialize-release' stamp: 'hlsf 5/May/2026, 12:45:06 pm (UTC)'!
initialize
	fullscreen := true.
	self desktopPreferences.
	self paperPreferences.
	self pathPreferences
! !

!DyPlatform methodsFor: 'initialize-release' stamp: 'hlsf 16/Jul/2026, 9:30:57 am (UTC)'!
launch
"	
	Set a default name for authoring "
	Transcript show: '[Dybo] Author set to "Dybo App User" (dau)'; cr.
	Utilities setAuthorInitials: 'dau' name: 'Dybo App User'.
	Transcript show: '[Dybo] Fullscreen from preference'; cr.
	Display fullScreenMode: fullscreen
	! !

!DyPlatform methodsFor: 'initialize-release' stamp: 'hlsf 3/May/2026, 11:16:52 am (UTC)'!
reset
	icons := scriptLibrary := nil! !

!DyPlatform methodsFor: 'accessing' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
icons
	^ icons ifNil: [icons := IconImporter path: DyboSystem iconsPath]! !

!DyPlatform methodsFor: 'accessing' stamp: 'hlsf 14/Feb/2026, 10:13:12 am (UTC)'!
scriptLibrary
	^ scriptLibrary ifNil: [
		scriptLibrary := DKMScriptLibrary new 
			scanForScripts;
			yourself]! !

!DyPlatform methodsFor: 'testing' stamp: 'hlsf 25/Feb/2026, 7:13:33 am (UTC)'!
isDeployment
	^ true! !

!DyDevelopment methodsFor: 'path' stamp: 'hlsf 24/Feb/2026, 7:47:06 am (UTC)'!
resourcesPath
	^ self rootPath / 'resources'! !

!DyDevelopment methodsFor: 'path' stamp: 'hlsf 10/Oct/2024, 8:18:28 am (UTC)'!
rootPath
"dynabook/ directory"
	^ DirectoryEntry smalltalkImageDirectory parent / 'DyboApp'! !

!DyDevelopment methodsFor: 'path' stamp: 'hlsf 11/Feb/2026, 4:07:25 pm (UTC)'!
userPath
	^ self rootPath / 'resources'! !

!DyDevelopment methodsFor: 'preferences' stamp: 'hlsf 15/May/2026, 3:03:28 pm (UTC)'!
desktopPreferences
	Preferences 
		at: #fullScreenLeavesDeskMargins put: true;
		at: #worldMenu put: TheWorldMenu.
"	For test purpose. In deployment, set at image installation "
	Preferences name: #useUserPrefsFile category: #system value: true.
	Preferences name: #ppcm category: #dybo value: 59.
	Preferences name: #exchangePath category: #dybo value: ''.! !

!DyDevelopment methodsFor: 'initialize-release' stamp: 'hlsf 5/May/2026, 12:48:23 pm (UTC)'!
initialize
	super initialize.
	fullscreen := false.
! !

!DyDevelopment methodsFor: 'testing' stamp: 'hlsf 9/Mar/2026, 7:21:34 pm (UTC)'!
isDeployment
	^ false ! !

!DyboSystem class methodsFor: 'class initialization' stamp: 'hlsf 9/Aug/2023, 12:40:44 pm (UTC)'!
beApplication
	platform := DyPlatform new! !

!DyboSystem class methodsFor: 'class initialization' stamp: 'hlsf 9/Aug/2023, 12:41:14 pm (UTC)'!
beDevelopment
	platform := DyDevelopment new! !

!DyboSystem class methodsFor: 'class initialization' stamp: 'hlsf 12/Oct/2024, 8:50:25 am (UTC)'!
reset
	platform reset! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 14/Aug/2023, 8:11:06 pm (UTC)'!
iconToolbarSize
" Size of the squared icons in the top toolbar"
	^ platform iconToolbarSize ! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 24/Dec/2024, 1:38:43 pm (UTC)'!
icons
" Access to the icons manager"
	^ platform icons! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 13/Aug/2023, 3:16:57 pm (UTC)'!
miniToolbarSize
" Size of the squared icons in the secondary toolbar"
	^ platform miniToolbarSize ! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 3/May/2026, 11:09:23 am (UTC)'!
ppcm
	^ Preferences at: #ppcm! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 15/May/2026, 2:56:42 pm (UTC)'!
ppcm: number
	Preferences name: #ppcm category: #dybo value: number.
	Preferences saveToDisk: #ppcm
	! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 12/Oct/2024, 7:40:04 am (UTC)'!
screenSize
	^ self runningWorld morphExtent! !

!DyboSystem class methodsFor: 'user interface' stamp: 'hlsf 24/Feb/2026, 1:03:05 pm (UTC)'!
toggleFullscreen
	platform toggleFullscreen ! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 15/May/2026, 2:58:26 pm (UTC)'!
exchangePath
	^ Preferences at: #exchangePath! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 16/Jul/2026, 5:11:52 pm (UTC)'!
exchangePath: aPath
	Preferences name: #exchangePath category: #dybo value: aPath.
	Preferences saveToDisk: #exchangePath! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 11/Feb/2026, 4:11:45 pm (UTC)'!
iconsPath
	^ platform iconsPath! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 14/Jul/2026, 1:53:41 pm (UTC)'!
myExportPath
" the location of the user exported file "
	^ (platform userPath / 'myExports') assureExistence ! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 23/Feb/2026, 10:39:37 am (UTC)'!
myPDFPath
" the location of the user resources as PDF or other media files "
	^ (platform userPath/ 'myPDF') assureExistence ! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 10/May/2026, 10:38:57 am (UTC)'!
myScriptsPath
" the location of the user DKM scripts "
	^ (self userDataPath / 'myScripts') assureExistence ! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 9/Feb/2026, 4:37:22 pm (UTC)'!
scriptsPath
" the location of the DKM scripts shipped with DyboApp"
	^ platform resourcesPath / 'scripts'! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 16/Dec/2024, 7:43:05 pm (UTC)'!
tasksRelPath
" the location of the user documents "
	^ 'tasks'! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 21/May/2026, 8:27:13 am (UTC)'!
userDataFile
	^ self userDataPath // 'data.obj'! !

!DyboSystem class methodsFor: 'path - file' stamp: 'hlsf 9/May/2026, 4:19:56 pm (UTC)'!
userDataPath
" the location of the user data and documents "
	^ (platform userPath / 'userData') assureExistence ! !

!DyboSystem class methodsFor: 'events' stamp: 'hlsf 5/Apr/2026, 8:23:38 am (UTC)'!
renameClassGroup: aClassGroup from: prevName to: newName
	'Class group renamed: maintenance operations' print.
	self rename: prevName to: newName in: aClassGroup directory parent! !

!DyboSystem class methodsFor: 'events' stamp: 'hlsf 5/Apr/2026, 8:23:25 am (UTC)'!
renameCourse: aCourse from: prevName to: newName
	'Course renamed: maintenance operations' print.
	self rename: prevName to: newName in: aCourse directory parent! !

!DyboSystem class methodsFor: 'events' stamp: 'hlsf 17/Apr/2026, 10:29:28 am (UTC)'!
renameSchool: aSchool from: prevName to: newName
"Should use a data manager facade at some point "
	'School renamed: maintenance operations' print.
	self rename: prevName to: newName in: DyboSystem userDataPath ! !

!DyboSystem class methodsFor: 'events' stamp: 'hlsf 5/Apr/2026, 8:44:29 am (UTC)'!
renameTopic: aTopic from: prevName to: newName
	'Topic renamed: maintenance operations' print.
	self rename: prevName to: newName in: aTopic directory parent! !

!DyboSystem class methodsFor: 'accessing' stamp: 'hlsf 17/Jul/2026, 10:21:12 am (UTC)'!
paperBackground
	^ Smalltalk at: (Preferences at: #paperModel)! !

!DyboSystem class methodsFor: 'accessing' stamp: 'hlsf 17/Jul/2026, 10:24:17 am (UTC)'!
paperBackgrounds
	^ `#(PageBackgroundBlank PageBackgroundHL PageBackgroundGrid PageBackgroundMillimeter)`! !

!DyboSystem class methodsFor: 'accessing' stamp: 'hlsf 17/Jul/2026, 10:06:05 am (UTC)'!
paperRatios
	^ `Array with: 16@9 with: 210@297 with: 297@210`! !

!DyboSystem class methodsFor: 'accessing' stamp: 'hlsf 17/Jul/2026, 10:20:28 am (UTC)'!
paperSize
" Its width fill the screen, according to its default ratio "
	| paperRatio |
	paperRatio := Preferences at: #paperRatio.
	^ (paperRatio * (self screenSize x / paperRatio x) asFloat) asIntegerPoint .! !

!DyboSystem class methodsFor: 'accessing' stamp: 'hlsf 15/Feb/2026, 1:13:37 pm (UTC)'!
scriptLibrary
	^ platform scriptLibrary ! !

!DyboSystem class methodsFor: 'disk operations' stamp: 'hlsf 4/Apr/2026, 2:27:00 pm (UTC)'!
convert: destEntry pages: interval dpi: integer
" 
	In destEntry, convert the import.pdf interval pages at interger resolution	   
"
	| converstionCommand resolution |
	resolution := integer min: 300 max: 75.
	converstionCommand := interval 
		ifNil: ['pdftocairo -r {1} -jpeg -jpegopt quality=90 "{2}/import.pdf" "{2}/page"' format: {
			resolution . destEntry pathName }] 
		ifNotNil: ['pdftocairo -r {1} -jpeg -jpegopt quality=90 -f {2} -l {3} "{4}/import.pdf" "{4}/page"' format: {
			resolution. 
			interval first. interval last.
			destEntry pathName }].
	^ OSProcess command: converstionCommand ! !

!DyboSystem class methodsFor: 'disk operations' stamp: 'hlsf 4/Apr/2026, 2:28:05 pm (UTC)'!
import: pdfEntry to: destEntry pages: interval
"
	In our destEntry, generate a import.pdf document with the selected pages interval, if fany ;
	then in destEntry, convert the import.pdf interval pages at integer resolution	
"
	| importCommand process |
	destEntry assureExistence.
	importCommand := interval 
		ifNil:  ['pdftocairo -pdf "{1}" "{2}/import.pdf"' format: { pdfEntry pathName . destEntry pathName } ]
		ifNotNil: ['pdftocairo -pdf "{1}" -f {2} -l {3} "{4}/import.pdf"' format: {
			pdfEntry pathName.
			interval first. interval last.
			destEntry pathName}].
	process := OSProcess command: importCommand.
	[process isComplete] whileFalse: [(Delay forMilliseconds: 100) wait].
	^ self convert: destEntry pages: interval dpi: 150.! !

!DyboSystem class methodsFor: 'disk operations' stamp: 'hlsf 5/Apr/2026, 1:29:01 pm (UTC)'!
removeUserData
	self userDataPath childrenDo: [:each | each recursiveDelete ].
	! !

!DyboSystem class methodsFor: 'disk operations' stamp: 'hlsf 12/Feb/2026, 6:31:19 pm (UTC)'!
rename: oldName to: newName in: parentDir
	| dir |
	oldName = newName ifTrue: [^ self].
	oldName 
		ifNil: [" folder does not exist yet, create it "
			(parentDir / newName asFileName ) assureExistence ]
	 	ifNotNil: [ " folder exists, rename it "
			(dir := parentDir / oldName asFileName) exists 
				ifTrue: [dir rename: newName asFileName ] 
				ifFalse: [(parentDir / newName asFileName ) assureExistence]]! !

!DyboSystem class methodsFor: 'disk operations' stamp: 'hlsf 21/May/2026, 8:27:45 am (UTC)'!
saveData
	ReferenceStream 
		dumpOnCompressedFile: DyboSystem userDataFile
		object: DyUserData current! !

!DyboSystem class methodsFor: 'system-support' stamp: 'hlsf 16/Jul/2026, 9:35:55 am (UTC)'!
install
! !

!DyboSystem class methodsFor: 'system startup' stamp: 'hlsf 22/Feb/2026, 8:01:43 am (UTC)'!
launch
	Transcript show: '[Dybo] launching started'; cr.
	platform launch.
	Transcript show: '[Dybo] launching ended'; cr.
	! !

!DyboSystem class methodsFor: 'testing' stamp: 'hlsf 25/Feb/2026, 7:14:16 am (UTC)'!
isDeployment
	^ platform isDeployment ! !

!DyboSystem class methodsFor: 'testing' stamp: 'hlsf 21/May/2026, 8:28:40 am (UTC)'!
isUserData
	^ self userDataFile exists! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 13/Oct/2024, 3:11:46 pm (UTC)'!
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

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
documentCircularToolbar
	| toolsData circularToolbar |
	toolsData := OrderedCollection 
		with: self penColorTools 
		with: self nibSizeTools 
		with: self highlighterColorTools
		with: self highligtherSizeTools
		with: self eraserSizeTools .
	circularToolbar := CircularToolbarMorph new
		color: dyboView defaultColor ;
		selectedColor: dyboView buttonColor;
		extent: 180;
		buttonSize: DyboSystem iconToolbarSize + 8;
		dropDownHeight: 15.
	toolsData do: [:subToolsData | | dropDown |
		dropDown := (self addChevron: subToolsData first to: circularToolbar) addDropDown .
		subToolsData do: [:aToolData | self addChevron: aToolData to: dropDown subtoolbar 		] ].
	self when: #switchView send: #delete to: circularToolbar.
	^ circularToolbar ! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 16/Oct/2024, 8:39:19 pm (UTC)'!
eraser: squareWidth width: width
" An icon to represent partially erased handstrokes "
	| aForm mask scale |
	aForm := self handStroke: squareWidth width: 4 color: Color black.
	scale := squareWidth / 60.
	mask := Form extent: 60@60 * scale depth: 32.
	(VectorEngine onForm: mask subPixelAntiAliasing: true)
		strokeWidth: width color: Color black do: [:engine |
			engine moveTo: 20@0 * scale;
				lineTo: 40@60 * scale].
	^ aForm eraseShape: (mask asFormOfDepth: 1)
! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
eraserSizeTools
" Data to build the circular sub toolbar of nib size "
	| size help |
	size := DyboSystem iconToolbarSize.
	help := 'Erase with a width of {1} pixels.' translated.
	^ #(4 8 16 ) collect: [:eraserSize | 
		Array 
			with:	(#eraserSize, eraserSize asString) asValidSelector asSymbol
			with: (self eraser: size width: eraserSize )
			with: (help format: {eraserSize })		 	]! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 16/Oct/2024, 4:53:46 pm (UTC)'!
handStroke: squareWidth width: width color: color
" Handstrokes to represent writting icon "
	| aForm scale |
	scale := squareWidth / 60.
	aForm := Form extent: 60@60 * scale depth: 32.
	(VectorEngine onForm: aForm subPixelAntiAliasing: true)
		strokeWidth: width color: color do: [:engine |
			engine moveTo: 0@10 * scale;
				lineTo: 60@5 * scale;
				quadraticBezierTo: 50@30 * scale control: -50@35 * scale;
				quadraticBezierTo: 20@50 * scale control: -20@40 * scale].
	^ aForm
! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 10/May/2026, 8:35:54 am (UTC)'!
highlighterColorTools
" Data to build the circular sub toolbar of highlighter colors "
	| size help |
	size := DyboSystem iconToolbarSize .
	help := 'Highlight with a {1} color.' translated.
	" XXX any other idea to get the color strings taken in consideration for translation? "	
	'yellow' translated. " Other colors marked for translation in penColorToolsOn: method "
	^ #('yellow' 'red' 'blue' 'green') collect: [:aColor | 
		Array 
			with: (#highlighter, aColor capitalized) asSymbol
			with: (self icons getForm: HighlighterTool iconName ofSize: size fill: (Color perform: aColor asSymbol))
			with: (help format: {aColor translated})]! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
highligtherSizeTools
" Data to build the circular sub toolbar of highligther size "
	| size help |
	size := DyboSystem iconToolbarSize.
	help := 'Highlit with a width of {1} pixels.' translated.
	^ #(10 20 40) collect: [:nibSize | 
		Array 
			with:	(#highlighterSize, nibSize asString) asValidSelector asSymbol
			with: (self tile: size width: nibSize / 2.0 color: (Color black))
			with: (help format: {nibSize })		 	]! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
nibSizeTools
" Data to build the circular sub toolbar of nib size "
	| size help |
	size := DyboSystem iconToolbarSize.
	help := 'Write with a width of {1} pixel(s).' translated.
	^ #(0.5 0.8 1 2 4 6 8 ) collect: [:nibSize | 
		Array 
			with:	(#nibSize, nibSize asString) asValidSelector asSymbol
			with: (self handStroke: size width: nibSize color: Color black)
			with: (help format: {nibSize })		 	]! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 10/May/2026, 8:36:04 am (UTC)'!
penColorTools
" Data to build the circular sub toolbar of pen colors "
	| size help |
	size := DyboSystem iconToolbarSize.
	help := 'Write with a {1} color.' translated.
	" XXX any other idea to get the color strings taken in consideration for translation? "	
	'black' translated. 'blue' translated. 	'green' translated. 'red' translated. 'white' translated.
	^ #('black' 'blue' 'green' 'red' 'white') collect: [:aColor | 
		Array 
			with: (#pen, aColor capitalized) asSymbol
			with: (self icons getForm: PenTool iconName ofSize: size fill: (Color perform: aColor asSymbol))
			with: (help format: {aColor translated})]! !

!DyControlsManager methodsFor: 'circular toolbar' stamp: 'hlsf 15/Oct/2024, 7:10:56 pm (UTC)'!
tile: squareWidth width: width color: color
" A tile to represent a highlighter stroke "
	| aForm scale |
	scale := squareWidth / 60.
	aForm := Form extent: 60@60 * scale depth: 32.
	(VectorEngine onForm: aForm subPixelAntiAliasing: true)
		strokeWidth: width color: color do: [:engine |
			engine moveTo:0@30 * scale ;
			quadraticBezierTo: 30@30 * scale  control: 10@20 * scale;
			quadraticBezierTo: 60@30 * scale control: 		45@40 * scale].
	^ aForm 
! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 13/Oct/2024, 11:09:40 am (UTC)'!
docPresenter
" Access the presenter of the currently used document, if any "
	^ docView presenter! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 18/Dec/2024, 8:23:03 pm (UTC)'!
docView: aView
" Connect the control manager document view to aView (doc)
Update the docView of the current document "
	docView == aView ifTrue: [^ self]. " Already been there "
	docView := aView.
	self docPresenter controlsManager: self
	! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 3:02:37 pm (UTC)'!
dyboPresenter
	^ dyboView presenter! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 3:02:49 pm (UTC)'!
dyboView
	^ dyboView! !

!DyControlsManager methodsFor: 'accessing' stamp: 'hlsf 10/May/2026, 8:35:44 am (UTC)'!
icons
	^ DyboSystem icons! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 24/Feb/2026, 7:04:37 am (UTC)'!
binderButtonData
" label - iconName - callback - description "
	^ {'Binders' translated . 
	#binder . 
	#goBinder . 
	'In the binders, browse the documents of your courses or start a new one.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 26/Feb/2026, 12:53:38 pm (UTC)'!
fullscreenButtonData
" label - iconName - callback - description "
	^ {'Fullscreen' translated . 
	#fitScreen  . 
	#toggleFullscreen . 
	'Toggle between fullscreen and window views.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 24/Feb/2026, 7:08:24 am (UTC)'!
pageButtonData
" label - iconName - callback - description "
	^ {'New document' translated . 
	#document . 
	#goDocument . 
	'Open a blank document to start writing.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 5/Sep/2024, 9:11:51 am (UTC)'!
settingsButtonData
" label - iconName - callback - description "
	^ {'Settings' translated . 
	#settings . 
	#goSettings . 
	'In the Settings, edit your course and student lists.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 5/Sep/2024, 9:11:57 am (UTC)'!
startButtonData
" label - iconName - callback - description "
	^ {'Start' translated . 
	#start . 
	#goStart . 
	'In Start, review and search for the recent activities.' translated }! !

!DyControlsManager methodsFor: 'controls data' stamp: 'hlsf 5/Sep/2024, 9:12:02 am (UTC)'!
tasksButtonData
" label - iconName - callback - description "
	^ {'Tasks' translated . 
	#tasks . 
	#goTasks . 
	'In the Tasks, review forthcoming tasks and assign a new one.' translated }! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:47:43 am (UTC)'!
buttonColor
	^ Theme current buttonColorFrom: self defaultBorderColor! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 8:50:33 am (UTC)'!
defaultBorderColor
	^ Theme current transcript! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:47:26 am (UTC)'!
defaultColor
	^ Theme current paneBackgroundFrom:  self defaultBorderColor! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:51:55 am (UTC)'!
installDyboFullscreenView: aPresenter
	self installDyboView: aPresenter in: DyboFullscreenView ! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 10/May/2026, 10:23:38 am (UTC)'!
installDyboView: aPresenter in: aDyboViewClass
	dyboView := aDyboViewClass for: aPresenter.
	dyboView 
		addMorph: self dyboToolbar 
		layoutSpec: (LayoutSpec fixedHeight: DyboSystem iconToolbarSize + 4).
	dyboView layoutMorph
		gap: 20;
		padding: 5@5. 
	self plugStart! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:49:51 am (UTC)'!
installDyboWindow: aPresenter
	self installDyboView: aPresenter in: DyboWindow ! !

!DyControlsManager methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:46:07 am (UTC)'!
windowColor
	^ self defaultBorderColor ! !

!DyControlsManager methodsFor: 'plugged views' stamp: 'hlsf 14/Dec/2024, 1:21:49 pm (UTC)'!
activeView
" 	The active view is the view where the user operates. It is a subview in the Dybo view.
	It can be the Home, the Task, the Binder, the Document or the Settings view 
	It is the first submoprh in the dybo view layout, below its toolsbar
 "
	^ activeView! !

!DyControlsManager methodsFor: 'plugged views' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
plugBinder
	self plugInDyboView: (DyBinderView presenter: self dyboPresenter).
	self dyboPresenter currentTopic "Any previously selected topic? "
		ifNotNil: [:aTopic | activeView topic: aTopic]
		ifNil: [" Set a default topic for the presenter, if any "
			activeView topic ifNotNil: [:aTopic |
				self dyboPresenter currentTopic: aTopic.
				self activeView updateView]	].
	self runningWorld doOneCycleNow.! !

!DyControlsManager methodsFor: 'plugged views' stamp: 'hlsf 26/Feb/2026, 7:56:30 am (UTC)'!
plugInDyboView: aView
" plug in the dynabook main view this morph, below its toolbar "
	| layout |
	layout := dyboView layoutMorph.
	activeView ifNotNil: [layout removeMorph: activeView].
	activeView := aView.
	layout addMorphUseAll: aView .
	aView adoptWidgetsColor: activeView borderColor.
	dyboView changed.
	self triggerEvent: #switchView! !

!DyControlsManager methodsFor: 'plugged views' stamp: 'hlsf 16/Jul/2026, 10:55:39 am (UTC)'!
plugSettings
	| categories categoriesView |
	categories := {
		{ 'User Data' translated . #userDataView . #userData } .
		{ 'Data Exchange' translated . #exchangeDataView . #exchange }.
		{ 'Calibration & Paper' translated . #calibratorPaperView . #calibrate} .
	}.
	categories := categories sort: [:arrayA :arrayB | arrayA first < arrayB first].
	self plugInDyboView: (categoriesView := SidePane on: self with: categories).
	categoriesView selectFirstCategory ! !

!DyControlsManager methodsFor: 'plugged views' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
plugStart
	self plugInDyboView: (DyStartView presenter: self dyboPresenter).
	self activeView updateView.
	self runningWorld doOneCycleNow ! !

!DyControlsManager methodsFor: 'plugged views' stamp: 'hlsf 1/Dec/2024, 3:02:37 pm (UTC)'!
plugTask
	self plugInDyboView: (DyAgendaView presenter: self dyboPresenter)! !

!DyControlsManager methodsFor: 'setting views' stamp: 'hlsf 16/Jul/2026, 10:55:25 am (UTC)'!
calibratorPaperView
	^ LayoutMorph newColumn ::
		color: Color transparent;
		addMorph: self calibratorView ;
		addMorph: self paperView;
		yourself! !

!DyControlsManager methodsFor: 'setting views' stamp: 'hlsf 16/Jul/2026, 10:58:59 am (UTC)'!
calibratorView
	| pane |
	pane := nil.
	pane := PluggablePane 
		open:  [CalibratorMorph new
			etalon: (ImageReadWriter formFromFileEntry: DyboSystem iconsPath // 'etalon.png')]
		view:  #value
		action: [DyboSystem ppcm: pane pane ppcm].
	^ pane! !

!DyControlsManager methodsFor: 'setting views' stamp: 'hlsf 8/May/2026, 8:10:07 am (UTC)'!
exchangeDataView
	| column row label morph |
	column := LayoutMorph newColumn color: Color transparent.
	row := LayoutMorph newRow color: Color transparent :: separation: 10 .
	self setExchangePathIn: (label := LabelMorph new).
	row addMorph: label.
	morph := PluggableButtonMorph 
		model: self dyboPresenter action: #chooseExchangePath: actionArgument: label ::
		icon: Theme current openIcon;
		buttonStyle: #none;
		setBalloonText: 'Select an exchange folder' translated;
		yourself.
	row addMorph: morph.	
	column addMorphKeepMorphHeight: row.
	row := LayoutMorph newRow color: Color transparent.
	morph := PluggableButtonMorph model: self dyboPresenter action: #backupUserData label: 'Back Up' translated ::
		setBalloonText: 'Save a complete copy of all local data to the exchange folder.
Warning: This will ovewrite the previous backup.' translated.
	row addMorph: morph.
	morph := PluggableButtonMorph model: self dyboPresenter action: #restoreUserData label: 'Restore' translated ::
		setBalloonText: 'Restore all data from the exchange folder. 
Warning: This will overwrite your current local data.' translated.
	row addMorph: morph.
	column addMorphKeepMorphHeight: row.
	^ column ! !

!DyControlsManager methodsFor: 'setting views' stamp: 'hlsf 16/Jul/2026, 10:59:49 am (UTC)'!
paperView
	| ratio background |

	ratio := PluggableListMorph withModel: self dyboPresenter
		listGetter: #paperRatios indexGetter: #paperRatioIndex indexSetter: #paperRatioIndex:. 
	background := PluggableListMorph withModel: self dyboPresenter
		listGetter: #paperBackgrounds indexGetter: #paperBackgroundIndex indexSetter: #paperBackgroundIndex:. 

	^ LabelGroup with: {
		'Paper size' translated -> ratio.
		'Paper background' translated -> background }! !

!DyControlsManager methodsFor: 'setting views' stamp: 'hlsf 15/May/2026, 3:01:30 pm (UTC)'!
setExchangePathIn: label
	| tips |
	label 
		contents: (DyboSystem exchangePath ifEmpty: ['Exchange folder not set' translated]) 
		constrainedTo: 400.
	tips := Text streamContents: [:str |
		DyboSystem exchangePath ifNotEmpty: [:path | str nextPutAll: path bold; newLine].
			str nextPutAll: 'Directory for import/export documents and data backup. If using a remote directory or USB device, ensure it is mounted or plugged in before proceeding.' translated].
	label setBalloonText: tips! !

!DyControlsManager methodsFor: 'setting views' stamp: 'hlsf 28/Apr/2026, 8:23:33 am (UTC)'!
userDataView
	^ BreadcrumbsPane on: DyUserData current with: DyViewerVisitor! !

!DyControlsManager methodsFor: 'widget' stamp: 'hlsf 22/Feb/2026, 8:00:34 am (UTC)'!
dyboToolbar
	| toolbar buttonWidth|
	toolbar := LayoutMorph newRow separation: 5.
	buttonWidth := DyboSystem iconToolbarSize.
	self dyboToolbarSpec do: [:aTool | 
		aTool 
			caseOf: {
				[ #spacer ] -> [ toolbar addMorphUseAll: self class spacer ] .
				[ #blank ] -> [ toolbar addMorph: (self class spacer: buttonWidth) ] 	}
			otherwise: [	
				toolbar addMorph: (
					self on: self dyboPresenter  button: aTool state: #isView: size: buttonWidth )] ].
	^ toolbar! !

!DyControlsManager methodsFor: 'widget' stamp: 'hlsf 28/Apr/2026, 9:28:23 am (UTC)'!
dyboToolbarSpec
	^ #(start tasks binder page spacer fullscreen settings)! !

!DyControlsManager methodsFor: 'widget' stamp: 'hlsf 10/May/2026, 8:35:59 am (UTC)'!
on: aPresenter button: symbol state: stateGetter size: size
	"array first = menu label or button label
	array second = button form = section mode
	array third = symbol callback
	array fourth = help string	 "	
	| array |
	array := self perform: (symbol, #ButtonData) asSymbol.
	^ ButtonMorph 
		model: aPresenter
		stateGetter: stateGetter
		action: array third ::
		stateArgument: (stateGetter isUnary ifTrue: [nil] ifFalse: [array second]);
		icon: (self icons getForm: array second ofSize: size);
		setBalloonText: array fourth;
		color: self defaultColor ;
		selectedColor: self buttonColor ;
		borderColor: self defaultColor darker;
		borderWidth: 2;
		morphExtent: (size  * 1.3) rounded asPoint;
		yourself	! !

!DyControlsManager class methodsFor: 'widget' stamp: 'hlsf 10/Oct/2024, 9:00:40 am (UTC)'!
spacer
	^ self spacer: 1! !

!DyControlsManager class methodsFor: 'widget' stamp: 'hlsf 10/Oct/2024, 9:00:08 am (UTC)'!
spacer: size
	^ ColoredBoxMorph new 
		color: Color transparent; 
		morphWidth: size;
		yourself! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 19/Apr/2026, 9:28:12 am (UTC)'!
decoratedPaneFor: aMold labeled: aMessage
	^ DecoratedPane 
			open: (PluggableScrollPane new 
				layoutSpec: LayoutSpec useAll;
				scroller: aMold newPane;
				yourself) 
			label: aMessage ::
			padding: 20! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 14/Jul/2024, 8:59:55 am (UTC)'!
visitAgenda: agenda
| mold |
	mold := agenda mold.
	mold when: #edited send: #triggerEvent: to: agenda with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self editorsFor: agenda daysOff ofType: DyDayInterval}! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 14/Jul/2024, 9:00:38 am (UTC)'!
visitClassGroup: class
| mold |
	mold := class mold.
	mold when: #edited send: #triggerEvent: to: class with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self decoratedPaneFor: class headTeacher mold labeled: 'Head teacher' translated.
		self editorsFor: class courses ofType: DyCourse in: class.
		self editorsFor: class students ofType: DyStudent }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 5/Apr/2026, 10:22:52 am (UTC)'!
visitCourse: course 
| mold columns |
	mold := course mold.
	mold when: #edited send: #triggerEvent: to: course with: #edited.
	columns := OrderedCollection withAll: {
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self editorsFor: course courseHours ofType: DyCourseHour in: course}.
	DyUserData current user isStudent ifTrue: [ columns add:
		(self decoratedPaneFor: course teacher mold labeled: 'Teacher' translated)].
	columns add: (self editorsFor: course topics ofType: DyTopic in: course).
	^ self newColumnWith: columns ! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 21/Apr/2026, 12:51:29 pm (UTC)'!
visitNewUser: newUser
	^ self newColumnWith: {
		self editorsFor: newUser classCourses ofType: DyClassCourse in: newUser }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 20/Aug/2025, 3:19:26 pm (UTC)'!
visitSchool: school 
| mold |
	mold := school mold.
	mold when: #edited send: #triggerEvent: to: school with: #edited.
	^ self newColumnWith: { 
		self decoratedPaneFor: mold labeled: 'Information' translated.
		self editorsFor: school classGroups ofType: DyClassGroup in: school.
		self 	editorsFor: school timeSlots ofType: DyTimeSlot. }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 14/Jul/2024, 9:02:13 am (UTC)'!
visitTeacher: teacher
| mold |
	mold := teacher mold.
	mold when: #edited send: #triggerEvent: to: teacher with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Teacher' translated }! !

!DyEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 14/Jul/2024, 8:25:32 am (UTC)'!
visitUserData: userData
| mold |
	mold := userData user mold.
	mold when: #edited send: #triggerEvent: to: userData with: #edited.
	^ self newColumnWith: {
		self decoratedPaneFor: mold labeled: 'Owner' translated.
		self editorsFor: userData schools ofType: DySchool in: userData}! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 22/Aug/2023, 7:15:02 pm (UTC)'!
editorsFor: aCollection ofType: classModel 
	^ self editorsFor: aCollection ofType: classModel in: nil! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 19/Apr/2026, 9:29:48 am (UTC)'!
editorsFor: aCollection ofType: classModel in: anOwner
" A decorated editor to edit a collection of models "
	| listMorph quickButtons decoratedPanel |
	listMorph := PluggableListMorph 
		withModel: (ListModel with: aCollection )		
		listGetter: #list indexGetter: #listIndex indexSetter: #listIndex:.
	decoratedPanel := DecoratedPane open: listMorph label: classModel pluralLabel :: padding: 20.
	quickButtons := OrderedCollection new.
	quickButtons add: (PluggableButtonMorph model: self action: #quickAdd: 
			actionArgument: (Array with: classModel with: decoratedPanel with: listMorph with: anOwner) ::
		icon: Theme current listAddIcon;
		buttonStyle: #none;
		setBalloonText: ('Add a new {1}' translated format: {classModel label});
		yourself).
	quickButtons add: (PluggableButtonMorph model: self action: #quickEdit: 
			actionArgument: (Array with: decoratedPanel with: listMorph with: anOwner)::
		icon: Theme current textEditorIcon;
		buttonStyle: #none;
		setBalloonText: ('Edit the selected {1}' translated format: {classModel label});
		yourself).
	quickButtons add: (PluggableButtonMorph model: self action: #quickDelete: 
			actionArgument: (Array with: decoratedPanel with: listMorph) ::
		icon: Theme current deleteIcon ;
		buttonStyle: #none;
		setBalloonText: ('Delete the selected {1}' translated format: {classModel label });
		yourself).	
	(classModel respondsTo: #importFrom:) ifTrue: [
		quickButtons add: (PluggableButtonMorph model: self action: #quickImport: 
				actionArgument: (Array with: classModel with: aCollection with: listMorph) ::
			icon: Theme current openIcon ;
			buttonStyle: #none;
			setBalloonText: 'Import from a file' translated;
			yourself) ]. 	
	(classModel respondsTo: #export:to:) ifTrue: [
		quickButtons add: (PluggableButtonMorph model: self action: #quickExport: 
				actionArgument: (Array with: classModel with: aCollection ) ::
			icon: Theme current saveIcon ;
			buttonStyle: #none;
			setBalloonText: 'Export to a file' translated;
			yourself) ].	
	decoratedPanel quickButtons: quickButtons.
	^ decoratedPanel! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 20/Aug/2025, 3:20:48 pm (UTC)'!
newColumnWith: morphs
| column |
	column := LayoutMorph newColumn.
	morphs 
		do: [: aMorph | column addMorph: aMorph]
		separatedBy: [column addAdjusterMorph ].
	column morphExtent: column minimumExtent.
	^ column ! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 5/Apr/2026, 1:30:58 pm (UTC)'!
quickAdd: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to instantiate
2. the decorated pane
3. the listMorph
4. an optional owner of the instantiated object, nil otherwise
"
 | objectClass decorator listModel listMorph newObject objectMold objectPane quickButtons |
	objectClass := args first.
	decorator := args second.
	listMorph := args third .
	listModel := listMorph model.
	quickButtons := decorator quickButtons.
	newObject := objectClass new.
	(newObject respondsTo: #owner:) ifTrue: [ newObject owner: args fourth].
	objectMold := (newObject respondsTo: #mold:) 
		ifTrue: [	newObject mold: args fourth school] 
		ifFalse: [newObject mold].
	objectPane := objectMold newPane.
	objectPane layoutSpec: LayoutSpec useAll.
	objectPane 
		actionOnButton: [
			objectMold validate.
			objectMold isValid ifTrue: [
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
	objectPane adoptWidgetsColor: decorator borderColor.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 5/Apr/2026, 1:22:53 pm (UTC)'!
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
	text := TextParagraphMorph contents: ('Are you sure to delete "{1}" ?' format: {listModel selectedItem}) :: 
		borderWidth: 0; color: Color transparent.
	objectPane := nil.
	objectPane := PluggablePane open: [text] view: #value action:[
		listModel selectedItem removeFromDisk.
		listModel removeSelectedItem.
		decorator replaceSubmorph: objectPane by: listMorph.
		quickButtons submorphsDo: #lockUnlockMorph.
		listModel changed: #list.
		DyboSystem saveData].
	objectPane
		actionOnAltButton: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	objectPane layoutSpec: LayoutSpec useAll.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 5/Apr/2026, 1:23:06 pm (UTC)'!
quickEdit: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the decorated pane
2. the listMorph
3. an Optional owner of the edited object
"
 | decorator listModel listMorph objectMold objectPane quickButtons |
	decorator := args first .
	listMorph := args second .
	listModel := listMorph model.
	listModel listIndex isZero ifTrue: [^ self]. "no selected item"
	quickButtons := decorator quickButtons.
	objectMold := (listModel selectedItem respondsTo: #mold:) 
		ifTrue: [listModel selectedItem mold: args third school] 
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
				listModel changed: #list.
				DyboSystem saveData]					
			];
		actionOnAltButton: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	objectPane adoptWidgetsColor: decorator borderColor.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 15/Jul/2026, 1:03:22 pm (UTC)'!
quickExport: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to instantiate
2. the collection to export 
"
	|answer  |
	answer := (StandardFileMenu new newFileFrom: DyboSystem myExportPath withPattern: '*.csv' excludePattern: '.*') startUpWithCaption: 'CSV file to export' translated.
	answer ifNotNil: [
		answer directory // (answer name, '.csv') writeStreamDo: [:str |
			args first export: args second to: str ]]! !

!DyEditorVisitor methodsFor: 'ui' stamp: 'hlsf 15/Jul/2026, 1:04:47 pm (UTC)'!
quickImport: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to import
2. the curent collection of this object
3. the listMorph of the collection
"
| importedCollection answer |
	answer := (StandardFileMenu new oldFileFrom: DyboSystem myExportPath withPattern: '*.csv' excludePattern: '.*') 
		startUpWithCaption: 'CSV file to import' translated.
	answer ifNotNil: [
		answer directory // answer name readStreamDo: [:str |
			importedCollection := args first importFrom: str .
			importedCollection ifNotNil: [ 
				args second become: importedCollection.
				args third updateList]] ]! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 26/Jun/2023, 7:29:08 pm (UTC)'!
paneFor: anObject label: aTitle 
	^self paneFor: anObject label: aTitle browse: true! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 19/Apr/2026, 9:28:37 am (UTC)'!
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
	^ DecoratedPane open: scroller label: aTitle ::
		padding: 20! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 21/Apr/2026, 1:10:44 pm (UTC)'!
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
				byView: (visitedModel accept: DyEditorVisitor new).
			visitedModel triggerEvent: #editorPlugged] 
		altAction: [DyboSystem saveData] 
		::
		buttonLabel: 'Edit' translated;
		altButtonLabel: 'Save' translated;
		buildMorphicWindow ;
		layoutSpec: LayoutSpec useAll;
		yourself.
	^ viewer ! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 1/Mar/2026, 3:29:26 pm (UTC)'!
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
			setProperty: #'handlesMouseDown:' toValue: true;
			setProperty: #'mouseButton1Up:localPosition:'
			toValue: [ :event :position | visitedModel triggerEvent: #browseTo with: anAttribute]].
	^ aTextView ! !

!DyViewerVisitor methodsFor: 'ui' stamp: 'hlsf 3/Jul/2023, 10:30:05 am (UTC)'!
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

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 16/Aug/2025, 2:09:01 pm (UTC)'!
visitAgenda: agenda
	| column |
	visitedModel := agenda .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: agenda label: 'School year period' translated browse: false);	
		addMorph: (self paneFor: agenda daysOff label: 'Days off' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 19/Apr/2026, 9:31:25 am (UTC)'!
visitClassGroup: class
	| column |
	visitedModel := class .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: class headTeacher label: 'Head teacher' translated browse: false);	
		addMorph: (self paneFor: class courses label: 'Courses' translated);
		addMorph: (self paneFor: class students label: 'Students' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 27/Oct/2024, 5:05:55 pm (UTC)'!
visitCourse: course
	| column |
	visitedModel := course .
	column := LayoutMorph newColumn.
	column
		addMorph: (self paneFor: course courseHours label: 'Periods' translated browse: false).
	DyUserData current user isStudent ifTrue: [
		column 	addMorph: (self paneFor: course teacher label: 'Teacher' translated browse: false)].
	column 
		addMorph: (self paneFor: course topics label: 'Topics' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 19/Apr/2026, 8:35:56 pm (UTC)'!
visitNewUser: newUser
	| column |
	visitedModel := newUser .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: newUser label: 'User & School' translated browse: false);	
		addMorph: (self paneFor: newUser classCourses label: 'Courses' translated browse: false).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 3/Jul/2023, 1:14:16 pm (UTC)'!
visitSchool: school
	| column |
	visitedModel := school .
	column := LayoutMorph newColumn.
	column 	
		addMorph: (self paneFor: school classGroups label: 'Classes' translated);
		addMorph: (self paneFor: school timeSlots label: 'Time slots' translated browse: false)		.
	^ self plugView: column	! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 3/Jul/2023, 1:00:42 pm (UTC)'!
visitTeacher: teacher
	| column |
	visitedModel := teacher .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: teacher classGroups label: 'Classes ' translated).
	^ self plugView: column! !

!DyViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 30/Jul/2023, 4:08:50 pm (UTC)'!
visitUserData: userData
	| column |
	visitedModel := userData.
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: userData schools label: 'Schools' translated);
		addMorph: (self paneFor: userData agenda label: 'Agenda' translated).
	^ self plugView: column! !

!DyClassCourse methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 5:05:18 pm (UTC)'!
classNumber
	^ classNumber! !

!DyClassCourse methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 5:04:15 pm (UTC)'!
classNumber: aName
	classNumber := aName ! !

!DyClassCourse methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 5:06:20 pm (UTC)'!
courseName
	^ courseName! !

!DyClassCourse methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 5:06:20 pm (UTC)'!
courseName: aName
	courseName := aName ! !

!DyClassCourse methodsFor: 'ui' stamp: 'hlsf 21/May/2026, 5:05:52 pm (UTC)'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Class' translated;
		on: #classNumber of: self;
		addCondition: [:input | input ~= 'Unnamed class' translated] 
			labeled: 'Input a meaningful name (6eA, 1011,...)' translated;
		beRequired.
	mold stringField
		label: 'Course' translated;
		on: #courseName of: self;
		addCondition: [:input | input ~= 'Unnamed course' translated] 
			labeled: 'Input a meaningful name (Geography, Math,...)' translated;		
		beRequired.
	^ mold! !

!DyClassCourse methodsFor: 'printing' stamp: 'hlsf 21/May/2026, 5:06:20 pm (UTC)'!
printOn: str
	str nextPutAll: classNumber ;
		nextPutAll: ' (';
		nextPutAll: courseName ;
		nextPut: $)! !

!DyClassCourse class methodsFor: 'as yet unclassified' stamp: 'hlsf 21/Apr/2026, 12:56:09 pm (UTC)'!
label
	^ 'Class & Course' translated! !

!DyClassCourse class methodsFor: 'as yet unclassified' stamp: 'hlsf 21/Apr/2026, 12:55:58 pm (UTC)'!
pluralLabel
	^ 'Classes & Courses' translated! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
classCourses
	"Answer the value of classCourses"

	^ classCourses! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 5:29:12 pm (UTC)'!
initialize
	classCourses := OrderedCollection new.
	classCourses add: ( 
		DyClassCourse new
			classNumber: 'Unnamed class' translated;
			courseName: 'Unnamed course' translated;
			yourself)! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
schoolName
	"Answer the value of schoolName"

	^ schoolName! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
schoolName: anObject
	"Set the value of schoolName"

	schoolName := anObject! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
userFirstname
	"Answer the value of userFirstname"

	^ userFirstname! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
userFirstname: anObject
	"Set the value of userFirstname"

	userFirstname := anObject! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
userLastname
	"Answer the value of userLastname"

	^ userLastname! !

!DyNewUser methodsFor: 'accessing' stamp: 'hlsf 19/Apr/2026, 12:08:45 pm (UTC)'!
userLastname: anObject
	"Set the value of userLastname"

	userLastname := anObject! !

!DyNewUser methodsFor: 'ui' stamp: 'hlsf 19/Apr/2026, 12:17:59 pm (UTC)'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Firstname' translated;
		on: #userFirstname of: self;
		beRequired.
	mold stringField
		label: 'Lastname' translated;
		on: #userLastname of: self;
		beOptional.
	mold stringField
		label: 'School' translated;
		on: #schoolName of: self;
		beRequired.
	^ mold! !

!DyNewUser methodsFor: 'visiting' stamp: 'hlsf 19/Apr/2026, 1:00:15 pm (UTC)'!
accept: aVisitor
	^ aVisitor visitNewUser: self! !

!DyNewUser methodsFor: 'visiting' stamp: 'hlsf 19/Apr/2026, 8:34:15 pm (UTC)'!
printOn: str
	str nextPutAll: (userFirstname ifNil: ['']);
		nextPutAll: ' - ';
		nextPutAll: (schoolName  ifNil: [''])! !

!DyDayInterval methodsFor: 'printing' stamp: 'hlsf 27/Oct/2024, 2:30:32 pm (UTC)'!
printOn: aStream
	start 
		ifNotNil:  [aStream nextPutAll:  start ddmmyy;
				nextPutAll: ' - '; 
				nextPutAll: self end ddmmyy .]
		ifNil: [aStream nextPutAll: 'days inteval' translated]! !

!DyDayInterval methodsFor: 'testing' stamp: 'hlsf 11/Aug/2024, 8:44:37 am (UTC)'!
includes: aDay
	^ start = aDay 
	or: [self end = aDay 
	or: [start < aDay and: [aDay < self end ] ] ]! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 11/Aug/2024, 8:44:21 am (UTC)'!
end
" if end date is nil,  then start date if any. Handy to input only one day off "
	^ (end isNil and: [start notNil])
		ifTrue: [start] 
		ifFalse: [	end]
! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 11/Aug/2024, 8:42:55 am (UTC)'!
end: aDate
	end := aDate ! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 28/Jul/2023, 10:38:28 pm (UTC)'!
start
	^ start ! !

!DyDayInterval methodsFor: 'accessing' stamp: 'hlsf 28/Jul/2023, 10:38:56 pm (UTC)'!
start: aDate
	start := aDate ! !

!DyDayInterval methodsFor: 'comparing' stamp: 'hlsf 30/Jul/2023, 4:08:33 pm (UTC)'!
<= aDayInterval
"Date does not implement <=, dive into its attribute start, a DateAndTime "
	^ start start <= aDayInterval start start! !

!DyDayInterval methodsFor: 'ui' stamp: 'hlsf 11/Aug/2024, 8:38:11 am (UTC)'!
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

!DyDayInterval class methodsFor: 'user interface' stamp: 'hlsf 29/Jul/2023, 2:18:04 pm (UTC)'!
label
	^ 'day off' translated! !

!DyDayInterval class methodsFor: 'user interface' stamp: 'hlsf 29/Jul/2023, 2:24:47 pm (UTC)'!
pluralLabel
	^ 'Days off' translated! !

!DyDayInterval class methodsFor: 'fileIn/Out' stamp: 'hlsf 29/Jul/2023, 2:54:46 pm (UTC)'!
export: daysOff to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(start end);
		addFields: #(start end);
		nextPutAll: daysOff ! !

!DyDayInterval class methodsFor: 'fileIn/Out' stamp: 'hlsf 29/Jul/2023, 3:01:46 pm (UTC)'!
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

!DyDayInterval class methodsFor: 'instance creation' stamp: 'hlsf 24/Sep/2023, 12:05:07 pm (UTC)'!
start: startDateString end: endDateString
	^ self new
		start: startDateString asDate;
		end: endDateString  asDate! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 27/Nov/2024, 7:21:09 pm (UTC)'!
dirName
	self subclassResponsibility ! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 11:01:04 am (UTC)'!
directory
"Location on of the object data and associated document "
	^ self owner directory / self dirName! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 22/Aug/2023, 7:04:50 pm (UTC)'!
owner
	^ owner! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 13/Apr/2026, 10:26:19 am (UTC)'!
owner: anObject
	owner := anObject ! !

!DyObject methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 4:40:09 pm (UTC)'!
relPath
"relative path to the object within the data "
	^ self owner relPath, '/', self dirName! !

!DyObject methodsFor: 'disk operations' stamp: 'hlsf 5/Apr/2026, 12:56:34 pm (UTC)'!
removeFromDisk
	self directory recursiveDelete ! !

!DyObject class methodsFor: 'user interface' stamp: 'hlsf 8/Oct/2023, 9:29:21 pm (UTC)'!
label
	^ 'unnamed object'! !

!DyObject class methodsFor: 'user interface' stamp: 'hlsf 8/Oct/2023, 9:29:27 pm (UTC)'!
pluralLabel
	^ 'Unnamed objects'! !

!DyAgenda methodsFor: 'initialization' stamp: 'hlsf 24/Sep/2023, 8:38:03 am (UTC)'!
initialize
	super initialize.
	tasks := OrderedCollection new.
	daysOff := SortedCollection new! !

!DyAgenda methodsFor: 'ui' stamp: 'hlsf 28/Jul/2023, 10:50:25 pm (UTC)'!
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

!DyAgenda methodsFor: 'visiting' stamp: 'hlsf 28/Jul/2023, 4:31:24 pm (UTC)'!
accept: aVisitor
	^ aVisitor visitAgenda: self! !

!DyAgenda methodsFor: 'printing' stamp: 'hlsf 30/Jul/2023, 4:09:47 pm (UTC)'!
printOn: stream
	start 
		ifNotNil: [ 	stream nextPutAll: 
			('{1} to {2}' translated format: 
				{start ddmmyyyy . end ddmmyyyy }) 		] 
		ifNil: [stream nextPutAll: 'Unspecified agenda' translated]! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 29/Jul/2023, 2:09:53 pm (UTC)'!
daysOff
	^ daysOff ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 29/Jul/2023, 2:23:47 pm (UTC)'!
end
	^ end ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 29/Jul/2023, 2:27:11 pm (UTC)'!
end: aDate
	end := aDate ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 11:04:04 am (UTC)'!
owner
	^ DyUserData current! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 10:57:01 am (UTC)'!
owner: anObject
	" Not needed, our owner is the Data Singleton, we don' t want to keep a reference around"! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 29/Jul/2023, 2:23:42 pm (UTC)'!
start
	^ start! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 29/Jul/2023, 2:27:23 pm (UTC)'!
start: aDate
	start := 	aDate ! !

!DyAgenda methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:34:08 pm (UTC)'!
tasks
	^ tasks! !

!DyAgenda methodsFor: 'testing' stamp: 'hlsf 24/Sep/2023, 12:02:05 pm (UTC)'!
isDayOff: aDate
	^ daysOff anySatisfy: [:aDayInteverval | aDayInteverval 	 includes: aDate]! !

!DyAgenda methodsFor: 'disk operations' stamp: 'hlsf 5/Apr/2026, 1:00:14 pm (UTC)'!
removeFromDisk
! !

!DyClassGroup methodsFor: 'ui' stamp: 'hlsf 30/Jun/2023, 7:15:15 pm (UTC)'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Number' translated;
		on: #number of: self;
		beRequired.
	^ mold! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 30/Jun/2023, 8:01:14 pm (UTC)'!
courses
	^ courses ! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 22/Aug/2023, 7:38:51 pm (UTC)'!
dirName
	^ number asFileName! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 5:20:17 pm (UTC)'!
documents
	^ courses inject: OrderedCollection new into: [:documents :aCourse | 
			documents addAll: aCourse documents; yourself]! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 30/Jun/2023, 8:01:09 pm (UTC)'!
headTeacher
	^ headTeacher ! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 4/Jun/2023, 4:12:55 pm (UTC)'!
number
	^number! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 1:32:51 pm (UTC)'!
number: newNumber 
	DyboSystem renameClassGroup: self from: number to:newNumber.
	number := newNumber.
! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 13/Sep/2023, 7:43:32 pm (UTC)'!
school
	^ owner! !

!DyClassGroup methodsFor: 'accessing' stamp: 'hlsf 30/Jun/2023, 8:01:20 pm (UTC)'!
students
	^ students! !

!DyClassGroup methodsFor: 'printing' stamp: 'hlsf 8/Oct/2023, 9:34:42 pm (UTC)'!
printOn: str
	str nextPutAll: number! !

!DyClassGroup methodsFor: 'initialization' stamp: 'hlsf 8/Oct/2023, 9:34:51 pm (UTC)'!
initialize
	super initialize.
	headTeacher := DyTeacher new.
	courses := OrderedCollection new.
	students := SortedCollection new.
	number := 'Unknown class' translated! !

!DyClassGroup methodsFor: 'visiting' stamp: 'hlsf 30/Jun/2023, 8:01:43 pm (UTC)'!
accept: aVisitor 
	^ aVisitor visitClassGroup: self! !

!DyClassGroup class methodsFor: 'user interface' stamp: 'hlsf 15/Jul/2023, 9:36:49 am (UTC)'!
label
	^ 'class' translated! !

!DyClassGroup class methodsFor: 'user interface' stamp: 'hlsf 15/Jul/2023, 9:36:59 am (UTC)'!
pluralLabel
	^ 'Classes' translated! !

!DyClassGroup class methodsFor: 'instance creation' stamp: 'hlsf 14/Sep/2023, 1:59:15 pm (UTC)'!
number: aString in: aSchool
	^ self new ::
		number: aString;
		owner: aSchool! !

!DyCourse methodsFor: 'initialization' stamp: 'hlsf 8/Oct/2023, 9:34:26 pm (UTC)'!
initialize
	super initialize.
	courseHours := OrderedCollection new.
	topics := OrderedCollection new.
	teacher := DyTeacher new.
	subject := 'Unnamed course' translated! !

!DyCourse methodsFor: 'initialization' stamp: 'hlsf 21/May/2026, 5:39:01 pm (UTC)'!
setDefaultTopics
	{'Theories' translated . 'Exercises' translated} do: [:topicTitle |
		topics add: (DyTopic new 
			owner: self;
			title: topicTitle;
			yourself) ]! !

!DyCourse methodsFor: 'ui' stamp: 'hlsf 3/Jul/2023, 9:30:36 am (UTC)'!
mold
	| mold |
	mold := Mold new.
	mold stringField 
		label: 'Subject' translated;
		on: #subject of: self;
		beRequired.
	^ mold! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 4:07:17 pm (UTC)'!
agenda 
	^ DyUserData current agenda! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 13/Sep/2023, 7:43:52 pm (UTC)'!
classGroup
	^ owner! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 6:52:47 am (UTC)'!
courseHours
	^ courseHours ! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 22/Aug/2023, 7:38:51 pm (UTC)'!
dirName
	^ subject asFileName! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 5:20:26 pm (UTC)'!
documents
	" All the documents in this course "
	^ topics inject: OrderedCollection new into: [:documents :aTopic | 
		documents addAll: aTopic documents; yourself]! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 13/Sep/2023, 7:44:07 pm (UTC)'!
school 
	^ self classGroup school! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 19/Jun/2023, 8:33:42 pm (UTC)'!
subject
	^subject! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 1:31:56 pm (UTC)'!
subject: newName 
	DyboSystem renameCourse:  self from: subject to: newName.
	subject := newName.
! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 1/Jul/2023, 6:52:52 am (UTC)'!
teacher
	^ teacher ! !

!DyCourse methodsFor: 'accessing' stamp: 'hlsf 8/Oct/2023, 9:09:25 pm (UTC)'!
topics
	^ topics! !

!DyCourse methodsFor: 'printing' stamp: 'hlsf 7/Dec/2024, 7:34:58 am (UTC)'!
printOn: aStream
	aStream nextPutAll: subject";
		nextPutAll: ' (';
		print: self classGroup;
		nextPut: $)"! !

!DyCourse methodsFor: 'visiting' stamp: 'hlsf 1/Jul/2023, 6:53:53 am (UTC)'!
accept: aVisitor
	^ aVisitor visitCourse: self! !

!DyCourse methodsFor: 'testing' stamp: 'hlsf 27/Oct/2024, 5:51:49 pm (UTC)'!
isAt: aTimeSlot day: aDayNumber
	^ courseHours 
		detect:  [:aCourseHour | aCourseHour isAt: aTimeSlot day: aDayNumber]
		ifFound: [:aCourse | true]
		ifNone: [false]! !

!DyCourse methodsFor: 'testing' stamp: 'hlsf 19/Sep/2023, 7:27:08 pm (UTC)'!
isDuring: aDateAndTime
	^ courseHours 
		detect:  [:aCourseHour | aCourseHour isDuring: aDateAndTime ]
		ifFound: [:aCourse | true]
		ifNone: [false]! !

!DyCourse methodsFor: 'searching' stamp: 'hlsf 1/Dec/2024, 4:13:51 pm (UTC)'!
futureDates: qty
" A list of future course hours dates after today "
	^ (self next: qty courseHoursAfter: Date today) collect: [: anArray |
		DyCourseHourDate new 
			timeSlots: anArray first timeSlots;
			date: anArray second;
			yourself]! !

!DyCourse methodsFor: 'searching' stamp: 'hlsf 14/Apr/2026, 9:13:39 am (UTC)'!
next: qty courseHoursAfter: aDate
" A list of qty course hours & dates after a given date"
	| futureDates n next |
	futureDates := OrderedCollection new.
	n := qty.
	next := self nextCourseHourAfter: aDate.
	[n isZero or: [next isNil]] whileFalse: [
		futureDates add: next.	
		next := self nextCourseHourAfter: next second. "next date"
		n := n - 1 ] .
	^ futureDates ! !

!DyCourse methodsFor: 'searching' stamp: 'hlsf 16/Apr/2026, 9:46:38 am (UTC)'!
nextCourseHourAfter: aDate
"Search for my next course hour after aDate"
	| dayOfWeek currentCourseHourIndex nextCourseHour nextDate |
	dayOfWeek := aDate dayOfWeek.
	(aDate + 8 days) < Date today ifTrue: [^ nil ]. " We did not find any future date for this course "
	currentCourseHourIndex := courseHours findFirst: [:aCourseHour | aCourseHour dayOfWeek = dayOfWeek].
	"No course at this day, jump to the previous day, and try again "
	currentCourseHourIndex = 0 ifTrue: [ ^ self nextCourseHourAfter: aDate previous].
	
	nextCourseHour := courseHours atWrap: currentCourseHourIndex + 1.
	nextDate := nextCourseHour dayOfWeek = dayOfWeek 
		ifTrue: [aDate + 7 days]
		ifFalse: [aDate + (nextCourseHour dayOfWeek - dayOfWeek \\ 7) days].
		
	nextDate > self agenda end
		ifTrue: [^ nil "School is over, it is summer time !!"].
	^ (self agenda isDayOff: nextDate)
		ifTrue: [self nextCourseHourAfter: nextDate]
		ifFalse: [Array with: nextCourseHour with: nextDate]! !

!DyCourse class methodsFor: 'user interface' stamp: 'hlsf 15/Jul/2023, 9:34:16 am (UTC)'!
label
	^  'lesson' translated! !

!DyCourse class methodsFor: 'user interface' stamp: 'hlsf 15/Jul/2023, 9:33:49 am (UTC)'!
pluralLabel
	^  'Lessons' translated! !

!DyCourse class methodsFor: 'instance creation' stamp: 'hlsf 14/Sep/2023, 2:00:09 pm (UTC)'!
subject: aString in: aClassGroup
	^ self new ::
		subject: aString ;
		owner: aClassGroup ! !

!DySchool methodsFor: 'initialization' stamp: 'hlsf 8/Oct/2023, 9:33:45 pm (UTC)'!
initialize
	super initialize .
	timeSlots := SortedCollection new.
	classGroups := OrderedCollection new.
	name := 'Unknown school' translated! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 21/May/2026, 5:08:11 pm (UTC)'!
classGroup: withNumber
	^ classGroups 
		detect: [:classGroup | classGroup number = withNumber ]
		ifNone: [nil]! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 30/Jun/2023, 7:49:32 pm (UTC)'!
classGroups
	^ classGroups ! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 27/Oct/2024, 6:49:33 pm (UTC)'!
courseAt: aTimeSlot day: aDayNumber
	classGroups do: [:aClassGroup |
		aClassGroup courses 	
			detect:  [:aCourse | aCourse isAt: aTimeSlot day: aDayNumber ]
			ifFound:  [:aCourse | ^ aCourse ]
			ifNone: []
		].
	^ nil! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 22/Aug/2023, 7:38:51 pm (UTC)'!
dirName
	^ name asFileName! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 11:01:33 am (UTC)'!
owner
	^ DyUserData current! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 10:57:18 am (UTC)'!
owner: anObject
	" Not needed, our owner is the Data Singleton, we don' t want to keep a reference around"! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:54:57 pm (UTC)'!
schoolName
	^ name! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 1:30:27 pm (UTC)'!
schoolName: newName
	DyboSystem renameSchool: self from: name to: newName.
	name := newName.! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 30/Jun/2023, 7:48:48 pm (UTC)'!
timeSlots
	^ timeSlots ! !

!DySchool methodsFor: 'accessing' stamp: 'hlsf 13/Sep/2023, 9:11:12 pm (UTC)'!
timeSlotsDic
	^ (timeSlots collect: [:each | each slotName -> each] ) asDictionary ! !

!DySchool methodsFor: 'ui' stamp: 'hlsf 3/Jul/2023, 9:31:58 am (UTC)'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'School name' translated;
		on: #schoolName of: self;
		beRequired.
	^ mold! !

!DySchool methodsFor: 'printing' stamp: 'hlsf 8/Oct/2023, 9:40:39 pm (UTC)'!
printOn: str
	str nextPutAll: name! !

!DySchool methodsFor: 'printing' stamp: 'hlsf 17/Apr/2026, 10:11:31 am (UTC)'!
printTimesTableOn: aStream
	| indent |
	indent := 6.
	aStream nextPutAll: 'Période' ; tab: indent // 2.
	(DyUserData daysOfWeek first: 5)
		do: [:aDay | 		aStream nextPutAll: aDay]
		separatedBy: [aStream tab: indent].
	aStream lf.
	timeSlots do: [:aTimeSlot |
		aStream nextPutAll: aTimeSlot slotName ; tab: indent // 2.		
		1 to: 7 do: [:aDay |
			(self courseAt: aTimeSlot day: aDay) 	
				ifNotNil:  [:thisCourse | aStream nextPutAll: (thisCourse printString contractTo: 20)] 			]
			separatedBy: [aStream tab: indent]
		] separatedBy: [aStream lf]! !

!DySchool methodsFor: 'visiting' stamp: 'hlsf 30/Jun/2023, 7:49:08 pm (UTC)'!
accept: aVisitor 
	^ aVisitor visitSchool: self! !

!DySchool class methodsFor: 'user inteface' stamp: 'hlsf 15/Jul/2023, 9:38:14 am (UTC)'!
label
	^ 'school' translated! !

!DySchool class methodsFor: 'user inteface' stamp: 'hlsf 15/Jul/2023, 9:38:22 am (UTC)'!
pluralLabel
	^ 'Schools' translated! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 20/Aug/2023, 2:53:31 pm (UTC)'!
color
	"Answer the value of color"

	^ color! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 20/Aug/2023, 2:53:31 pm (UTC)'!
color: anObject
	"Set the value of color"

	color := anObject! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 31/Dec/2024, 8:55:31 am (UTC)'!
course
	^ owner! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 27/Nov/2024, 7:29:15 pm (UTC)'!
dirName
	^ title asFileName ! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 20/Aug/2023, 2:53:31 pm (UTC)'!
documents
	"Answer the value of documents"

	^ documents! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 20/Aug/2023, 2:53:31 pm (UTC)'!
title
	"Answer the value of title"

	^ title! !

!DyTopic methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 2:08:23 pm (UTC)'!
title: newTitle
	"Set the value of title"
	DyboSystem renameTopic: self from: title to: newTitle.
	title := newTitle! !

!DyTopic methodsFor: 'ui' stamp: 'hlsf 8/Oct/2023, 9:37:49 pm (UTC)'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Title' translated;
		on: #title of: self;
		beRequired.
	^ mold! !

!DyTopic methodsFor: 'printing' stamp: 'hlsf 11/Dec/2024, 4:48:02 pm (UTC)'!
printOn: str
	str nextPutAll: title! !

!DyTopic methodsFor: 'initialization' stamp: 'hlsf 5/Apr/2026, 1:37:27 pm (UTC)'!
initialize
	super initialize.
	documents := OrderedCollection new.
	title := 'Unnamed topic' translated! !

!DyTopic class methodsFor: 'instance creation' stamp: 'hlsf 8/Oct/2023, 9:21:58 pm (UTC)'!
title: aString in: aCourse
	^ self new ::
		title: aString;
		owner: aCourse! !

!DyTopic class methodsFor: 'user interface' stamp: 'hlsf 8/Oct/2023, 9:29:57 pm (UTC)'!
label
	^ 'topic' translated! !

!DyTopic class methodsFor: 'user interface' stamp: 'hlsf 8/Oct/2023, 9:30:19 pm (UTC)'!
pluralLabel
	^ 'Topics' translated! !

!DyPerson methodsFor: 'testing' stamp: 'hlsf 23/May/2023, 6:18:30 pm (UTC)'!
isStudent
	^ false! !

!DyPerson methodsFor: 'testing' stamp: 'hlsf 23/May/2023, 6:18:25 pm (UTC)'!
isTeacher
	^ false! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:36:00 pm (UTC)'!
email
	^ email! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:35:49 pm (UTC)'!
email: aString
	email := 	aString ! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:35:38 pm (UTC)'!
firstName
	^ firstName! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:35:31 pm (UTC)'!
firstName: aString
	firstName := 	aString ! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:35:12 pm (UTC)'!
lastName
	^ lastName ! !

!DyPerson methodsFor: 'accessing' stamp: 'hlsf 23/May/2023, 6:35:24 pm (UTC)'!
lastName: aString
	lastName := 	aString ! !

!DyPerson methodsFor: 'printing' stamp: 'hlsf 8/Oct/2023, 9:36:49 pm (UTC)'!
printOn: str
	str nextPutAll: lastName;
		space;
		nextPutAll: firstName! !

!DyPerson methodsFor: 'ui' stamp: 'hlsf 3/Jul/2023, 9:36:22 am (UTC)'!
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

!DyPerson methodsFor: 'initialization' stamp: 'hlsf 8/Oct/2023, 9:36:24 pm (UTC)'!
initialize
	super initialize.
	lastName := 'Unknown person' translated.
	firstName := ''! !

!DyPerson methodsFor: 'comparing' stamp: 'hlsf 28/Nov/2024, 8:35:00 am (UTC)'!
<= aPerson
	^ lastName < aPerson lastName 
	or: [lastName = aPerson lastName 
		and: [	firstName <= aPerson firstName]
		]! !

!DyStudent methodsFor: 'testing' stamp: 'hlsf 23/May/2023, 6:18:38 pm (UTC)'!
isStudent
	^ true! !

!DyStudent class methodsFor: 'user interface' stamp: 'hlsf 15/Jul/2023, 9:35:08 am (UTC)'!
label
	^ 'student' translated! !

!DyStudent class methodsFor: 'user interface' stamp: 'hlsf 15/Jul/2023, 9:35:30 am (UTC)'!
pluralLabel
	^ 'Students' translated! !

!DyStudent class methodsFor: 'fileIn/Out' stamp: 'hlsf 26/Jul/2023, 10:39:46 pm (UTC)'!
export: persons to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(firstName lastName email);
		addFields: #(firstName lastName email);
		nextPutAll: persons ! !

!DyStudent class methodsFor: 'fileIn/Out' stamp: 'hlsf 29/Jul/2023, 2:57:44 pm (UTC)'!
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

!DyTeacher methodsFor: 'testing' stamp: 'hlsf 23/May/2023, 6:18:52 pm (UTC)'!
isTeacher
	^ true! !

!DyTeacher methodsFor: 'visiting' stamp: 'hlsf 27/Jun/2023, 10:18:07 pm (UTC)'!
accept: aVisitor
	^ aVisitor visitTeacher: self! !

!DyTask methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:36:16 pm (UTC)'!
courseHourDate
	"Answer the value of courseHourDate"

	^ courseHourDate! !

!DyTask methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:36:16 pm (UTC)'!
courseHourDate: anObject
	"Set the value of courseHourDate"

	courseHourDate := anObject! !

!DyTask methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:36:16 pm (UTC)'!
document
	"Answer the value of document"

	^ document! !

!DyTask methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:36:16 pm (UTC)'!
document: anObject
	"Set the value of document"

	document := anObject! !

!DyTask methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 10:05:22 am (UTC)'!
printOn: aStream
	aStream print: courseHourDate ! !

!DyTask methodsFor: 'accessing' stamp: 'hlsf 5/Apr/2026, 2:07:23 pm (UTC)'!
relPath
	^ DyboSystem tasksRelPath! !

!DyTask methodsFor: 'persistence' stamp: 'hlsf 18/Dec/2024, 1:24:29 pm (UTC)'!
restoreDocumentFromDisk
	document := document loadFromDisk! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 22/May/2023, 5:58:55 pm (UTC)'!
end
	^ endTime! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 22/May/2023, 6:01:48 pm (UTC)'!
end: aTime
	endTime := aTime! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 22/May/2023, 5:58:11 pm (UTC)'!
slotName
	^ name! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 22/May/2023, 6:02:10 pm (UTC)'!
slotName: aString
	name := 	aString ! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 22/May/2023, 5:56:55 pm (UTC)'!
start
	^ startTime ! !

!DyTimeSlot methodsFor: 'accessing' stamp: 'hlsf 22/May/2023, 6:01:59 pm (UTC)'!
start: aTime
	startTime := aTime ! !

!DyTimeSlot methodsFor: 'printing' stamp: 'hlsf 27/Oct/2024, 2:26:53 pm (UTC)'!
printOn: aStream
	name ifNil: [ super printOn: aStream ]
		ifNotNil: [	
			aStream nextPutAll: name; 				tab; tab.
			startTime print24: true showSeconds: false on: aStream.
			aStream 	nextPutAll: ' - '.
			endTime print24: true showSeconds: false on: aStream]! !

!DyTimeSlot methodsFor: 'user interface' stamp: 'hlsf 30/Jun/2023, 7:15:31 pm (UTC)'!
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

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 14/Sep/2023, 1:50:29 pm (UTC)'!
< aTimeSlot
	^ startTime < aTimeSlot start or: [endTime < aTimeSlot end]! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 14/Sep/2023, 1:53:07 pm (UTC)'!
= aTimeSlot
	^ startTime = aTimeSlot start and: [endTime = aTimeSlot end]! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 14/Sep/2023, 1:53:29 pm (UTC)'!
hash
	^ startTime hash bitXor: endTime end! !

!DyTimeSlot methodsFor: 'comparing' stamp: 'hlsf 10/Sep/2023, 9:15:56 pm (UTC)'!
includes: aTime
	^ startTime <= aTime and: [endTime >= aTime]! !

!DyTimeSlot class methodsFor: 'user inteface' stamp: 'hlsf 15/Jul/2023, 9:37:26 am (UTC)'!
label
	^ 'time slot' translated! !

!DyTimeSlot class methodsFor: 'user inteface' stamp: 'hlsf 15/Jul/2023, 9:37:35 am (UTC)'!
pluralLabel
	^ 'Time slots' translated! !

!DyTimeSlot class methodsFor: 'fileIn/Out' stamp: 'hlsf 26/Jul/2023, 11:10:13 am (UTC)'!
export: timeSlots to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(slotName start end);
		addFields: #(slotName start end);
		nextPutAll: timeSlots! !

!DyTimeSlot class methodsFor: 'fileIn/Out' stamp: 'hlsf 26/Jul/2023, 11:09:22 am (UTC)'!
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

!DyView methodsFor: 'ui' stamp: 'hlsf 19/Apr/2026, 4:41:10 pm (UTC)'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DyView methodsFor: 'ui' stamp: 'hlsf 28/Apr/2026, 8:52:45 am (UTC)'!
defaultBorderColor
	^ presenter controlsManager defaultBorderColor! !

!DyView methodsFor: 'ui' stamp: 'hlsf 1/Oct/2023, 4:53:20 pm (UTC)'!
defaultColor
	^Theme current paneBackgroundFrom: self defaultBorderColor ! !

!DyView methodsFor: 'ui' stamp: 'hlsf 7/May/2026, 8:47:37 am (UTC)'!
updateView! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 2:55:05 pm (UTC)'!
classGroup
" The selected class group, if any "
	^ self classGroups at: classGroupIndex ifAbsent: [nil]! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 7/Dec/2024, 7:27:27 am (UTC)'!
classGroup: aClassGroup
	self classGroupIndex: (self classGroups indexOf: aClassGroup ifAbsent: 0)! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 10:45:06 am (UTC)'!
classGroupCourses
	" The existing courses of the selected class group "
	^ self classGroup ifNil: [`Array new`] ifNotNil: [:cg | cg courses]! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 3/Oct/2023, 8:45:18 pm (UTC)'!
classGroupIndex
	^ classGroupIndex! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 10:43:45 am (UTC)'!
classGroupIndex: anIndex
	" Set the class group "
	classGroupIndex := anIndex.
	self changed: #classGroupIndex:.
	self courseIndex: 0.
	self changed: #classGroupCourses.
	self courseIndex: (self classGroupCourses ifEmpty: [0] ifNotEmpty: [1]).! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 10:18:51 am (UTC)'!
classGroups
" All the user class groups "
	^ DyUserData current classGroups! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 18/Dec/2024, 8:20:34 pm (UTC)'!
controlsManager
	^ presenter controlsManager ! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 10:45:52 am (UTC)'!
course
	" The selected course, if any "
	^ self classGroupCourses at: courseIndex ifAbsent: [nil]! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 10:46:17 am (UTC)'!
course: aCourse
	" Set the course for the selected class group "
	self courseIndex: (self classGroupCourses indexOf: aCourse ifAbsent: [0])! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 2:21:53 pm (UTC)'!
courseIndex
" The selected course index in a give class group "
	^ courseIndex! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 10:45:37 am (UTC)'!
courseIndex: anIndex
	" Set the course index of the selected class group "
	courseIndex := anIndex.
	self changed: #courseIndex:.! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 1/Oct/2023, 4:52:42 pm (UTC)'!
presenter: aPresenter
	presenter := aPresenter ! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 11/Jun/2026, 8:45:12 am (UTC)'!
sortBloc
" Respond sorting block depending on the selected osrt option "
	^ {	[:docA :docB | docA model modificationTime > docB model modificationTime].
		[:docA :docB | docA model modificationTime < docB model modificationTime].
		[:docA :docB | docA model title < docB model title ] } at: sortIndex ! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 9:58:00 am (UTC)'!
sortIndex
	^ sortIndex! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 11/Jun/2026, 8:42:10 am (UTC)'!
sortIndex: anIndex
	sortIndex := anIndex.
	self changed: #sortIndex:.
	self updateView! !

!DyView methodsFor: 'accessing' stamp: 'hlsf 11/Jun/2026, 8:24:06 am (UTC)'!
sortOptions
	^ `Array with: 'Newer first' translated with: 'Older first' translated with: 'Name' translated`! !

!DyView methodsFor: 'GUI building' stamp: 'hlsf 26/May/2024, 2:34:08 pm (UTC)'!
classGroupCoursesListMorph
" Present the list of the user courses in a given class group"
	^ DropDownListMorph 
		withModel: self
		listGetter: #classGroupCourses
		indexGetter: #courseIndex
		indexSetter: #courseIndex: ::
		autoDeselect: false.! !

!DyView methodsFor: 'GUI building' stamp: 'hlsf 26/May/2024, 2:38:01 pm (UTC)'!
classGroupListMorph
" Present a list of user class group "
	^ DropDownListMorph 
		withModel: self
		listGetter: #classGroups
		indexGetter: #classGroupIndex
		indexSetter: #classGroupIndex: ::
		autoDeselect: false.! !

!DyView methodsFor: 'GUI building' stamp: 'hlsf 16/Apr/2026, 1:17:38 pm (UTC)'!
previewRow
	^ ​ LayoutMorph newRow :: 
		separation: DocumentView previewGap ; 
		adoptWidgetsColor: self defaultColor;
		name: 'Preview row';
		layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0)
	! !

!DyView methodsFor: 'GUI building' stamp: 'hlsf 15/Apr/2026, 10:29:16 am (UTC)'!
sortListMorph
" Present a list of topic in selected course "
	^ DropDownListMorph 
		withModel: self
		listGetter: #sortOptions
		indexGetter: #sortIndex
		indexSetter: #sortIndex: ::
		autoDeselect: false.! !

!DyView methodsFor: 'initialization' stamp: 'hlsf 7/Oct/2023, 1:56:04 pm (UTC)'!
initialize
	super initialize.
	self beColumn.
	self doAdoptWidgetsColor.! !

!DyView class methodsFor: 'instance creation' stamp: 'hlsf 1/Oct/2023, 4:52:51 pm (UTC)'!
presenter: aPresenter
	^ self basicNew 
		presenter: aPresenter ;
		initialize ! !

!DyView class methodsFor: 'new-morph participation' stamp: 'hlsf 9/Jan/2025, 6:35:32 pm (UTC)'!
includeInNewMorphMenu
	^ false! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 26/May/2024, 1:45:39 pm (UTC)'!
courseHourDateListMorph
" Present a list of forthcomming date for the selected course (courseIndex) "
	^ DropDownListMorph 
		withModel: self
		listGetter: #courseHourDates
		indexGetter: #courseHourIndex
		indexSetter: #courseHourIndex: ::
		autoDeselect: false.! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 5/Dec/2024, 9:31:02 am (UTC)'!
incomingTasksPanel
"A view to browse the tasks already assigned "
	^ LayoutMorph newColumn 
		addMorph: (LabelMorph contents: 'Future tasks' translated);
		addMorphUseAll: self tasksListMorph ! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 15/Apr/2026, 11:03:12 am (UTC)'!
newTaskPanel
"The tools to assign a new task : which classGroup, which course and when "
	^​ LayoutMorph newRow ::
		addMorph: (LabelMorph contents: 'New task in ' translated);
		addMorph: self classGroupListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorph: self classGroupCoursesListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorph: (LabelMorph contents: ' at ' translated);
		addMorph: self courseHourDateListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorphUseAll: DyControlsManager spacer;
		addMorph: (PluggableButtonMorph 
			model: presenter
			action: #saveTask
			label: 'Save' translated) layoutSpec: LayoutSpec keepMorphExtent ! !

!DyAgendaView methodsFor: 'GUI building' stamp: 'hlsf 8/Dec/2024, 5:26:09 pm (UTC)'!
tasksListMorph
" Present a list of forthcomming tasks "
	^ PluggableListOfMorph 
		withModel: self
		listGetter: #tasksWidget
		indexGetter: #taskIndex
		indexSetter: #taskIndex: ::
		autoDeselect: true.! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 3:15:41 pm (UTC)'!
classGroupIndex: anIndex
	super classGroupIndex: anIndex.
	self courseHourIndex:​ 0.
	self changed: #courseHourDates.
	self courseHourIndex:​ (self courseHourDates ifEmpty: [0] ifNotEmpty: [1]).! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 3:26:36 pm (UTC)'!
courseHourDate
" The selected course hour date "
	^ self courseHourDates at: courseHourIndex ifAbsent: [nil]! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 7/Dec/2024, 7:42:22 am (UTC)'!
courseHourDate: aCourseHourDate
	self courseHourIndex: (self courseHourDates indexOf: aCourseHourDate ifAbsent: [0])! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 4:06:49 pm (UTC)'!
courseHourDates
" A list of future course hour dates "
	^ self course 
		ifNil: [Array new]
		ifNotNil: [:course | course futureDates: 10]
		! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 28/Sep/2023, 9:13:57 am (UTC)'!
courseHourIndex
	^ courseHourIndex! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 8/Dec/2024, 5:31:58 pm (UTC)'!
courseHourIndex: anIndex
	" Set the course hour date (date+timeslot) index of the selected class group and course "
	courseHourIndex := anIndex.
	self changed: #courseHourIndex:! !

!DyAgendaView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 3:16:38 pm (UTC)'!
courseIndex: anIndex
	super courseIndex: anIndex.
	self courseHourIndex:​ 0.
	self changed: #courseHourDates.
	self courseHourIndex:​ (self courseHourDates ifEmpty: [0] ifNotEmpty: [1]).! !

!DyAgendaView methodsFor: 'accessing task' stamp: 'hlsf 17/Apr/2026, 10:20:44 am (UTC)'!
labelForTask: aTask
	^String streamContents: [:str |
		(DyUserData current courseAndGroupOf: aTask) ifNotNil: [:aCourseGroup |
			str print: aCourseGroup first;
				nextPutAll: ' (';
				print: aCourseGroup second;
				nextPutAll: ') - '].
		aTask printOn: str]
		
				! !

!DyAgendaView methodsFor: 'accessing task' stamp: 'hlsf 5/Dec/2024, 9:36:32 am (UTC)'!
task
	" the selected task "
	^ self tasks at: taskIndex ifAbsent: [nil]! !

!DyAgendaView methodsFor: 'accessing task' stamp: 'hlsf 5/Dec/2024, 9:44:16 am (UTC)'!
taskIndex
	^ taskIndex! !

!DyAgendaView methodsFor: 'accessing task' stamp: 'hlsf 17/Apr/2026, 10:20:51 am (UTC)'!
taskIndex: anIndex
	taskIndex := anIndex.
	self changed: #taskIndex:.
	self task 
		ifNotNil: [:aTask |
			(DyUserData current courseAndGroupOf: aTask) ifNotNil: [:aCourseGroup |
				self classGroup: aCourseGroup second.
				self course: aCourseGroup first.
				self courseHourDate: aTask courseHourDate].
			aTask restoreDocumentFromDisk.
			self plugMiniDocument: aTask document view]
		ifNil: [self plugNewMiniDocument]
		! !

!DyAgendaView methodsFor: 'accessing task' stamp: 'hlsf 17/Apr/2026, 10:19:31 am (UTC)'!
tasks
	^ DyUserData current tasks! !

!DyAgendaView methodsFor: 'accessing task' stamp: 'hlsf 21/May/2026, 7:46:03 am (UTC)'!
tasksWidget
	^ self tasks collect: [:aTask | | label |
		label := self labelForTask: aTask.
		LayoutMorph newRow
			color: Color transparent;
			gap: 8;
			addMorph: (PluggableButtonMorph model: presenter action: #deleteTask: actionArgument: aTask ::
				icon: Theme current cancelIcon;
				buttonStyle: #none;
				setBalloonText: ('Delete the task {1}?' translated format: {label bold}));
			addMorph: (LabelMorph contents: label)
			yourself		]
				! !

!DyAgendaView methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 10:20:39 am (UTC)'!
initTask
	" Guess the course at current time, then its classGroup "
	| courseGroupNow |
	courseGroupNow := DyUserData current courseAndGroupAt: DateAndTime now.
	courseGroupNow 
		ifNotNil: 	[
			classGroupIndex := self classGroups indexOf: courseGroupNow second.
			courseIndex := self classGroupCourses indexOf: courseGroupNow first .
			courseHourIndex := self courseHourDates ifEmpty: [0] ifNotEmpty: [1] ]
		ifNil: [classGroupIndex := courseIndex := courseHourIndex := 0 ].
	self changedNewTask	.
	taskIndex := 0.
	self changedFutureTasks 
	! !

!DyAgendaView methodsFor: 'initialization' stamp: 'hlsf 5/Dec/2024, 8:37:31 am (UTC)'!
initialize
	super initialize.
	self initTask.	
	self addMorphKeepMorphHeight: self newTaskPanel.
	self plugNewMiniDocument.
	self addAdjusterMorph.
	self addMorphUseAll: self incomingTasksPanel.
	self adoptWidgetsColor: self defaultBorderColor 
	
! !

!DyAgendaView methodsFor: 'initialization' stamp: 'hlsf 18/Dec/2024, 8:21:14 pm (UTC)'!
plugMiniDocument: aDocView
" plug the mini document in my view "
	miniDocView 
		ifNotNil:  [self replaceSubmorph: miniDocView by: aDocView ]
		ifNil: [	self addMorph: aDocView ].
	self controlsManager triggerEvent: #switchView.
	self controlsManager docView: aDocView.
	miniDocView := aDocView ! !

!DyAgendaView methodsFor: 'initialization' stamp: 'hlsf 27/Sep/2025, 8:01:21 am (UTC)'!
plugNewMiniDocument
" Insert a new empty mini document  "
	self plugMiniDocument: (DocumentView presenter: Document new :: installMiniView)
	
	! !

!DyAgendaView methodsFor: 'initialization' stamp: 'hlsf 5/Dec/2024, 9:04:04 am (UTC)'!
resetTask
	self initTask.
	self plugNewMiniDocument ! !

!DyAgendaView methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:48:20 pm (UTC)'!
isTaskValid
" Is the currently edited task valid "
	^ classGroupIndex > 0 
	and: [courseIndex >0
	and: [courseHourIndex > 0 ]]! !

!DyAgendaView methodsFor: 'update' stamp: 'hlsf 8/Dec/2024, 5:34:18 pm (UTC)'!
changedFutureTasks
	self changed: #tasksWidget.
	self changed: #taskIndex:
	! !

!DyAgendaView methodsFor: 'update' stamp: 'hlsf 7/Dec/2024, 7:20:33 am (UTC)'!
changedNewTask

	self changed: #classGroups.
	self changed: #classGroupCourses.
	self changed: #courseHourDates.
	self changed: #classGroupIndex:.
	self changed: #courseIndex:.
	self changed: #courseHourIndex:! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 3:17:48 pm (UTC)'!
classGroupIndex: anIndex
	super classGroupIndex: anIndex.
	self topicIndex: 0.
	self changed: #topics.
	self topicIndex:​ (self topics ifEmpty: [0] ifNotEmpty: [1])! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 3:17:24 pm (UTC)'!
courseIndex: anIndex
	super courseIndex: anIndex.
	self topicIndex: 0.
	self changed: #topics.
	self topicIndex:​ (self topics ifEmpty: [0] ifNotEmpty: [1]).! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 1/Dec/2024, 9:23:19 am (UTC)'!
topic
" The selected topic, if any "
	^ self topics at: topicIndex ifAbsent: [nil]! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 31/Dec/2024, 8:59:00 am (UTC)'!
topic: aTopic
" Set the selected topic once the classGroup and course are set accordingly "
	self classGroup: aTopic course classGroup.
	self course: aTopic course.
	self topicIndex: (self topics indexOf: aTopic ifAbsent: [0])! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 4/Oct/2023, 8:39:04 pm (UTC)'!
topicIndex
	^ topicIndex! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
topicIndex: anIndex
	topicIndex := anIndex.
	self changed: #topicIndex:.
	self updateView.
	presenter currentTopic: self topic! !

!DyBinderView methodsFor: 'accessing' stamp: 'hlsf 26/May/2024, 2:57:40 pm (UTC)'!
topics
"The topics of a given course"
	^ self course 
		ifNotNil: [:aCourse | aCourse topics]
		ifNil: [`Array new`]! !

!DyBinderView methodsFor: 'GUI building' stamp: 'hlsf 15/Apr/2026, 11:02:15 am (UTC)'!
documentSelectorPanel
" A view to select documents according to classGroups, courses, topics and sorting option "
	^ LayoutMorph newRow ::
		addMorph: self classGroupListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorph: self classGroupCoursesListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorph: self topicListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorphUseAll: DyControlsManager spacer;
		addMorph: self sortListMorph layoutSpec: LayoutSpec keepMorphExtent ! !

!DyBinderView methodsFor: 'GUI building' stamp: 'hlsf 15/Jul/2026, 1:49:31 pm (UTC)'!
previewFor: aDocument
	| buttons preview |
	buttons := OrderedCollection new.
	buttons add: 
		(PluggableButtonMorph model: presenter action: #openDocument: actionArgument: aDocument ::
			icon: Theme current textEditorIcon;
			buttonStyle: #none;
			setBalloonText: 'Edit this document.' translated).
	aDocument isSaved ifFalse: [ buttons add:
		(PluggableButtonMorph model: presenter action: #saveDocument: actionArgument: aDocument ::
			icon: Theme current saveIcon;
			buttonStyle: #none;
			setBalloonText: 'Save this document.' translated)].
	buttons add: 
		(PluggableButtonMorph model: presenter action: #exportDocument: actionArgument: aDocument ::
			icon: Theme current goUpIcon ;
			buttonStyle: #none;
			setBalloonText: 'Export this document to the exchange folder.' translated).
	buttons add: 
		(PluggableButtonMorph model: presenter action: #deleteDocument: actionArgument: aDocument ::
			icon: Theme current cancelIcon ;
			buttonStyle: #none;
			setBalloonText: 'Delete this document.' translated).
	preview := PreviewMorph 
		object:  aDocument 
		image:  aDocument preview
		buttons: buttons
		label: aDocument model title ::
		color: self defaultColor darker;
		borderWidth: 2;
		borderColor: (aDocument isSaved ifTrue: [self defaultColor muchDarker] ifFalse: [Color red]).
	preview when: #doubleClick send: #renameDocument: to: presenter.
	^ preview ! !

!DyBinderView methodsFor: 'GUI building' stamp: 'hlsf 7/May/2026, 1:04:30 pm (UTC)'!
previewsPanel
" A view to present previews of the selected documents from the documentSelectorPanel "
	| quickButtons scroller |
	quickButtons := Array 
		with: (PluggableButtonMorph model: presenter action: #newDocument ::
			icon: Theme current listAddIcon;
			buttonStyle: #none;
			setBalloonText: 'Add a new document to this topic.' translated)
		with: (PluggableButtonMorph model: presenter action: #importPDF ::
			icon: Theme current openIcon;
			buttonStyle: #none;
			setBalloonText: 'Import a PDF document into this topic.' translated)
		with: (PluggableButtonMorph model: presenter action: #importDocument ::
			icon: Theme current goDownIcon ;
			buttonStyle: #none;
			setBalloonText: 'Import a document from the exchange folder.' translated).
	scroller := PluggableScrollPane new ::
		layoutSpec: LayoutSpec useAll;
		scroller: (previewPanel := LayoutMorph newColumn) .
	^ DecoratedPane 
		open: scroller
		label:  'My courses' translated
		quickButtons: quickButtons ::
		padding: 20! !

!DyBinderView methodsFor: 'GUI building' stamp: 'hlsf 26/May/2024, 1:45:44 pm (UTC)'!
topicListMorph
" Present a list of topic in selected course "
	^ DropDownListMorph 
		withModel: self
		listGetter: #topics
		indexGetter: #topicIndex
		indexSetter: #topicIndex: ::
		autoDeselect: false.! !

!DyBinderView methodsFor: 'initialization' stamp: 'hlsf 15/Apr/2026, 10:28:50 am (UTC)'!
initialize
	super initialize.
	classGroupIndex :=  self classGroups ifNotEmpty: [1] ifEmpty: [0].
	courseIndex := self classGroupCourses ifNotEmpty: [1] ifEmpty: [0].
	topicIndex := self topics ifNotEmpty: [1] ifEmpty: [0].
	sortIndex := 1.
	self addMorphKeepMorphHeight: self documentSelectorPanel.
	self addMorphUseAll: self previewsPanel.
	self adoptWidgetsColor: self defaultBorderColor. ! !

!DyBinderView methodsFor: 'update' stamp: 'hlsf 11/Jun/2026, 8:38:05 am (UTC)'!
updateView
" Fill the preview panel with document previews from the user selected classGroup-course-topic "
	| previewsPerLine  documents |
	documents := self topic ifNil: [`Array new`] ifNotNil: [:aTopic | aTopic documents].
	documents := documents sort: self sortBloc.
	previewPanel removeAllMorphs.
	previewsPerLine := self owner morphWidth - 50 // (DocumentView previewExtent x + DocumentView previewGap).
	documents groupsOf: previewsPerLine atATimeDo: [:documentsRow | 
		previewPanel addMorph: (	documentsRow 
			inject: self previewRow 
			into: [:row :document | row addMorph: (self previewFor: document) ]) ].
	documents size \\ previewsPerLine ifNotZero: [ "There is an incomplete row to add "
		previewPanel addMorph: (
			(documents allButFirst: (documents size // previewsPerLine * previewsPerLine))
				inject: self previewRow 
				into: [:row :document | row addMorph: (self previewFor: document) ]) ].
	^ previewPanel ! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
classGroupIndex: anIndex
	" Set the class group "
	classGroupIndex := anIndex.
	self changed: #classGroupIndex:.
	self updateView ! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 5:13:12 pm (UTC)'!
classGroups
	^ super classGroups 
		addFirst: 'All' translated;
		yourself! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 10:23:35 am (UTC)'!
quantities
" How many documents to preview at once "
	^ #(5 10 20 50 100)! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 12:35:04 pm (UTC)'!
quantity
	" How many documents to present at once in the preview "
	^ self quantities at: quantityIndex ! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 10:40:01 am (UTC)'!
quantityIndex
	^ quantityIndex ! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
quantityIndex: anIndex
	quantityIndex  := anIndex.
	self changed: #quantityIndex:.
	self updateView! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 11/Jun/2026, 8:25:00 am (UTC)'!
sortOptions
	^ super sortOptions first: 2! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 12:35:38 pm (UTC)'!
type
	" The type of document to present "
	^ self types at: typeIndex ! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 10:35:15 am (UTC)'!
typeIndex
	^ typeIndex ! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
typeIndex: anIndex
	typeIndex  := anIndex.
	self changed: #typeIndex:.
	self updateView! !

!DyStartView methodsFor: 'accessing' stamp: 'hlsf 15/Apr/2026, 5:13:03 pm (UTC)'!
types
" Document type can be pedagogicial class/course/topic or task document "
	^ `{'All' translated . 'Course' translated . 'Homework' translated}`! !

!DyStartView methodsFor: 'initialization' stamp: 'hlsf 15/Apr/2026, 12:36:37 pm (UTC)'!
initialize
	super initialize.	
"	By default, present the last 5 most recent documents of all types, in all classes "	
	classGroupIndex := 1.
	typeIndex := 1.
	quantityIndex := 1.
	sortIndex := 1.
	self addMorphKeepMorphHeight: self documentSelectorPanel.
	self addMorphUseAll: self previewsPanel.
	self adoptWidgetsColor: self defaultBorderColor. ! !

!DyStartView methodsFor: 'GUI building' stamp: 'hlsf 16/Apr/2026, 8:12:05 am (UTC)'!
documentSelectorPanel
" A view to select documents according to classGroups, courses, topics and sorting option "
	^ LayoutMorph newRow ::
		addMorph: (LabelMorph contents: 'Class ' translated);
		addMorph: self classGroupListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorph: (LabelMorph contents: 'Type ' translated);
		addMorph: self typeListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorph: (LabelMorph contents: 'Quantity ' translated);
		addMorph: self quantityListMorph layoutSpec: LayoutSpec keepMorphExtent ;
		addMorphUseAll: DyControlsManager spacer;
		addMorph: self sortListMorph layoutSpec: LayoutSpec keepMorphExtent ! !

!DyStartView methodsFor: 'GUI building' stamp: 'hlsf 15/Jul/2026, 1:50:00 pm (UTC)'!
previewFor: aDocument
	| buttons preview decorated docModel classGroup indicativeColor title |
	docModel := aDocument model.
	title := docModel isCourse ifTrue: [docModel title] ifFalse: [docModel owner printString].
	indicativeColor := docModel isCourse ifTrue: [Color blue darker] ifFalse: [Color red darker].
	classGroup := DyUserData current classGroupOf: docModel.
	buttons := OrderedCollection new.
	buttons add: 
		(PluggableButtonMorph model: presenter action: #openDocument: actionArgument: aDocument ::
			icon: Theme current textEditorIcon;
			setBalloonText: 'Edit this document' translated).
	preview := PreviewMorph 
		object:  aDocument 
		image:  aDocument preview
		buttons: buttons
		label: title ::
		borderWidth: 2.
	preview setBalloonText: (Text streamContents: [:str |
		str nextPutAll: title bold;
			nextPut: Character lf;
			nextPutAll: ((docModel description format: {classGroup}) color: indicativeColor) ;
			nextPut: Character lf;
			nextPutAll: (('Creation time: ' translated, docModel dirName italic) pointSize: FontFamily defaultPointSize - 2);
			nextPut: Character lf;
			nextPutAll: (('Modification time: ' translated, 
			(String streamContents: [:str2 | docModel modificationTime filenamePrintOn: str2]) italic) 
				pointSize: FontFamily defaultPointSize - 2) ]).
	decorated := (DecoratedPane open: preview label: classGroup printString) 
		layoutSpec: (LayoutSpec keepMorphExtent offAxisEdgeWeight: 0);
		padding: 20@10.
	preview borderColor: indicativeColor.
	^ decorated ! !

!DyStartView methodsFor: 'GUI building' stamp: 'hlsf 19/Apr/2026, 9:27:00 am (UTC)'!
previewsPanel
" A view to present previews of the selected documents from the documentSelectorPanel "
	|  scroller |
	scroller := PluggableScrollPane new ::
		layoutSpec: LayoutSpec useAll;
		scroller: (previewPanel := LayoutMorph newColumn :: name: 'Preview panel').
	^ DecoratedPane 
		open: scroller
		label:  'My documents' translated ::
		padding: 20! !

!DyStartView methodsFor: 'GUI building' stamp: 'hlsf 15/Apr/2026, 10:31:46 am (UTC)'!
quantityListMorph
" Present a list of the quantity of document to present at once "
	^ DropDownListMorph 
		withModel: self
		listGetter: #quantities
		indexGetter: #quantityIndex
		indexSetter: #quantityIndex: ::
		autoDeselect: false.! !

!DyStartView methodsFor: 'GUI building' stamp: 'hlsf 15/Apr/2026, 10:45:54 am (UTC)'!
typeListMorph
" Present a selector for the type of document to present "
	^ DropDownListMorph 
		withModel: self
		listGetter: #types
		indexGetter: #typeIndex
		indexSetter: #typeIndex: ::
		autoDeselect: false.! !

!DyStartView methodsFor: 'updating' stamp: 'hlsf 11/Jun/2026, 7:47:20 am (UTC)'!
classGroupsQuery
	| classGroups |
	classGroups := OrderedCollection new.
	classGroupIndex = 1
		ifTrue:  [classGroups addAll: DyUserData current classGroups ]	"All classes "
		ifFalse: [classGroups add: self classGroup].						"A specific class "
	^ classGroups ! !

!DyStartView methodsFor: 'updating' stamp: 'hlsf 11/Jun/2026, 8:35:36 am (UTC)'!
documentsQuery
	" Documents according to the user selection "
	| classGroups types documents |
	documents := OrderedCollection new.
	classGroups := self classGroupsQuery.
	types := self typesQuery.
	classGroups do: [:aClassGroup |
		types do: [:aDocType |
			aDocType = #course 
				ifTrue: [documents addAll: aClassGroup documents].
			aDocType = #task
				ifTrue: [documents addAll: (
					(DyUserData current tasksOf: aClassGroup) collect: [:aTask | aTask document]
			) ] ] ].
	documents := documents sort: self sortBloc.
	^ documents size <= self quantity 
		ifTrue: [documents]
		ifFalse: [documents first: self quantity]! !

!DyStartView methodsFor: 'updating' stamp: 'hlsf 15/Apr/2026, 1:35:33 pm (UTC)'!
typesQuery
	| types |
	types := OrderedCollection new.
	typeIndex = 1
		ifTrue:  [types addAll: #(course task)]
		ifFalse: [
			types add: (typeIndex = 2 
				ifTrue: [#course] 
				ifFalse: [#task]) ].
	^ types! !

!DyStartView methodsFor: 'updating' stamp: 'hlsf 7/May/2026, 8:49:21 am (UTC)'!
updateView
" Fill the preview panel with document previews from the user selected classGroup-course-topic "
	| previewsPerLine  documents |
	previewPanel removeAllMorphs.
	documents := self documentsQuery ifEmpty: [^ self].
	previewsPerLine := self owner morphWidth - 50 // (DocumentView previewExtent x + (DocumentView previewGap * 2) + 35).
	previewsPerLine := previewsPerLine max: 1.
	documents groupsOf: previewsPerLine atATimeDo: [:documentsRow | 
		previewPanel addMorph: (	documentsRow 
			inject: self previewRow 
			into: [:row :document | row addMorph: (self previewFor: document) ]) ].
	documents size \\ previewsPerLine ifNotZero: [ "There is an incomplete row to add "
		previewPanel addMorph: (
			(documents allButFirst: (documents size // previewsPerLine * previewsPerLine))
				inject: self previewRow 
				into: [:row :document | row addMorph: (self previewFor: document) ]) ].
	^ previewPanel ! !

!DyboFullscreenView methodsFor: 'accessing' stamp: 'hlsf 25/Feb/2026, 7:29:30 am (UTC)'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DyboFullscreenView methodsFor: 'accessing' stamp: 'hlsf 25/Feb/2026, 7:46:07 am (UTC)'!
layoutMorph
"	I am the layout morph"
	^ self! !

!DyboFullscreenView methodsFor: 'accessing' stamp: 'hlsf 25/Feb/2026, 7:53:02 am (UTC)'!
presenter
	^ presenter ! !

!DyboFullscreenView methodsFor: 'accessing' stamp: 'hlsf 25/Feb/2026, 7:52:55 am (UTC)'!
presenter: aPresenter
	presenter := aPresenter ! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:30:56 am (UTC)'!
buttonColor

	^Theme current buttonColorFrom: self windowColor! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 8:53:11 am (UTC)'!
defaultBorderColor
	^ presenter controlsManager defaultBorderColor! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:50:38 am (UTC)'!
defaultColor
	^ presenter controlsManager defaultColor! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:37:12 am (UTC)'!
initialize
	super initialize.
	adoptsWidgetsColor := true.
	self beColumn! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:40:12 am (UTC)'!
openInWorld
	"Ensure all widgets have proper colors before opening"
	Theme current widgetsColorFromToolColor ifTrue: [
		self widgetsColor: self windowColor ].
	super openInWorld! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:41:22 am (UTC)'!
textBackgroundColor

	^Theme current paneBackgroundFrom: self widgetsColor! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:41:48 am (UTC)'!
widgetsColor
	^ borderColor! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 25/Feb/2026, 7:41:14 am (UTC)'!
widgetsColor: aColor
	"aColor will be used for titles, borders, etc.
	A variation of it, #paneColorFrom:, will be used for panes background"

	borderColor := aColor.
	self color: self textBackgroundColor.
	self adoptWidgetsColor: borderColor! !

!DyboFullscreenView methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:52:09 am (UTC)'!
windowColor
	^ presenter controlsManager windowColor! !

!DyboFullscreenView methodsFor: 'stepping' stamp: 'hlsf 25/Feb/2026, 8:02:21 am (UTC)'!
step
	self morphPosition: 0@0;
		morphExtent: Display extent! !

!DyboFullscreenView methodsFor: 'stepping' stamp: 'hlsf 25/Feb/2026, 7:59:57 am (UTC)'!
stepTime
	^ 500 ! !

!DyboFullscreenView methodsFor: 'stepping' stamp: 'hlsf 25/Feb/2026, 8:00:41 am (UTC)'!
wantsSteps
	^ true! !

!DyboFullscreenView methodsFor: 'menus' stamp: 'hlsf 29/Mar/2026, 11:05:39 am (UTC)'!
addCustomMenuItems: aMenu hand: aHand
	aMenu addUpdating: #hackerModeString action: #toggleHackerMode! !

!DyboFullscreenView methodsFor: 'menus' stamp: 'hlsf 29/Mar/2026, 11:06:39 am (UTC)'!
hackerModeString
	^ self isStepping not asMenuItemTextPrefix , 'hacker mode'! !

!DyboFullscreenView methodsFor: 'menus' stamp: 'hlsf 26/Feb/2026, 9:16:51 am (UTC)'!
morphExtent: newExtent
	super morphExtent: Display extent x @ newExtent y! !

!DyboFullscreenView methodsFor: 'menus' stamp: 'hlsf 29/Mar/2026, 11:05:39 am (UTC)'!
toggleHackerMode
	self isStepping ifTrue: [self stopStepping] ifFalse: [self startStepping]! !

!DyboFullscreenView class methodsFor: 'instance creation' stamp: 'hlsf 28/Apr/2026, 9:46:39 am (UTC)'!
for: aPresenter
	^ self basicNew
		presenter: aPresenter;
		initialize ;
		yourself! !

!DyboWindow methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:43:02 am (UTC)'!
defaultBorderColor
	^ presenter controlsManager defaultBorderColor ! !

!DyboWindow methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:47:08 am (UTC)'!
defaultColor
	^ presenter controlsManager defaultColor! !

!DyboWindow methodsFor: 'initialization' stamp: 'hlsf 17/Apr/2026, 3:56:10 pm (UTC)'!
initialize
	super initialize.
	self setLabel: 'Developer Mode'! !

!DyboWindow methodsFor: 'initialization' stamp: 'hlsf 28/Apr/2026, 9:52:02 am (UTC)'!
windowColor
	^ presenter controlsManager windowColor! !

!DyboWindow methodsFor: 'accessing' stamp: 'hlsf 28/Sep/2023, 7:38:59 pm (UTC)'!
adoptWidgetsColor: aColor 
	super adoptWidgetsColor: aColor.
	color := Theme current paneBackgroundFrom: aColor.! !

!DyboWindow methodsFor: 'accessing' stamp: 'hlsf 5/Sep/2024, 9:14:05 am (UTC)'!
presenter
	^ presenter! !

!DyboWindow methodsFor: 'accessing' stamp: 'hlsf 15/Aug/2023, 6:52:33 pm (UTC)'!
presenter: aPresenter
	presenter := aPresenter ! !

!DyboWindow methodsFor: 'open/close' stamp: 'hlsf 17/Apr/2026, 4:30:05 pm (UTC)'!
delete
	super delete.
	presenter reset.
	DyUserData reset.
	presenter := nil.
	Smalltalk garbageCollect ! !

!DyboWindow class methodsFor: 'instance creation' stamp: 'hlsf 28/Apr/2026, 9:44:27 am (UTC)'!
for: aPresenter
	^ self basicNew 
		presenter: aPresenter;
		initialize ;
		yourself! !

!DyWizardNewUser methodsFor: 'pages' stamp: 'hlsf 20/Apr/2026, 9:34:45 pm (UTC)'!
coursePage
"Let the user edit his first course "
	| mold pane |
	mold := model classCourses first mold.
	pane :=  mold newPane 
		layoutSpec: LayoutSizeSpec useAll
		yourself.
	^ (WizardPage standardPage: 'My first course' translated on: self) contents: pane! !

!DyWizardNewUser methodsFor: 'pages' stamp: 'hlsf 21/Apr/2026, 1:14:31 pm (UTC)'!
coursesPage
	| pane |
	pane := model accept: DyViewerVisitor new.
	model when: #editorPlugged send: #adoptWidgetsColor: to: self with: self defaultColor.
	pane 
		layoutSpec: LayoutSizeSpec useAll;
		yourself.
	^ (WizardPage standardPage: 'Edit more courses' translated on: self) contents: pane! !

!DyWizardNewUser methodsFor: 'pages' stamp: 'hlsf 22/Apr/2026, 8:35:31 pm (UTC)'!
pageBuilders
	^ #(welcomePage userPage #coursePage #coursesPage #validatePage) 
		! !

!DyWizardNewUser methodsFor: 'pages' stamp: 'hlsf 20/Apr/2026, 9:25:18 pm (UTC)'!
userPage
	| mold pane |
	mold := model mold.
	pane :=  mold newPane 
		layoutSpec: LayoutSizeSpec useAll;
		widgetsColor: Color red;
		yourself.
	^ (WizardPage standardPage: 'School & User' translated on: self) contents: pane! !

!DyWizardNewUser methodsFor: 'pages' stamp: 'hlsf 21/May/2026, 8:15:48 am (UTC)'!
validatePage
	^ (WizardPage applyPage: 'Validate' translated on: self) contents: 
'Have you finished entering your information?

If your information is valid, click on the "Apply" button; otherwise, go back and correct it.

After clicking on the "Apply" button, you will be able to edit additional information such as the school year calendar, the class schedules and the course topics in the "Settings" panel, button at the right in the DyboApp toolbar.' translated justified

"
Vous avez fini de saisir vos informations ?
Si vos informations sont valides, cliquer sur le bouton ""appliquer"". Sinon, revenir en arrière et corriger.

Après avoir cliqué sur le bouton ""appliquer"", vous pourrez éditer des informations supplémentaires comme le calendrier scolaire, l''emploi du temps des classes et les sujets de vos cours depuis the panneau de préférences, bouton à droite dans le barre d''outils de la DyboApp.
"! !

!DyWizardNewUser methodsFor: 'pages' stamp: 'hlsf 22/Apr/2026, 8:53:18 pm (UTC)'!
welcomePage
	^ (WizardPage firstPage: 'Initial setup' translated on: self) contents: 
'Welcome!!

This is your first time using DyboApp. To make the best use of it, you need to enter some information about your classes and courses, validate your editing with the ''Accept'' button.

This data is only saved locally in your ''Documents/MyDybo'' folder.

Later, you may want to enter additional information such as your class schedules and its chapters. This information is useful for DyboApp to better organize your documents and tasks.

To start, press the ''Next'' button.' translated justified 
 
"Bienvenue !!

Il s'agit de votre première utilisation de DyboApp. Pour l'utiliser au mieux, vous devez saisir quelques informations concernant vos classes et vos cours.

Ces données sont uniquement enregistrées localement dans votre dossier Documents/MyDybo.

Une fois terminé, vous pourrez saisir des informations complémentaires comme l'horaire de vos cours et son chapitrage. Ces informations sont utiles à DyboApp pour ranger au mieux vos documents et vos tâches."! !

!DyWizardNewUser methodsFor: 'initialization' stamp: 'hlsf 20/Apr/2026, 8:15:26 pm (UTC)'!
defaultColor
	^ Theme current transcript! !

!DyWizardNewUser methodsFor: 'initialization' stamp: 'hlsf 21/May/2026, 8:02:48 am (UTC)'!
defaultSeparation
	^ 20! !

!DyWizardNewUser methodsFor: 'testing' stamp: 'hlsf 21/May/2026, 9:27:41 am (UTC)'!
isCancellingPossible
	^ false! !

!DyWizardNewUser methodsFor: 'testing' stamp: 'hlsf 19/Apr/2026, 12:52:27 pm (UTC)'!
isReadyToApply
	^ model mold isValid and: [model classCourses first mold isValid]! !

!DyWizardNewUser methodsFor: 'open/close' stamp: 'hlsf 21/May/2026, 8:45:52 am (UTC)'!
minimumExtent
	^ 800 @ (600 max: super minimumExtent y)! !

!DyWizardNewUser methodsFor: 'actions' stamp: 'hlsf 23/May/2026, 1:52:39 pm (UTC)'!
apply
	| mySchool dybo |
	self delete.
"	TODO
	1.  Create the User data according to the informatiion in the user instance: 
		- user
		- school with default agenda and time slots
		- class group and course
		- for each course, create two topics: Lessons and Exercises
	2. Open the DyboApp Settings tool to let the user input additional information
"
	DyUserData reset.
	DyUserData current user
		firstName: model userFirstname;
		lastName: model userLastname.
	mySchool := DySchool new schoolName: model schoolName.
	DyUserData current schools add: mySchool.
	model classCourses do: [:classCourse | | classGroup |
		"search if class exist in school "
		classGroup := (mySchool classGroup: classCourse classNumber) 
			ifNotNil:  [:theClassGroup | theClassGroup ]
			ifNil: [mySchool classGroups add: (DyClassGroup new 
				owner: mySchool;
				number: classCourse classNumber;
				yourself)].
		classGroup courses add: (DyCourse new	
			owner: classGroup;
			subject: classCourse courseName;
			setDefaultTopics ;
			yourself) ].
	DyboSystem saveData.
	dybo := Dybo load.
	dybo goSettings.
	dybo activeView selectCategoryNamed: #userDataView
	! !

!DyboTestCase methodsFor: 'setUp/tearDown' stamp: 'hlsf 28/Sep/2023, 7:28:52 pm (UTC)'!
tearDown
	self tearDownResources! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:16:53 pm (UTC)'!
testAgenda
	self assert: self data agenda start = '2023-08-21' asDate.
	self assert: self data agenda end = '2024-06-28' asDate.
	self deny: (self data agenda isDayOff: '2023-08-21' asDate).
	self deny: (self data agenda isDayOff: '2023-06-28' asDate).	
	
	self assert: (self data agenda isDayOff: '2023-9-7' asDate).
	self assert: (self data agenda isDayOff: '2024-02-21' asDate).
	self assert: (self data agenda isDayOff: '2023-12-25' asDate).
	self assert: (self data agenda isDayOff: '2024-01-5' asDate).
	self deny: (self data agenda isDayOff: '2024-01-6' asDate).
	self deny: (self data agenda isDayOff: '2024-05-16' asDate)
	! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:17:03 pm (UTC)'!
testAsCourseIn	
	| school course courseHour | 
	school := self data schools first.
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

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:17:10 pm (UTC)'!
testClassGroupCourse
	| school group course | 
	school := self data schools first.
	group := school classGroups first.
	course := group courses first.
	self assert: group school equals: school.
	self assert: course school equals: school.
	self assert: group number equals: '932'.
	self assert: course subject equals: 'Histoire'
	! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:17:14 pm (UTC)'!
testCourseAgendaAccess
	| school group course agenda | 
	school := self data schools first.
	group := school classGroups first.
	course := group courses first.
	agenda := course agenda.
	self assert: agenda start = '2023-08-21' asDate.
	self assert: agenda end = '2024-06-28' asDate! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:17:45 pm (UTC)'!
testCourseAt
	| courseH courseM courseI classGroup dateAndTime | 
	classGroup := self data schools first classGroups first.
	courseH := classGroup courses first.
	courseM := classGroup courses second .
	courseI := classGroup courses third .


	dateAndTime := DateAndTime fromString: '2023-09-11 9:00'. "Monday"
	self assert: (domain courseAt: dateAndTime) equals: courseH.
	dateAndTime := DateAndTime fromString: '2023-09-11 7:00'. 
	self assert: (domain courseAt: dateAndTime) equals: nil.
	
	dateAndTime := DateAndTime fromString: '2023-09-12 11:30'.
	self assert: (domain courseAt: dateAndTime) equals: courseH.
	dateAndTime := DateAndTime fromString: '2023-09-12 11:15'.
	self assert: (domain courseAt: dateAndTime) equals: courseH.
	dateAndTime := DateAndTime fromString: '2023-09-12 11:13'.
	self assert: (domain courseAt: dateAndTime) equals: courseH.

	dateAndTime := DateAndTime fromString: '2023-09-13 9:00'. 
	self assert: (domain courseAt: dateAndTime) equals: courseM.
	
	dateAndTime := DateAndTime fromString: '2023-09-15 15:54'. 
	self assert: (domain courseAt: dateAndTime) equals: courseH.
	
	dateAndTime := DateAndTime fromString: '2023-09-11 14:00'. 
	self assert: (domain courseAt: dateAndTime) equals: courseI.
	! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:17:52 pm (UTC)'!
testCourseHours
	| school group courseHours | 
	school := self data schools first.
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

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:18:01 pm (UTC)'!
testFutureDates
	| course date futureDates| 
	date := (DateAndTime fromString: '2023-09-05 10:45') date . "Tuesday"
	course := self data schools first classGroups first courses first.
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

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:18:06 pm (UTC)'!
testFutureDatesNoCourseThisDay
	| course date futureDates| 
	date := (DateAndTime fromString: '2023-09-12 10:45') date . "Tuesday"
	course := self data schools first classGroups first courses third.
	futureDates := course next: 5 courseHoursAfter: date.
	"Should be each Monday , time slot: P7 "
	self assert: futureDates size = 5.
	self assert: futureDates first  second = '2023-09-18' asDate.
	self assert: futureDates second  second = '2023-09-25' asDate.
	self assert: futureDates third  second = '2023-10-2' asDate.
	self assert: futureDates fourth  second = '2023-10-9' asDate.
	self assert: futureDates fifth  second = '2023-10-16' asDate.
	
	self assert: futureDates third first dayOfWeek= 1 .
	self assert: futureDates third first timeSlots first = 'P7 13:35 14:20' asTimeSlot.
! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:18:11 pm (UTC)'!
testIsDuring
	| courseHours classGroup dateAndTime | 
	classGroup := self data schools first classGroups first.
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

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:19:31 pm (UTC)'!
testNextCourseHourAfter
	| nextCourse dateAndTime | 
	dateAndTime := DateAndTime fromString: '2023-09-11 9:00'. "Monday"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	"Should be: next day, time slots: P4 P5 "
	self assert: nextCourse second = '2023-09-12' asDate.
	self assert: nextCourse first room = '123' .
	self assert: nextCourse first dayOfWeek= 2 .
	self assert: nextCourse first timeSlots first = 'P4 10:25 11:10' asTimeSlot.
	self assert: nextCourse first timeSlots second = 'P5 11:15 12:00' asTimeSlot.
	""
	dateAndTime := DateAndTime fromString: '2023-09-12 9:00'. "Tuesday, no course at this time"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	self assert: nextCourse isNil.
	""
	dateAndTime := DateAndTime fromString: '2023-09-12 11:12'.
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	"Should be: two days later, time slots: P7 "
	self assert: nextCourse second = '2023-09-14' asDate.
	self assert: nextCourse first dayOfWeek= 4 .
	self assert: nextCourse first timeSlots first = 'P7 13:35 14:20' asTimeSlot.
	""
	dateAndTime := DateAndTime fromString: '2023-09-15 16:01'. "Friday"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	" Should be next monday, time slot P2 "
	self assert: nextCourse second = '2023-09-18' asDate.
	self assert: nextCourse first dayOfWeek= 1 .
	self assert: nextCourse first timeSlots first = 'P2 8:35 9:20' asTimeSlot.
! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:18:38 pm (UTC)'!
testNextCourseHourAfterWithDaysOff
	| nextCourse dateAndTime | 
	dateAndTime := DateAndTime fromString: '2023-09-05 10:45'. "Tuesday"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	"Should be Friday (Wednesday no course, Thursday day off), time slot: P9 "
	self assert: nextCourse second = '2023-09-8' asDate.
	self assert: nextCourse first room = '123' .
	self assert: nextCourse first dayOfWeek= 5 .
	self assert: nextCourse first timeSlots first = 'P9 15:25 16:10' asTimeSlot.

	dateAndTime := DateAndTime fromString: '2023-10-20 16:00'. "Friday, before 1 week holiday"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	"Should be Monday, one week later"
	self assert: nextCourse second = '2023-10-30' asDate.
	
	dateAndTime := DateAndTime fromString: '2024-5-7 11:00'. "Tuesday"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	"Should be Monday, next week"
	self assert: nextCourse second = '2024-5-13' asDate.
	
	dateAndTime := DateAndTime fromString: '2024-6-28 16:00'. "Friday, end of school"
	nextCourse := domain nextCourseHourAfter: dateAndTime.
	"Should be nil"
	self assert: nextCourse isNil
! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:18:46 pm (UTC)'!
testSchoolsExist
	self assert: self data schools notEmpty.
	self assert: (self data schools anySatisfy: [:aSchool | aSchool schoolName = 'CO Foron'])! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 14/Sep/2023, 1:54:42 pm (UTC)'!
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

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 14/Sep/2023, 1:42:10 pm (UTC)'!
testTimeSlotInstance
	| t | 
	t := 'P4 10:05 11:30' asTimeSlot.
	self assert: t slotName equals: 'P4'.
	self assert: t start equals: (Time fromString: '10:05').
	self assert: t end equals: (Time fromString: '11:30')! !

!DyboTestCase methodsFor: 'testing' stamp: 'hlsf 5/Dec/2024, 9:18:53 pm (UTC)'!
testTimeSlotsOrder
	| t | 
	t := self data schools first timeSlots.
	self assert: t first slotName equals: 'P1'.
	self assert: t third slotName equals: 'P3'.
	self assert: t last slotName equals: 'P9'! !

!DyboTestCase methodsFor: 'as yet unclassified' stamp: 'hlsf 5/Dec/2024, 9:15:53 pm (UTC)'!
data
	^ domain userData ! !

!DyboTestCase class methodsFor: 'as yet unclassified' stamp: 'hlsf 6/Nov/2024, 5:12:53 pm (UTC)'!
resources
	^{DyboTestResource }! !

!DyboTestCase class methodsFor: 'nil' stamp: 'hlsf 28/Sep/2023, 10:52:19 am (UTC)'!
tearDownResources
	self halt! !

!DyboTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 28/Oct/2024, 8:23:00 pm (UTC)'!
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
		
	course := DyCourse subject: 'IOSP' in: group.
	group courses add: course.
	course courseHours
		add: ('123 1 P7' asCourseHourIn: course).
		
	^ group! !

!DyboTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 24/Sep/2023, 12:04:47 pm (UTC)'!
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

!DyboTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 23/Sep/2023, 8:57:04 am (UTC)'!
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

!DyboTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 17/Apr/2026, 10:22:22 am (UTC)'!
setUp
	self data user: (DyTeacher new lastName: 'Dupont'; firstName: 'Eric').
	self setUpAgenda.
	self data schools add: (self schoolA owner: self data; yourself)! !

!DyboTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 5/Dec/2024, 9:11:39 pm (UTC)'!
setUpAgenda
	self data agenda
		start: '2023-08-21' asDate;
		end: '2024-06-28' asDate.
	self data agenda daysOff addAll: self daysOff ! !

!DyboTestResource methodsFor: 'setUp/tearDown' stamp: 'hlsf 17/Apr/2026, 10:22:13 am (UTC)'!
tearDown
	DyUserData reset! !

!DyboTestResource methodsFor: 'testing' stamp: 'hlsf 17/Apr/2026, 10:22:57 am (UTC)'!
isAvailable 
	^ false! !

!DyboTestResource methodsFor: 'accessing' stamp: 'hlsf 17/Apr/2026, 10:20:11 am (UTC)'!
data
	^ DyUserData current! !

!DyboTestResource class methodsFor: 'testing' stamp: 'hlsf 28/Sep/2023, 10:28:49 am (UTC)'!
isAvailable
	^ true! !

!Object methodsFor: '*Dybo-object serialization' stamp: 'hlsf 18/Dec/2024, 7:42:12 pm (UTC)'!
backupThenNilAttributes
"Make a backup of unsaved attributed then Nil-ified them.
Return the backup "
	| backup |
	backup := self unsavedAttributes asOrderedCollection collect: [:each | 
		self instVarNamed: each].
	self unsavedAttributes do: [:attr | 	self instVarNamed: attr put: nil].
	^ backup! !

!Object methodsFor: '*Dybo' stamp: 'hlsf 28/May/2026, 7:34:21 pm (UTC)'!
dyboUser
	^ DyUserData current user printString! !

!Object methodsFor: '*Dybo' stamp: 'hlsf 20/Aug/2023, 2:05:49 pm (UTC)'!
registerEvents! !

!Object methodsFor: '*Dybo-object serialization' stamp: 'hlsf 18/Dec/2024, 7:43:17 pm (UTC)'!
restoreAttributes: backup
"Restore the unsaved attributes from a backup collection "
	self unsavedAttributes withIndexDo: [:attr :index | 		
		self instVarNamed: attr put: (backup at: index)]! !

!Object methodsFor: '*Dybo-object serialization' stamp: 'hlsf 18/Dec/2024, 7:43:56 pm (UTC)'!
unsavedAttributes
"In the context for save in a DataStream, return a symbol collection of unsaved attributes"
	^ #()! !

!Date methodsFor: '*Dybo-printing' stamp: 'hlsf 29/Jul/2023, 1:51:19 pm (UTC)'!
ddmmyy
	^ self printFormat: #(1 2 3 $/ 1 2 1)! !

!Date methodsFor: '*Dybo-printing' stamp: 'hlsf 29/Jul/2023, 1:48:49 pm (UTC)'!
ddmmyyyy
	^ self printFormat: #(1 2 3 $/ 1 1 1)! !

!String methodsFor: '*Dybo' stamp: 'hlsf 13/Sep/2023, 9:17:33 pm (UTC)'!
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

!String methodsFor: '*Dybo' stamp: 'hlsf 13/Sep/2023, 7:51:32 pm (UTC)'!
asTimeSlot
| elements|
	elements := self substrings.
	^ DyTimeSlot new ::
		slotName: elements first;
		start: (Time fromString: elements second);
		end: (Time fromString: elements third)! !

!Morph methodsFor: '*Dybo' stamp: 'hlsf 26/Feb/2026, 9:09:19 am (UTC)'!
isStepping
	^ self world ifNotNil: [ :w | w isStepping: self]! !

!LinearLayoutMorph methodsFor: '*Dybo' stamp: 'hlsf 27/May/2026, 7:29:11 pm (UTC)'!
replaceView: aPluggablePane byView: aLinearLayoutMorph 
" Replace a view in the pane with another viewer and shrink the panel "
	aPluggablePane removeAllActions .
	self replaceSubmorph: aPluggablePane by: aLinearLayoutMorph .
	self morphExtent: self minimumExtent.
	self adoptWidgetsColor: self defaultBorderColor ! !
