Class {
	#name : #Pasta,
	#superclass : #Object,
	#instVars : [
		'quantitat',
		'moneda'
	],
	#category : #Pasta2020
}

{ #category : #'as yet unclassified' }
Pasta class >> moneda: arg1 quantitat: arg2 [
	| tmp2 |
	tmp2 := self new.
	tmp2 moneda: arg1.
	^ tmp2 quantitat: arg2
]

{ #category : #arithmetic }
Pasta >> + arg1 [
	^ self moneda = arg1 moneda
		ifTrue: [ | tmp2 |
			tmp2 := Pasta new.
			tmp2
				moneda: self moneda;
				quantitat: self quantitat + arg1 quantitat ]
		ifFalse: [ self error: 'No puc sumar' ]
]

{ #category : #equality }
Pasta >> = arg1 [
	^ self quantitat = arg1 quantitat and: [ self moneda = arg1 moneda ]
]

{ #category : #accessing }
Pasta >> moneda [
	^ moneda
]

{ #category : #accessing }
Pasta >> moneda: arg1 [
	moneda := arg1
]

{ #category : #accessing }
Pasta >> quantitat [
	^ quantitat
]

{ #category : #accessing }
Pasta >> quantitat: arg1 [
	quantitat := arg1
]
