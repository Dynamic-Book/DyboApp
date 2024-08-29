'From Cuis7.1 [latest update: #6629] on 29 August 2024 at 11:46:21 am'!
'Description '!
!provides: 'IconsManager' 1 1!
!requires: 'SVG' 1 20 nil!
SystemOrganization addCategory: #IconsManager!


!classDefinition: #IconsManager category: #IconsManager!
Object subclass: #IconsManager
	instanceVariableNames: 'forms path'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IconsManager'!
!classDefinition: 'IconsManager class' category: #IconsManager!
IconsManager class
	instanceVariableNames: ''!


!IconsManager commentStamp: '<historical>' prior: 0!
I load icons from files (both PNG and SVG) and cached them in a dictionary (forms instance variable).
I can manage different size of the same icon. 
When asked for an icon with the message get: #blank32, I will search in the path for blank.svg, fallback to blank.png, then scale at squared size 32.!

!IconsManager methodsFor: 'accessing' stamp: 'hlsf 8/13/2023 16:00:18'!
get: iconSymbolWithSize
" icons get: #blank32 "
	| size |
	(size := iconSymbolWithSize select: [:c | c isDigit ]) 
		ifEmpty: [self error: 'Missing size in icon symbol'].
	^ self 
		get: (iconSymbolWithSize select: [:c | c isLetter ])
		size: size asNumber! !

!IconsManager methodsFor: 'accessing' stamp: 'hlsf 8/13/2023 16:35:39'!
get: icon size: integer
" Search first for SVG icon, then PNG one "
	^ forms 
		at: (icon, integer asString) asSymbol
		ifAbsentPut: [ | file | 
			(file := path // (icon, '.svg')) exists
				ifTrue: [ |svg|
					svg := [SVGMainMorph fromFile: file] 
						on: SVGWarning 
						do: [:warning | warning resume].
					svg imageForm: integer asPoint depth: 32]									
				ifFalse: [(file := path // (icon , '.png')) exists
					ifTrue: [| form |
						form := PNGReadWriter formFromFileEntry: file.
						form width = integer 
							ifTrue: 	[form] 
							ifFalse: [	form magnifyTo: integer asPoint] ]
					ifFalse: [self error: 'Missing icon file ', icon ] ]
			]! !

!IconsManager methodsFor: 'accessing' stamp: 'hlsf 8/13/2023 15:20:42'!
path: iconsDirectoryEntry
	path := iconsDirectoryEntry ! !

!IconsManager methodsFor: 'initialization' stamp: 'hlsf 8/13/2023 16:29:00'!
initialize
	forms := Dictionary new.! !

!IconsManager class methodsFor: 'instance creation' stamp: 'hlsf 8/13/2023 15:37:01'!
path: aDriectoryEntry
	^ self new ::
		path: aDriectoryEntry;
		yourself! !
