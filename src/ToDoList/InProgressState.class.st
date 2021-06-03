Class {
	#name : #InProgressState,
	#superclass : #StateActive,
	#category : #ToDoList
}

{ #category : #accessing }
InProgressState >> togglePause: aToDoList [
	aToDoList state: (PausedState new)
]
