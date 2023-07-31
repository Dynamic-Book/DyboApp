'From Cuis 6.0 [latest update: #5958] on 31 July 2023 at 11:15:00 am'!
'Description '!
!provides: 'Dyna' 1 49!
!requires: 'Goodies' 1 10 nil!
!requires: 'UI-Panel' 1 74 nil!
!requires: 'UI-Mold' 1 10 nil!
!requires: 'Neo-CSV-Core' 1 2 nil!
SystemOrganization addCategory: #Dyna!
SystemOrganization addCategory: 'Dyna-System'!
SystemOrganization addCategory: #'Dyna-Core'!
SystemOrganization addCategory: #'Dyna-UI'!


!classDefinition: #DyBPlatform category: 'Dyna-System'!
Object subclass: #DyBPlatform
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-System'!
!classDefinition: 'DyBPlatform class' category: 'Dyna-System'!
DyBPlatform class
	instanceVariableNames: ''!

!classDefinition: #DyBAgenda category: #'Dyna-Core'!
Object subclass: #DyBAgenda
	instanceVariableNames: 'start end daysOff assignments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBAgenda class' category: #'Dyna-Core'!
DyBAgenda class
	instanceVariableNames: ''!

!classDefinition: #DyBAssignment category: #'Dyna-Core'!
Object subclass: #DyBAssignment
	instanceVariableNames: 'date timeSlot task'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBAssignment class' category: #'Dyna-Core'!
DyBAssignment class
	instanceVariableNames: ''!

!classDefinition: #DyBClassGroup category: #'Dyna-Core'!
Object subclass: #DyBClassGroup
	instanceVariableNames: 'number headTeacher students courses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBClassGroup class' category: #'Dyna-Core'!
DyBClassGroup class
	instanceVariableNames: ''!

!classDefinition: #DyBCourse category: #'Dyna-Core'!
Object subclass: #DyBCourse
	instanceVariableNames: 'subject color teacher courseHours binder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBCourse class' category: #'Dyna-Core'!
DyBCourse class
	instanceVariableNames: ''!

!classDefinition: #DyBCourseHour category: #'Dyna-Core'!
Object subclass: #DyBCourseHour
	instanceVariableNames: 'room dayOfWeek timeSlots'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBCourseHour class' category: #'Dyna-Core'!
DyBCourseHour class
	instanceVariableNames: ''!

!classDefinition: #DyBData category: #'Dyna-Core'!
Object subclass: #DyBData
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBData class' category: #'Dyna-Core'!
DyBData class
	instanceVariableNames: ''!

!classDefinition: #DyBDayInterval category: #'Dyna-Core'!
Object subclass: #DyBDayInterval
	instanceVariableNames: 'start end'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBDayInterval class' category: #'Dyna-Core'!
DyBDayInterval class
	instanceVariableNames: ''!

!classDefinition: #DyBPerson category: #'Dyna-Core'!
Object subclass: #DyBPerson
	instanceVariableNames: 'lastName firstName email'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBPerson class' category: #'Dyna-Core'!
DyBPerson class
	instanceVariableNames: ''!

!classDefinition: #DyBStudent category: #'Dyna-Core'!
DyBPerson subclass: #DyBStudent
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBStudent class' category: #'Dyna-Core'!
DyBStudent class
	instanceVariableNames: ''!

!classDefinition: #DyBTeacher category: #'Dyna-Core'!
DyBPerson subclass: #DyBTeacher
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBTeacher class' category: #'Dyna-Core'!
DyBTeacher class
	instanceVariableNames: ''!

!classDefinition: #DyBSchool category: #'Dyna-Core'!
Object subclass: #DyBSchool
	instanceVariableNames: 'name phone email timeSlots classGroups'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBSchool class' category: #'Dyna-Core'!
DyBSchool class
	instanceVariableNames: ''!

!classDefinition: #DyBSubject category: #'Dyna-Core'!
Object subclass: #DyBSubject
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBSubject class' category: #'Dyna-Core'!
DyBSubject class
	instanceVariableNames: ''!

!classDefinition: #DyBTimeSlot category: #'Dyna-Core'!
Object subclass: #DyBTimeSlot
	instanceVariableNames: 'name startTime endTime'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBTimeSlot class' category: #'Dyna-Core'!
DyBTimeSlot class
	instanceVariableNames: ''!

!classDefinition: #DyBUserData category: #'Dyna-Core'!
Object subclass: #DyBUserData
	instanceVariableNames: 'user schools agenda'
	classVariableNames: 'Current'
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBUserData class' category: #'Dyna-Core'!
DyBUserData class
	instanceVariableNames: ''!

!classDefinition: #DyBinder category: #'Dyna-Core'!
Object subclass: #DyBinder
	instanceVariableNames: 'topics last resources'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyBinder class' category: #'Dyna-Core'!
DyBinder class
	instanceVariableNames: ''!

!classDefinition: #DyTopic category: #'Dyna-Core'!
Object subclass: #DyTopic
	instanceVariableNames: 'title color documents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-Core'!
!classDefinition: 'DyTopic class' category: #'Dyna-Core'!
DyTopic class
	instanceVariableNames: ''!

!classDefinition: #DyBEditorVisitor category: #'Dyna-UI'!
Object subclass: #DyBEditorVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-UI'!
!classDefinition: 'DyBEditorVisitor class' category: #'Dyna-UI'!
DyBEditorVisitor class
	instanceVariableNames: ''!

!classDefinition: #DyBViewerVisitor category: #'Dyna-UI'!
Object subclass: #DyBViewerVisitor
	instanceVariableNames: 'visitedModel'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Dyna-UI'!
!classDefinition: 'DyBViewerVisitor class' category: #'Dyna-UI'!
DyBViewerVisitor class
	instanceVariableNames: ''!


!DyBAgenda commentStamp: 'hlsf 7/28/2023 19:46:23' prior: 0!
The place to record teacher/student assignments or other events. It follows the user times slots as described in its related school instances:
- start, a Date first day of school
- end, a Date last day of school
- daysOff: sorted collection of 2-array (start-end days off)
!

!DyBClassGroup commentStamp: '<historical>' prior: 0!
It describes a class: its number, the list of its students, taught courses, etc.
!

!DyBCourse commentStamp: 'hlsf 7/3/2023 11:30:49' prior: 0!
I describe a course of a teacher or a course attended by a student:
- subject: the taught topic (Math, History,...)
- color: distinctive color of the course
- courseHours: a collection of course hour describing the teaching period
- binder: a holder of the pedagogical documents!

!DyBCourseHour commentStamp: '<historical>' prior: 0!
Describes one or more contiguous teaching periods.!

!DyBData commentStamp: '<historical>' prior: 0!
An helper class to provide static data!

!DyBDayInterval commentStamp: '<historical>' prior: 0!
I represent an interval of days!

!DyBSchool commentStamp: '<historical>' prior: 0!
Description of the user's educational institutions. Possibly several per user.
!

!DyBTimeSlot commentStamp: '<historical>' prior: 0!
Describe the organization of the teaching periods in a school. There are generally 10 time slots per school.
Example of a time slot: P2, 9:25am, 10:10am!

!DyBUserData commentStamp: '<historical>' prior: 0!
I am a Singleton, the root of the user data, both administrative and pedagogical.
- user: a teacher or student 
- schools: collection of schools the student is enrolled in or the teacher teaches in
- agenda of the user!

!DyBinder commentStamp: '<historical>' prior: 0!
A binder contains the pedagogical materials related to a given course. 
!

!DyTopic commentStamp: '<historical>' prior: 0!
Pedagogical document grouped in one topic.!

!DyBEditorVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide an editor!

!DyBViewerVisitor commentStamp: '<historical>' prior: 0!
I visit the model of user data to provide a viewer linked to an editor.!

!DyBAgenda methodsFor: 'initialization' stamp: 'hlsf 7/29/2023 16:36:04'!
initialize
	super initialize.
	assignments := OrderedCollection new.
	daysOff := SortedCollection new.! !

!DyBAgenda methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 00:50:25'!
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

!DyBAgenda methodsFor: 'visiting' stamp: 'hlsf 7/28/2023 18:31:24'!
accept: aVisitor
	^ aVisitor visitAgenda: self! !

!DyBAgenda methodsFor: 'printing' stamp: 'hlsf 7/30/2023 18:09:47'!
printOn: stream
	start 
		ifNotNil: [ 	stream nextPutAll: 
			('{1} to {2}' translated format: 
				{start ddmmyyyy . end ddmmyyyy }) 		] 
		ifNil: [stream nextPutAll: 'Unspecified agenda' translated]! !

!DyBAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:09:53'!
daysOff
	^ daysOff ! !

!DyBAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:23:47'!
end
	^ end ! !

!DyBAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:27:11'!
end: aDate
	end := aDate ! !

!DyBAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:23:42'!
start
	^ start! !

!DyBAgenda methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 16:27:23'!
start: aDate
	start := 	aDate ! !

!DyBClassGroup methodsFor: 'user interface' stamp: 'hlsf 6/30/2023 21:15:15'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Number' translated;
		on: #number of: self;
		beRequired.
	^ mold! !

!DyBClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 22:01:14'!
courses
	^ courses ! !

!DyBClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 22:01:09'!
headTeacher
	^ headTeacher ! !

!DyBClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/4/2023 18:12:55'!
number
	^number! !

!DyBClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/4/2023 18:13:29'!
number: aUnicodeString 
	number := aUnicodeString! !

!DyBClassGroup methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 22:01:20'!
students
	^ students! !

!DyBClassGroup methodsFor: 'printing' stamp: 'hlsf 6/4/2023 18:15:58'!
printOn: str
	number ifNil: [str nextPutAll: 'Unknown class' translated]
		ifNotNil: [	str nextPutAll: number ]! !

!DyBClassGroup methodsFor: 'initialization' stamp: 'hlsf 7/27/2023 00:37:07'!
initialize
	super initialize.
	headTeacher := DyBTeacher new.
	courses := OrderedCollection new.
	students := SortedCollection new! !

!DyBClassGroup methodsFor: 'visiting' stamp: 'hlsf 6/30/2023 22:01:43'!
accept: aVisitor 
	^ aVisitor visitClassGroup: self! !

!DyBClassGroup class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:36:49'!
label
	^ 'class' translated! !

!DyBClassGroup class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:36:59'!
pluralLabel
	^ 'Classes' translated! !

!DyBCourse methodsFor: 'initialization' stamp: 'hlsf 6/19/2023 22:20:34'!
initialize
	super initialize.
	courseHours := OrderedCollection new.
	teacher := DyBTeacher new.! !

!DyBCourse methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 11:30:36'!
mold
	| mold |
	mold := Mold new.
	mold stringField 
		label: 'Subject' translated;
		on: #subject of: self;
		beRequired.
	^ mold! !

!DyBCourse methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 08:52:47'!
courseHours
	^ courseHours ! !

!DyBCourse methodsFor: 'accessing' stamp: 'hlsf 6/19/2023 22:33:42'!
subject
	^subject! !

!DyBCourse methodsFor: 'accessing' stamp: 'hlsf 6/19/2023 22:34:17'!
subject: aUnicodeString 
	subject := aUnicodeString! !

!DyBCourse methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 08:52:52'!
teacher
	^ teacher ! !

!DyBCourse methodsFor: 'printing' stamp: 'hlsf 6/19/2023 22:42:49'!
printOn: aStream
	subject 
		ifNotNil:  [aStream nextPutAll: subject]
		ifNil: [aStream nextPutAll: 'a course' translated]! !

!DyBCourse methodsFor: 'visiting' stamp: 'hlsf 7/1/2023 08:53:53'!
accept: aVisitor
	^ aVisitor visitCourse: self! !

!DyBCourse class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:34:16'!
label
	^  'lesson' translated! !

!DyBCourse class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:33:49'!
pluralLabel
	^  'Lessons' translated! !

!DyBCourseHour methodsFor: 'user interface' stamp: 'hlsf 7/1/2023 18:33:27'!
mold: school
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Room' translated;
		on: #room of: self;
		beRequired.
	mold selectField 
		label: 'Day' translated;
		on: #listIndex of: (ListModel with: DyBData daysOfWeek :: listIndex: dayOfWeek );
		callback: [:val | self dayOfWeek: val];
		beRequired.
	mold selectMultiField 
		label: 'Period(s)' translated;
		on: #selectedIndexes of: (ListMultiModel with: school timeSlots :: selectedIndexes: timeSlots );
		callback: [:val | self timeSlots: val];
		beRequired.
	^ mold! !

!DyBCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:33:27'!
dayOfWeek
	^ dayOfWeek ! !

!DyBCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:34:47'!
dayOfWeek: anInteger
"1 is Monday"
	dayOfWeek := anInteger ! !

!DyBCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:33:12'!
room
	^ room! !

!DyBCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 12:33:00'!
room: aString
	room := aString ! !

!DyBCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 13:28:30'!
timeSlots
	^ timeSlots ! !

!DyBCourseHour methodsFor: 'accessing' stamp: 'hlsf 7/1/2023 13:29:14'!
timeSlots: aCollection
	timeSlots := aCollection ! !

!DyBCourseHour methodsFor: 'visiting' stamp: 'hlsf 7/1/2023 13:08:44'!
accept: aVisitor
	^ aVisitor visitCourseHour: self! !

!DyBCourseHour methodsFor: 'printing' stamp: 'hlsf 7/1/2023 13:21:29'!
printOn: str
	dayOfWeek 
		ifNotNil:  [str nextPutAll: (DyBData daysOfWeek at: dayOfWeek);
				nextPutAll: ' (';
				nextPutAll: room;
				nextPut: $)]
		ifNil: [super printOn: str]! !

!DyBCourseHour methodsFor: 'initialization' stamp: 'hlsf 7/1/2023 18:34:56'!
initialize
	super initialize.
	dayOfWeek := 0.
	timeSlots := OrderedCollection new! !

!DyBCourseHour class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:35:55'!
label
	^ 'period' translated! !

!DyBCourseHour class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:36:05'!
pluralLabel
	^ 'Periods' translated! !

!DyBData class methodsFor: 'as yet unclassified' stamp: 'hlsf 7/1/2023 12:43:42'!
daysOfWeek
	^ Week dayNames collect: [:day | day translated]! !

!DyBDayInterval methodsFor: 'printing' stamp: 'hlsf 7/29/2023 16:31:03'!
printOn: aStream
	start 
		ifNotNil:  [aStream nextPutAll:  start ddmmyy ;
				nextPutAll: ' - ';
				nextPutAll: end ddmmyy .]
		ifNil: [aStream nextPutAll: 'days inteval' translated]! !

!DyBDayInterval methodsFor: 'testing' stamp: 'hlsf 7/29/2023 00:43:52'!
includes: aDay
	^ start = aDay 
	or: [end = aDay 
	or: [start < aDay and: [aDay < end ] ] ]! !

!DyBDayInterval methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 00:38:38'!
end
	^ end! !

!DyBDayInterval methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 00:38:49'!
end: aDate
	end := aDate ! !

!DyBDayInterval methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 00:38:28'!
start
	^ start ! !

!DyBDayInterval methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 00:38:56'!
start: aDate
	start := aDate ! !

!DyBDayInterval methodsFor: 'comparing' stamp: 'hlsf 7/30/2023 18:08:33'!
<= aDayInterval
"Date does not implement <=, dive into its attribute start, a DateAndTime "
	^ start start <= aDayInterval start start! !

!DyBDayInterval methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 16:38:04'!
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
		beRequired.
	^ mold
	! !

!DyBDayInterval class methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 16:18:04'!
label
	^ 'day off' translated! !

!DyBDayInterval class methodsFor: 'user interface' stamp: 'hlsf 7/29/2023 16:24:47'!
pluralLabel
	^ 'Days off' translated! !

!DyBDayInterval class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/29/2023 16:54:46'!
export: daysOff to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(start end);
		addFields: #(start end);
		nextPutAll: daysOff ! !

!DyBDayInterval class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/29/2023 17:01:46'!
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

!DyBPerson methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:30'!
isStudent
	^ false! !

!DyBPerson methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:25'!
isTeacher
	^ false! !

!DyBPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:36:00'!
email
	^ email! !

!DyBPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:49'!
email: aString
	email := 	aString ! !

!DyBPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:38'!
firstName
	^ firstName! !

!DyBPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:31'!
firstName: aString
	firstName := 	aString ! !

!DyBPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:12'!
lastName
	^ lastName ! !

!DyBPerson methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:35:24'!
lastName: aString
	lastName := 	aString ! !

!DyBPerson methodsFor: 'printing' stamp: 'hlsf 7/27/2023 00:51:21'!
printOn: str
	(firstName isNil or: [lastName isNil])
		ifTrue: [str nextPutAll: 'Unknown person' translated]
		ifFalse: [ 
			str nextPutAll: lastName;
			space;
			nextPutAll: firstName]! !

!DyBPerson methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 11:36:22'!
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

!DyBStudent methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:38'!
isStudent
	^ true! !

!DyBStudent methodsFor: 'comparing' stamp: 'hlsf 7/27/2023 00:47:41'!
<= aPerson
	^ lastName < aPerson lastName 
	or: [lastName = aPerson lastName 
		and: [	firstName <= aPerson firstName]
		]! !

!DyBStudent class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:35:08'!
label
	^ 'student' translated! !

!DyBStudent class methodsFor: 'user interface' stamp: 'hlsf 7/15/2023 11:35:30'!
pluralLabel
	^ 'Students' translated! !

!DyBStudent class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/27/2023 00:39:46'!
export: persons to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(firstName lastName email);
		addFields: #(firstName lastName email);
		nextPutAll: persons ! !

!DyBStudent class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/29/2023 16:57:44'!
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

!DyBTeacher methodsFor: 'testing' stamp: 'hlsf 5/23/2023 20:18:52'!
isTeacher
	^ true! !

!DyBTeacher methodsFor: 'visiting' stamp: 'hlsf 6/28/2023 00:18:07'!
accept: aVisitor
	^ aVisitor visitTeacher: self! !

!DyBSchool methodsFor: 'initialization' stamp: 'hlsf 7/15/2023 11:08:40'!
initialize
	super initialize .
	timeSlots := SortedCollection new.
	classGroups := OrderedCollection new! !

!DyBSchool methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 21:49:32'!
classGroups
	^ classGroups ! !

!DyBSchool methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:54:57'!
schoolName
	^ name! !

!DyBSchool methodsFor: 'accessing' stamp: 'hlsf 5/23/2023 20:54:48'!
schoolName: aString
	name := aString ! !

!DyBSchool methodsFor: 'accessing' stamp: 'hlsf 6/30/2023 21:48:48'!
timeSlots
	^ timeSlots ! !

!DyBSchool methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 11:31:58'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'School name' translated;
		on: #schoolName of: self;
		beRequired.
	^ mold! !

!DyBSchool methodsFor: 'printing' stamp: 'hlsf 6/1/2023 19:52:41'!
printOn: str
	name ifNil: [str nextPutAll: 'Unknown school' translated] 
		ifNotNil: [	str nextPutAll: name]! !

!DyBSchool methodsFor: 'visiting' stamp: 'hlsf 6/30/2023 21:49:08'!
accept: aVisitor 
	^ aVisitor visitSchool: self! !

!DyBSchool class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:38:14'!
label
	^ 'school' translated! !

!DyBSchool class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:38:22'!
pluralLabel
	^ 'Schools' translated! !

!DyBSubject methodsFor: 'user interface' stamp: 'hlsf 7/3/2023 10:58:09'!
mold
	| mold |
	mold := Mold new.
	mold stringField
		label: 'Name' translated;
		on: #property of: self;
		beRequired.
	^ mold! !

!DyBSubject methodsFor: 'accessing' stamp: 'hlsf 7/3/2023 10:58:28'!
property
	^ name! !

!DyBSubject methodsFor: 'accessing' stamp: 'hlsf 7/3/2023 10:58:38'!
property: aString
	name := aString ! !

!DyBSubject methodsFor: 'printing' stamp: 'hlsf 7/3/2023 11:00:41'!
printOn: str
	name 
		ifNotNil:  [str nextPutAll: name]
		ifNil: [super printOn: str]! !

!DyBTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 19:58:55'!
end
	^ endTime! !

!DyBTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 20:01:48'!
end: aTime
	endTime := aTime! !

!DyBTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 19:58:11'!
slotName
	^ name! !

!DyBTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 20:02:10'!
slotName: aString
	name := 	aString ! !

!DyBTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 19:56:55'!
start
	^ startTime ! !

!DyBTimeSlot methodsFor: 'accessing' stamp: 'hlsf 5/22/2023 20:01:59'!
start: aTime
	startTime := aTime ! !

!DyBTimeSlot methodsFor: 'printing' stamp: 'hlsf 6/19/2023 21:50:54'!
printOn: aStream
	name ifNil: [ super printOn: aStream ]
		ifNotNil: [	
			aStream nextPutAll: name; 				space.
			startTime print24: true showSeconds: false on: aStream.
			aStream 	nextPut: $-.
			endTime print24: true showSeconds: false on: aStream]! !

!DyBTimeSlot methodsFor: 'user interface' stamp: 'hlsf 6/30/2023 21:15:31'!
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

!DyBTimeSlot methodsFor: 'comparing' stamp: 'hlsf 7/29/2023 16:41:53'!
<= aTimeSlot
	^ startTime < aTimeSlot start or: [endTime < aTimeSlot end]! !

!DyBTimeSlot class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:37:26'!
label
	^ 'time slot' translated! !

!DyBTimeSlot class methodsFor: 'user inteface' stamp: 'hlsf 7/15/2023 11:37:35'!
pluralLabel
	^ 'Time slots' translated! !

!DyBTimeSlot class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/26/2023 13:10:13'!
export: timeSlots to: writeStream
	| writer |
	writer := NeoCSVWriter on: writeStream.
	writer writeHeader: #(slotName start end);
		addFields: #(slotName start end);
		nextPutAll: timeSlots! !

!DyBTimeSlot class methodsFor: 'fileIn/Out' stamp: 'hlsf 7/26/2023 13:09:22'!
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

!DyBUserData methodsFor: 'initialization' stamp: 'hlsf 7/29/2023 15:31:27'!
initialize
	super initialize.
	schools := OrderedCollection new.
	user := DyBTeacher new.
	agenda := DyBAgenda new! !

!DyBUserData methodsFor: 'accessing' stamp: 'hlsf 7/29/2023 15:33:02'!
agenda
	^ agenda ifNil: [agenda := DyBAgenda new]! !

!DyBUserData methodsFor: 'accessing' stamp: 'hlsf 6/25/2023 23:54:13'!
schools
	^ schools ! !

!DyBUserData methodsFor: 'accessing' stamp: 'hlsf 6/25/2023 23:54:03'!
user
	^ user! !

!DyBUserData methodsFor: 'printing' stamp: 'hlsf 6/28/2023 00:09:47'!
printOn: str
	user firstName 
		ifNotNil:  [:firstName | str nextPutAll: ('{1}''s Dynabook' translated format: {firstName})]
		ifNil: [super printOn: str]! !

!DyBUserData methodsFor: 'visiting' stamp: 'hlsf 6/26/2023 21:28:11'!
accept: aVisitor
	^ aVisitor visitUserData: self! !

!DyBUserData class methodsFor: 'accessing' stamp: 'hlsf 7/13/2023 09:42:21'!
current
	^ Current ifNil: [Current := self basicNew initialize]! !

!DyBUserData class methodsFor: 'accessing' stamp: 'hlsf 7/13/2023 09:44:29'!
schoolOf: anObject
"Search the school tree this object belongs to"
	self current  schools do: [:school |			
		(school treePointsTo: anObject			) ifTrue: [^ school] ].
	^ nil! !

!DyBUserData class methodsFor: 'instance creation' stamp: 'hlsf 7/13/2023 09:43:22'!
new
	self error: 'Class ', self name, ' has only one instance'! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/29/2023 16:10:20'!
visitAgenda: agenda
| mold |
	mold := agenda mold.
	mold when: #edited send: #triggerEvent: to: agenda with: #edited.
	^ self newColumnWith: {
		DecoratedPane open: mold newPane label: 'Information' translated.
		self editorsFor: agenda daysOff ofType: DyBDayInterval}! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/15/2023 11:39:35'!
visitClassGroup: class
| mold |
	mold := class mold.
	mold when: #edited send: #triggerEvent: to: class with: #edited.
	^ self newColumnWith: {
		DecoratedPane open: mold newPane label: 'Information'.
		DecoratedPane open: class headTeacher mold newPane label: 'Head teacher' translated.
		self editorsFor: class courses ofType: DyBCourse .
		self editorsFor: class students ofType: DyBStudent }! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/29/2023 16:05:54'!
visitCourse: course 
| mold |
	mold := course mold.
	mold when: #edited send: #triggerEvent: to: course with: #edited.
	^ self newColumnWith: {
		DecoratedPane open: mold newPane label: 'Information' translated.
		self editorsFor: course courseHours ofType: DyBCourseHour .
		DecoratedPane open: course teacher mold newPane label: 'Teacher' translated}! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/2/2023 23:59:42'!
visitCourseHour: courseHour
| mold |
	mold := courseHour mold: (DyBUserData schoolOf: courseHour).
	mold when: #edited send: #triggerEvent: to: courseHour with: #edited.
	^ self newColumnWith: {
		DecoratedPane open: mold newPane label: 'Information' translated }! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/15/2023 11:39:56'!
visitSchool: school 
| mold |
	mold := school mold.
	mold when: #edited send: #triggerEvent: to: school with: #edited.
	^ self newColumnWith: { 
		DecoratedPane open: mold newPane label: 'Information' translated.
		self editorsFor: school classGroups ofType: DyBClassGroup.
		self 	editorsFor: school timeSlots 			ofType: DyBTimeSlot. }! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/12/2023 11:52:24'!
visitTeacher: teacher
| mold |
	mold := teacher mold.
	mold when: #edited send: #triggerEvent: to: teacher with: #edited.
	^ self newColumnWith: {
		DecoratedPane open: mold newPane label: 'Teacher' translated }! !

!DyBEditorVisitor methodsFor: 'visiting' stamp: 'hlsf 7/15/2023 11:40:02'!
visitUserData: userData
| mold |
	mold := userData user mold.
	mold when: #edited send: #triggerEvent: to: userData with: #edited.
	^ self newColumnWith: {
		DecoratedPane open: mold newPane label: 'Owner' translated.
		self editorsFor: userData schools ofType: DyBSchool }! !

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/26/2023 13:14:41'!
editorsFor: aCollection ofType: classModel 
" A decorated editor to edit a collection of models "
	| listMorph quickButtons decoratedModel |
	listMorph := PluggableListMorph 
		model: (ListModel with: aCollection )		
		listGetter: #list 		indexGetter: #listIndex indexSetter: #listIndex:.
	decoratedModel := DecoratedPane open: listMorph label: classModel pluralLabel .
	quickButtons := OrderedCollection new.
	quickButtons add: (PluggableButtonMorph 
		model: self 		stateGetter: nil stateArgument: nil 	action: #quickAdd: 
		actionArgument: (Array with: classModel with: decoratedModel with: listMorph)
		label: nil ::
		icon: Theme current listAddIcon;
		setBalloonText: ('Add a new {1}' translated format: {classModel label});
		yourself).
	quickButtons add: (PluggableButtonMorph 
		model: self 		stateGetter: nil stateArgument: nil 	action: #quickEdit: 
		actionArgument: (Array with: decoratedModel with: listMorph)
		label: nil ::
		icon: Theme current textEditorIcon;
		setBalloonText: ('Edit the selected {1}' translated format: {classModel label});
		yourself).
	quickButtons add: (PluggableButtonMorph 
		model: self 		stateGetter: nil stateArgument: nil 	action: #quickDelete: 
		actionArgument: (Array with: decoratedModel with: listMorph)
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
	decoratedModel quickButtons: quickButtons.
	^ decoratedModel! !

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/3/2023 21:47:18'!
newColumnWith: morphs
| column |
	column := LayoutMorph newColumn 			addMorphs: morphs.
	column morphExtent: column minimumExtent.
	^ column ! !

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/12/2023 11:41:01'!
quickAdd: args
" args is a collection of object to operate the behavior of the quick button, in the following order:
1. the class of the object to instantiate
3. the decorated pane
4. the listMorph
"
 | school objectClass decorator listModel listMorph newObject objectMold objectPane quickButtons |
	objectClass := args first.
	decorator := args second.
	listMorph := args third .
	listModel := listMorph model.
	quickButtons := decorator quickButtons.
	newObject := objectClass new.
	objectMold := (newObject respondsTo: #mold:) 
		ifTrue: [
			school := DyBUserData schoolOf: listModel list.
			school ifNil: [^ self] .
			newObject mold: school] 
		ifFalse: [newObject mold].
	objectPane := objectMold newPane.
	objectPane layoutSpec: LayoutSpec useAll.
	objectPane 
		actionOnAccept: [
			objectMold validate.
			objectMold isValid ifTrue: [
				objectMold save.
				listModel list add: newObject .
				decorator replaceSubmorph: objectPane by: listMorph.
				quickButtons submorphsDo: #lockUnlockMorph.
				listModel changed: #list]					
			];
		actionOnCancel: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/26/2023 13:24:51'!
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
	objectPane := PluggablePane open: [text] view: #value accept:[
		listModel removeSelectedItem.
		decorator replaceSubmorph: objectPane by: listMorph.
		quickButtons submorphsDo: #lockUnlockMorph.
		listModel changed: #list]				.
	objectPane
		actionOnCancel: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	objectPane layoutSpec: LayoutSpec useAll.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/27/2023 01:04:08'!
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
		ifTrue: [listModel selectedItem mold: (DyBUserData schoolOf: listModel list)] 
		ifFalse: [listModel selectedItem mold].
	objectPane := objectMold newPane.
	objectPane layoutSpec: LayoutSpec useAll.
	objectPane 
		actionOnAccept: [
			objectMold validate.
			objectMold isValid ifTrue: [
				objectMold save.
				decorator replaceSubmorph: objectPane by: listMorph.
				quickButtons submorphsDo: #lockUnlockMorph.
				(listModel selectedItem respondsTo: #<=) ifTrue: [
					listModel list reSort].
				listModel changed: #list]					
			];
		actionOnCancel: [
			decorator replaceSubmorph: objectPane by: listMorph.
			quickButtons submorphsDo: #lockUnlockMorph]; 
		buildMorphicWindow.
	decorator replaceSubmorph: listMorph by: objectPane .
	quickButtons submorphsDo: #lockUnlockMorph! !

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/26/2023 13:16:25'!
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

!DyBEditorVisitor methodsFor: 'ui' stamp: 'hlsf 7/26/2023 13:12:40'!
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

!DyBViewerVisitor methodsFor: 'ui' stamp: 'hlsf 6/26/2023 21:29:08'!
paneFor: anObject label: aTitle 
	^self paneFor: anObject label: aTitle browse: true! !

!DyBViewerVisitor methodsFor: 'ui' stamp: 'hlsf 7/1/2023 21:23:29'!
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

!DyBViewerVisitor methodsFor: 'ui' stamp: 'hlsf 7/2/2023 13:03:28'!
plugView: aMorph
" Add an Edit button to this contents "
	| viewer |
	viewer := nil.
	viewer := PluggablePane 
		open: [aMorph] 
		view: #value 
		accept: 	["Edit me" 
			viewer owner 
				replaceView: viewer 
				byView: (visitedModel accept: DyBEditorVisitor new)			]  ::
		acceptLabel: 'Edit' translated;
		buildMorphicWindow ;
		layoutSpec: LayoutSpec useAll;
		yourself.
	^ viewer ! !

!DyBViewerVisitor methodsFor: 'ui' stamp: 'hlsf 7/28/2023 14:33:10'!
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

!DyBViewerVisitor methodsFor: 'ui' stamp: 'hlsf 7/3/2023 12:30:05'!
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

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/29/2023 16:34:57'!
visitAgenda: agenda
	| column |
	visitedModel := agenda .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: agenda			label: 'School year period' translated browse: false);	
		addMorph: (self paneFor: agenda daysOff label: 'Days off' translated browse: false).
	^ self plugView: column! !

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/27/2023 00:52:27'!
visitClassGroup: class
	| column |
	visitedModel := class .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: class headTeacher label: 'Head teacher' translated browse: false);	
		addMorph: (self paneFor: class courses label: 'Lessons' translated);
		addMorph: (self paneFor: class students label: 'Students' translated browse: false).
	^ self plugView: column! !

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/29/2023 16:04:41'!
visitCourse: course
	| column |
	visitedModel := course .
	column := LayoutMorph newColumn.
	column
		addMorph: (self paneFor: course courseHours label: 'Periods' translated);
		addMorph: (self paneFor: course teacher label: 'Teacher' translated browse: false).
	^ self plugView: column! !

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/1/2023 13:30:41'!
visitCourseHour: courseHour
	| column slots|
	visitedModel := courseHour .
	slots := ListMultiModel with: (DyBUserData schoolOf: courseHour) timeSlots ::
		selectedIndexes: courseHour timeSlots.
	column := LayoutMorph newColumn.
	column 	
		addMorph: (self paneFor: slots selectedItems label: 'Period(s)' translated browse: false).
	^ self plugView: column	! !

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/3/2023 15:14:16'!
visitSchool: school
	| column |
	visitedModel := school .
	column := LayoutMorph newColumn.
	column 	
		addMorph: (self paneFor: school classGroups label: 'Classes' translated);
		addMorph: (self paneFor: school timeSlots label: 'Time slots' translated browse: false)		.
	^ self plugView: column	! !

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/3/2023 15:00:42'!
visitTeacher: teacher
	| column |
	visitedModel := teacher .
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: teacher classGroups label: 'Classes ' translated).
	^ self plugView: column! !

!DyBViewerVisitor methodsFor: 'visiting' stamp: 'hlsf 7/30/2023 18:08:50'!
visitUserData: userData
	| column |
	visitedModel := userData.
	column := LayoutMorph newColumn.
	column 	addMorph: (self paneFor: userData schools label: 'Schools' translated);
		addMorph: (self paneFor: userData agenda label: 'Agenda' translated).
	^ self plugView: column! !

!ProtoObject methodsFor: '*Dyna' stamp: 'hlsf 7/1/2023 12:19:17'!
treePointsTo: anObject
" Are my instances and sub instances hold a reference of anObject"
	^ (self statePointsTo: anObject) or: [ |attributesToVisit |
		attributesToVisit := OrderedCollection new.
		1 to: self class instSize do: [:i |
			(self instVarAt: i) isCollection 	ifTrue: [ attributesToVisit addAll: (self instVarAt: i)] ].
		attributesToVisit anySatisfy: [:attribute | 
			attribute == anObject or: [attribute treePointsTo: anObject		] 		] ]! !

!Date methodsFor: '*Dyna-printing' stamp: 'hlsf 7/29/2023 15:51:19'!
ddmmyy
	^ self printFormat: #(1 2 3 $/ 1 2 1)! !

!Date methodsFor: '*Dyna-printing' stamp: 'hlsf 7/29/2023 15:48:49'!
ddmmyyyy
	^ self printFormat: #(1 2 3 $/ 1 1 1)! !
