Class {
	#name : #ToDoList,
	#superclass : #Object,
	#instVars : [
		'name',
		'state',
		'startTime',
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
	state addComment: aComment for: self
]

{ #category : #adding }
ToDoList >> addCommentInToDoList: aComment [
	comments add: aComment .
]

{ #category : #accessing }
ToDoList >> comments [
 ^comments
]

{ #category : #accessing }
ToDoList >> finish [
	state finish: self
]

{ #category : #initialization }
ToDoList >> initializeWithName: aName [
	name := aName.
	comments := OrderedCollection new.
	self state: (PendingState new)
]

{ #category : #initialization }
ToDoList >> start [
	state start: self
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
ToDoList >> state [ 
^state
]

{ #category : #accessing }
ToDoList >> state: aState [
state:= aState
]

{ #category : #accessing }
ToDoList >> togglePause [
	state togglePause:self
]

{ #category : #accessing }
ToDoList >> workedTime [
	^ state workedTime: self
]
