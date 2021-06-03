Class {
	#name : #ToDoListState,
	#superclass : #Object,
	#instVars : [
		'toDoList'
	],
	#category : #ToDoList
}

{ #category : #initialization }
ToDoListState >> addComment: aComment for:aToDoList [
	aToDoList addCommentInToDoList: aComment
]

{ #category : #initialization }
ToDoListState >> finish: aToDoList [
	
]

{ #category : #accessing }
ToDoListState >> start: aToDoLit [
]

{ #category : #accessing }
ToDoListState >> togglePause: aToDoList [
	self
		error: 'El objeto ToDoItem no se encuentra en pause o in-progress'
]

{ #category : #initialization }
ToDoListState >> workedTime: aToDoList [
	^ self subclassResponsibility
]
