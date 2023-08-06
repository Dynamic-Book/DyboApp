**The Dynabook App**

> The cashier register of education


# Introduction

The cashier register is a boring computer designed for efficiency. The
Dynabook, both software and hardware, wants to bring this efficiency
to teachers and students to manage their job of teaching and learning.

![A closed Dynabook](images/image2-sm.png)

The Dynabook App is the main user application of the Dynabook
device. It is through this app that teachers and students interact the
most. Its features are interconnected to maximize user comfort and to
save time. It anticipates the needs of the user according to their
location and time of use, at home, school, in which class, and with
which students.

The pedagogical documents are based on hand annotated pdf documents
(with a stylus) and interactive Morphs plugged in when needed. These
documents are organized in topics and binders. The plugged Morphs are
retrieved from existing libraries or user coded, both are Smalltalk
written.  The administrative contents are organized in objects
described in the Objects chapter, Administrative section. The
pedagogical objects are described in the Pedagogical and Document
sections.

## Licensing

Copyright Hilaire Fernandes 2023

## Collaboration

The domain of development is vast, both in software and hardware
designs. To develop the project, we want to encourage world wide
collaborations with private and public institutions, educational
institutions, not limited to, in business, design, pedagogy, hardware,
management, software.

# Business Objects

Describe the objects involved in the user activities and their
relations. They are necessary to adapt to the activities the user
(learner or educator) needs to conduct.

![Business objects diagram](images/image16.png)

## Administrative

These are the objects describing the pedagogical management, not the
pedagogical content, but the administrative facets of the teacher and
student occupation.

**App**

* user (Person)
* schools (1st school of the collection is the default one if required)
* agenda

**School**

Description of the user's educational institutions. Possibly several
per user.

* school name
* others, free field
* time slots
* classes

There is a default school establishment per user application, the 1st
one in the schools’ App collection attribute. Put together the courses
collection of the schools defines the schedule of the user (teacher or
student).

**Time slot**

Describe the organization of the teaching periods in a school. A
description per establishment is possible or for all of the user's
establishments when they share the same hourly organization. There are
generally 10 time slots (Geneva).

* name of the period (P1, P2, or H1, H2, etc.)
* start time
* end time

**Course hour**

Describes one or more contiguous teaching periods.

* room
* day of the week
* time slots

**Course**

It is useful for the teacher and student to describe all of their
courses.

* subject (the taught subject name)
* distinctive attributes (color or other)
* teacher (person type), relevant for student user only
* course hours
* binder

**ClassGroup**

It describes a class: list of students, taught courses.

* class number
* head teacher(s) (person(s))
* students (persons)
* courses

**Person**

In the Person hierarchy:

* last name
* first names
* email address

There are two types of people in this hierarchy, teacher and student.

**Teacher**

Described in the school instances

**Student**

Described in the school instances

## Calendar

**Schedule**

Informs about the schedule of the teacher or student. The schedule is
automatically established from the Courses data. It is therefore not a
set of data but an object capable of extracting this schedule
information. It provides an interface to respond to queries like "What
are the next periods of this course?"

**Agenda**

The place to record teacher assignments (tasks. It follows the user
times slots as:

* start date of the school year
* end date
* days off, a collection of Timespan
* tasks (homework)

**Task**

Describe a task (homework) for a given course, the related course is
determined given the time slot and date.

* date
* time slot
* task

## Pedagogical

These objects describe where and how the pedagogical contents are
organized.

**Binder**

A binder contains the pedagogical materials related to a given course. 

* last (the last edited document)
* resources (collection of associated resources as textbook and workbook)
* topics

**Topic**

* title
* documents

# Knowledge Objects

How can the educator represent, describe and modelise knowledge? How
can she share the represented knowledge with the learner? How can she
assess the learner's knowledge?

How can the learner experiment and capture knowledge? How can she
share her understanding with others? How can she...

## Documents

The content of the Dynabook is organized in interactive document
objects.

![A document with live objects annotated](images/image15.png)

**Document**

It is the root of a tree of Morphs. In a document, diversified Morphs
can be inserted including Dynamic Media described with Smalltalk
code. The document is organized in disjoint pages:

* pages

**Page**

This Morph is a unit of a Document. In a page the user can insert kind
of PlacedMorph (a Morph with a location)

**Paper**

An object for handwriting. It adds a layer on top of a target Morph
(Page, PDFMorph, DrGeoView, etc.)  the user hand writes over. The
target morph and the hand strokes are both attached to the paper morph
object which itself is attached to a page.

Below, samples of preliminary works on the paper morph handwriting:

![Handwritten text](images/image8.png)

![Handwritten text](images/image7.png)

![Handwritten text](images/image9.png)

https://mamot.fr/system/media_attachments/files/110/129/414/451/277/255/original/c675cb84990e1108.mp4

## Storage

The storage on disk is organized in folders, sub-folders and
objects. For fast iterations objects are saved as ReferenceStream
and/or SmartReferenceStream. A more durable file format could be
decided later once the overall model stabilizes (Sqlite, XML,etc).

# GUI Layout

Describe GUI layouts and flows between the different parts of the
Dynabook app.

## Start Page

![Start page](images/image11.png)

The **Start page** always shows a list of recent activities. There are
the edited documents and the tasks. These items are sorted according
to the time of edition of the documents and the due date of the
tasks. Various **Filters** can be applied to narrow the list or to
sort differently.

A click on an item opens the document or the task page. The top bar
and its buttons Start, Agenda, Binder and Preferences are always
visible all along the workflow in the Dynabook app.

## Task Page

![Task page](images/image4.png)

In the task page, the user quickly adds a task for the next
course. The Dynabook tries to guess the class, the day and the period
according to the current date and time. If Dynabook guessing is wrong,
it can be adjusted from the drop down lists.

The task can be handwritten, so the user can easily draw some
sketches.  On the bottom a list of the forthcoming tasks the user can
open for further details. A click on the Task button returns to the
previous task page.

## Binder

![Binder page](images/image3.png)

From the binder, the user finds the taught classes (teacher) or the
attended courses (student). The documents in each binder are organized
in topics, freely labeled. Examples of topics can represent groups of
contents as ‘Theory’, ‘Exercises’, ‘Evaluation’ or taught topic as
‘Decimal number’, ‘Triangle geometry’, ‘Pythagore’.

Each class/course (1035 in the sketch) is a folder in the OS file
system. Each topic is also a folder in the class/course folder.

The Dynabook tries to guess the appropriate class/subject (1035 in the
sketch) and topic to present to the user when the binder is
opened. The guess is based on the current time of the day, the user
schedule and the last edited documents. If the guess is not
appropriate, the user can adjust the class/subject and the topic from
the dropdown lists.

Below a mini view list from the recent documents in the selected
class/subject and topic is presented. A click in one of these mini
views opens the document editor. From the ‘Recent Documents’ panel,
the user can create a new document and import a pdf document.

## Document Editor

In the document editor, the user can annotate imported PDF
documents. On the top of its view, a horizontal toolbar gives access
to the essential tools : pen, eraser, undo/redo operation and move
action. At the right and the bottom of the view, there are wheel
widgets to zoom in/out and to move in the ox and oy directions of the
document. At the bottom, a horizontal status bar gives information on
the current user tool and status.

Additional tools are invoked from the contextual circular toolbar and
its circular sub-toolbars.

## Preferences Editor

![Business objects editor](images/image5.png)

In the preference editor, the user browses in the administrative data
necessary to the application, to meaningfully present the information
to its user.

The user navigates the data with breadcrumbs starting with the top
level ‘Dynabook’ object. From there she navigates the interdependent
objects presented in panels with editable fields for single instance
objects and decorated panels for collection of instances. The
pedagogical documents associated with these objects are discarded by
the Preference editor.

Selecting the ‘Paul’ user presents its information, there is a ‘Save’
button to save editing of the three text fields. In the ‘Classes’
decorated panel, selecting ‘1035’, then the ‘edit’ quick button (the
second one) leads to the ‘1035’ object. Then the navigation can
continue to the ‘Mathematic’ course and so on.

![Flow of the business objects editor](images/image17.png)

# UI Development

## Widgets

A set of widgets to develop.

**DecoratedPluggableMorph**

![Decorated panel](images/image10.png)

This widget, a sort of **decorated panel**, presents content
surrounded with a line, titled with a label and an optional collection
of quick action buttons.

It is a kind of PluggableMorph, therefore with a **model**. Its
additional attributes are **label** (a Text object) and
**quickButtons**, a collection of buttons. Should the button aspect be
defined in this class is still subject to consideration. Nevertheless
the height of the buttons should be normalized and fixed depending on
the label height.

The label informs the user about the presented contents, the quick
buttons perform actions on the model. Possible actions are creating
and importing content.

Examples of use cases are the ‘Recent Documents’, ‘Recent Activities’
and ‘Forthcoming Tasks’ views presented in the previous sketches.

Other use cases is to view and edit a collection of objects of the
same nature. For example editing the collection of time slots or
subjects in a School instance. The scroller shows a list of selectable
time slots and the quick buttons present the ‘add’, ‘edit’ and
‘delete’ operations on the collections and its items.

**PreviewMorph**

![Preview morph](images/image14.png)

This morph presents the preview of a file on disk. The name of the
file is presented at its button with an optional collection of quick
action buttons.

It is a kind of ImageMorph, it comes with an **image** attribute
(instance of Form) and supplementary attributes **file** and
**selection**. It triggers the events **#selected** and
**#doubleClicked** when it is selected and double-clicked. Actions
related to the quick buttons are handled at the level of the object
instantiating the preview morphs.

**Breadcrumbs**

A widget with a main view in its bottom and top navigation bar. It is
used to browse the administrative objects, both for viewing and to
edition. Below, at the left a view of a school object, at the right
its edition.

![Breadcrumb of the business objects](images/image1.png)

![Breadcrumb of the business objects](images/image13.png)

# Hardware

## Concept

![Dynabook concept, laptop mode](images/image18.png)

![Dynabook concept, notebook mode](images/image6.png)


# Annexes

## A1. Development schedule

A mere schedule to develop and to test iteratively. It is in
chronological order, however the points overlap.

* Develop the Dynabook app
* Test Dynabook app in school and iterate with the development (1 or 2
  users)
* Develop hardware prototype with existing hardware
* Develop Dynabook operating system
* Test Dynabook app in school and iterate with the development (tenth
  of users)
* Test Dynabook in school and iterate on the hardware and software (1
  or 2 users)
* Test Dynabook hardware and software with one classroom (30 users,
  students and teachers)

## A2. Principles

To have a lot of systems for the users to experiment with.

Set the things simple enough so you can iterate often for a small
additional cost.

GUI design principle : **Doing** (body centered) with **Images**
(visually centered) makes **Symbols** (symbolically centered).

Touching is **grounding**, seeing is **recognizing**, language is
**understanding**.

Bent the GUI to the task the user needs to conduct.

## A3. People to contact

* Caula, David (imppao), graphisme
* Dickey, Ken (ken.dickey@whidbey.com), Smalltalker
* Goldberg, Adele (), Smalltalk author, educator
* Lup Yuen Lee, (@lupyuen@qoto.org), Pine phone hardware
* MNT Research, CEO (@mntmn@mastodon.social), open hardware laptop
* Oberson, Paul, SEM prospective
* Pettiaux, Nicolas (@npettiaux@mamot.fr), advocacy
* Vuletich, Juan (juan@cuis.st), Cuis-Smalltalk architect

## A4. Related projects

Related project to observe, to learn from, to collaborate with.

* MNT Research (https://mntre.com) , open hardware laptop

## A5. Further readings

* Be a Geometer, dynabook, https://blog.drgeo.eu/search/label/dynabook
* 
