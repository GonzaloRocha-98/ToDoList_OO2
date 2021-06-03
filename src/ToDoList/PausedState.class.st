Class {
	#name : #PausedState,
	#superclass : #StateActive,
	#category : #ToDoList
}

{ #category : #accessing }
PausedState >> togglePause: aToDoList [
	aToDoList state: (InProgressState new)
]
