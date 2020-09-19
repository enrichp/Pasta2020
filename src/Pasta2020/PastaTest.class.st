Class {
	#name : #PastaTest,
	#superclass : #TestCase,
	#instVars : [
		'eur5',
		'eur10',
		'eur20'
	],
	#category : #Pasta2020
}

{ #category : #initialization }
PastaTest >> setUp [
	eur5 := 5 euro.
	eur10 := 10 euro.
	eur20 := 20 euro
]

{ #category : #tests }
PastaTest >> testIguals [
	| tmp1 |
	self assert: eur5 = eur5.
	tmp1 := self.
	tmp1
		assert: eur10 = 10 euro;
		assert: eur10 ~= eur20
]

{ #category : #tests }
PastaTest >> testSuma [
	| tmp2 |
	self
		assert: eur5 + eur5 = eur10;
		assert: eur20 = (eur10 + eur10).
	tmp2 := Pasta new.
	tmp2 moneda: 'EUR'.
	self
		assert: eur5 + eur10 = (tmp2 quantitat: 15);
		assert: eur5 + eur5 + eur5 + eur5 = eur20
]
