'From Cuis7.9 [latest update: #8290] on 1 November 2026 at 9:22:39 pm'!
'Description '!
!provides: 'DyboTools-Accessories' '1.0.0'!
SystemOrganization addCategory: #'DyboTools-Accessories'!


!classDefinition: #CurtainMorph category: #'DyboTools-Accessories'!
Morph subclass: #CurtainMorph
	instanceVariableNames: 'color edge occulting'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'DyboTools-Accessories'!
!classDefinition: 'CurtainMorph class' category: #'DyboTools-Accessories'!
CurtainMorph class
	instanceVariableNames: ''!


!CurtainMorph commentStamp: '<historical>' prior: 0!
I am rectangular morph occulting part of a page. I adhere to one edge of the page, my owner.
- edge: a symbol value amoung #(top bottom left right)
- occulting: an integer number in [10 , 100]
- color: color of the curtain!
