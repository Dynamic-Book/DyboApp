"@title: Inscribed and Circumscribed Circles of a Triangle
@description: Construct a triangle ABC along with its inscribed circle and circumscribed circle using exact geometric constructions.
@category: Geometry
@tags: Triangle ; Inscribed Circle ; Circumscribed Circle
@author: Gemini AI, F H
@class: InteractiveGeometry"

| mySketch a b c triangle sideAB sideBC abBisector bcBisector circumCenter circumcircle bisectorA bisectorB incenter perpLine perpFoot incircle |
mySketch ​ DrGeoSketch new.
mySketch centerTo: 0@0; scale: 25.
mySketch axesOn; gridOn.

"Create the vertices of the triangle"
a ​ (mySketch point: -4@-2) color: Color blue; name: 'A'.
b ​ (mySketch point: 4@-2) color: Color blue; name: 'B'.
c ​ (mySketch point: 0@4) color: Color blue; name: 'C'.

"Define triangle sides"
sideAB ​ mySketch segment: a to: b.
sideBC ​ mySketch segment: b to: c.

"Construct the triangle polygon"
triangle ​ mySketch polygon: {a. b. c}.
triangle color: Color orange; translucent.

"1. CIRCUMSCRIBED CIRCLE"
"Intersection of perpendicular bisectors gives the circumcenter O"
abBisector ​ (mySketch perpendicularBisector: sideAB) dotted.
bcBisector ​ (mySketch perpendicularBisector: sideBC) dotted.
circumCenter ​ mySketch intersectionOf: abBisector and: bcBisector.
circumCenter name: 'O'; color: Color red; round.

"Circumcircle center O passing through vertex A"
circumcircle ​ mySketch circleCenter: circumCenter to: a.
circumcircle color: Color red.

"2. INSCRIBED CIRCLE"
"Intersection of angle bisectors gives the incenter I"
bisectorA ​ (mySketch angleBisectorSummit: a side1: b side2: c) dashed.
bisectorB ​ (mySketch angleBisectorSummit: b side1: a side2: c) dashed.
incenter ​ mySketch intersectionOf: bisectorA and: bisectorB.
incenter name: 'I'; color: Color green; round.

"Find exact tangent point on side AB via perpendicular line from incenter"
perpLine ​ mySketch perpendicular: sideAB at: incenter.
perpFoot ​ mySketch intersectionOf: perpLine and: sideAB.

"Incircle centered at I passing through tangent point on side AB"
incircle ​ mySketch circleCenter: incenter to: perpFoot.
incircle color: Color green.

mySketch view.