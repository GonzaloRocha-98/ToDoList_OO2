Class {
	#name : #FinishedState,
	#superclass : #ToDoListState,
	#instVars : [
		'endTime'
	],
	#category : #ToDoList
}

{ #category : #initialization }
FinishedState >> addComment: aComment for: aToDoList [
	
]

{ #category : #initialization }
FinishedState >> initialize [
endTime:= DateAndTime now.
]

{ #category : #initialization }
FinishedState >> workedTime: aToDoList [
	^ endTime - aToDoList startTime
]
