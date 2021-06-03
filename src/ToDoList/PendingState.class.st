Class {
	#name : #PendingState,
	#superclass : #ToDoListState,
	#category : #ToDoList
}

{ #category : #accessing }
PendingState >> start:aToDoList [
	aToDoList state: (InProgressState new).
	aToDoList startTime: DateAndTime now
]

{ #category : #initialization }
PendingState >> workedTime: aToDoList [
	self
		error: 'El objeto ToDoItem aun se encuentra en estado pendiente.'
]
