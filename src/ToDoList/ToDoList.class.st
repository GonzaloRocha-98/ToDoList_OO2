Class {
	#name : #ToDoList,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'startTime',
		'endTime',
		'comments'
	],
	#category : #ToDoList
}

{ #category : #accessing }
ToDoList class >> name: aName [
^ self new initializeWithName:aName
]

{ #category : #accessing }
ToDoList >> addComment: aComment [
	state addComment:aComment 
]

{ #category : #adding }
ToDoList >> addCommentInToDoList: aComment [
	comments add: aComment .
]

{ #category : #accessing }
ToDoList >> endTime [
	^ endTime
]

{ #category : #accessing }
ToDoList >> endTime: anObject [
	endTime := anObject
]

{ #category : #accessing }
ToDoList >> finish [ 
	state finish 
]

{ #category : #initialization }
ToDoList >> initializeWithName: aName [
	name := aName.
	comments := OrderedCollection new
]

{ #category : #initialization }
ToDoList >> start [ 
	state start
]

{ #category : #accessing }
ToDoList >> startTime [
^startTime 
]

{ #category : #accessing }
ToDoList >> startTime: aTime [ 
startTime := aTime.
]

{ #category : #accessing }
ToDoList >> state: aState [
state:= aState
]

{ #category : #accessing }
ToDoList >> togglePause [
	state togglePause
]

{ #category : #accessing }
ToDoList >> workedTime [
	state workedTime
]
