Class {
	#name : #StateActive,
	#superclass : #ToDoListState,
	#category : #ToDoList
}

{ #category : #initialization }
StateActive >> finish: aToDoList [
	aToDoList state: FinishedState new.
]

{ #category : #initialization }
StateActive >> workedTime: aToDoList [
	^ DateAndTime now - aToDoList startTime
]
