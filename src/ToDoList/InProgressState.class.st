Class {
	#name : #InProgressState,
	#superclass : #ToDoListState,
	#category : #ToDoList
}

{ #category : #initialization }
InProgressState >> finish [
	toDoList state: (FinishedState new: toDoList).
	toDoList endTime: Date now.
]

{ #category : #accessing }
InProgressState >> togglePause [
	toDoList state: (PausedState new:toDoList )
]

{ #category : #initialization }
InProgressState >> workedTime [
^  (DateAndTime now) - (toDoList startTime)
]
