'From Cuis7.5 [latest update: #7689] on 15 November 2025 at 12:25:27 pm'!
'Description '!
!provides: 'DyboDKM-Physics' 1 0!
SystemOrganization addCategory: #'DyboDKM-Physics'!


!classDefinition: #IdealGasSimulation category: #'DyboDKM-Physics'!
Object subclass: #IdealGasSimulation
	instanceVariableNames: 'molecules walls'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'IdealGasSimulation class' category: #'DyboDKM-Physics'!
IdealGasSimulation class
	instanceVariableNames: ''!

!classDefinition: #Molecule category: #'DyboDKM-Physics'!
Object subclass: #Molecule
	instanceVariableNames: 'weight diameter speed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'Molecule class' category: #'DyboDKM-Physics'!
Molecule class
	instanceVariableNames: ''!

!classDefinition: #Wall category: #'DyboDKM-Physics'!
Object subclass: #Wall
	instanceVariableNames: 'rect'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboDKM-Physics'!
!classDefinition: 'Wall class' category: #'DyboDKM-Physics'!
Wall class
	instanceVariableNames: ''!


!Wall commentStamp: '<historical>' prior: 0!
A rectangular wall describe by a Rectangle object!
