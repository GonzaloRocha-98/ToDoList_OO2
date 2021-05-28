Class {
	#name : #PendingState,
	#superclass : #ToDoListState,
	#category : #ToDoList
}

{ #category : #accessing }
PendingState >> start [
	toDoList state: (InProgressState new: toDoList).
	toDoList startTime: DateAndTime now.
]

{ #category : #initialization }
PendingState >> workedTime [
	self error:'el objeto ToDoItem aun se encuentra en estado pendiente.'

]
