Class {
	#name : #FinishedState,
	#superclass : #ToDoListState,
	#category : #ToDoList
}

{ #category : #initialization }
FinishedState >> addComment: aComment [

]

{ #category : #initialization }
FinishedState >> workedTime [ 
^ (toDoList startTime ) - (toDoList endTime )
]
