Class {
	#name : #PausedState,
	#superclass : #ToDoListState,
	#category : #ToDoList
}

{ #category : #initialization }
PausedState >> finish [
	toDoList state: (FinishedState new: toDoList).
	toDoList endTime: DateAndTime now.
]

{ #category : #accessing }
PausedState >> togglePause [
	toDoList state: (InProgressState new: toDoList)
]

{ #category : #initialization }
PausedState >> workedTime [
	^ DateAndTime now - toDoList startTime
]
