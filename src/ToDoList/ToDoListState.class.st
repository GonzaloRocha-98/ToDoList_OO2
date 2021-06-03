Class {
	#name : #ToDoListState,
	#superclass : #Object,
	#instVars : [
		'toDoList'
	],
	#category : #ToDoList
}

{ #category : #'instance creation' }
ToDoListState class >> new:aToDoList [
^self new initializeWithToDoList: aToDoList 
]

{ #category : #initialization }
ToDoListState >> addComment: aComment [
	toDoList addCommentInToDoList: aComment
]

{ #category : #initialization }
ToDoListState >> finish [
]

{ #category : #initialization }
ToDoListState >> initializeWithToDoList: aToDoList [
	toDoList := aToDoList 
]

{ #category : #accessing }
ToDoListState >> start [

]

{ #category : #accessing }
ToDoListState >> togglePause [
	self error:'el objeto ToDoItem no se encuentra en pause o in-progress'


]

{ #category : #initialization }
ToDoListState >> workedTime [
	^self subclassResponsibility
]
