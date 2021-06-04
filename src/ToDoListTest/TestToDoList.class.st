Class {
	#name : #TestToDoList,
	#superclass : #TestCase,
	#instVars : [
		'item1',
		'comments'
	],
	#category : #ToDoListTest
}

{ #category : #running }
TestToDoList >> setUp [
	comments := OrderedCollection new.
	item1 := ToDoList name: 'item1'
	"Initialized item in Pending state"
]

{ #category : #tests }
TestToDoList >> testAddComment [
	comments := OrderedCollection new.
	item1 addComment: 'Comentario en estado Pending'.
	comments add: 'Comentario en estado Pending'.
	self assert: item1 comments equals: comments.
	item1 start.
	item1 addComment: 'Comentario en estado InProgress'.
	comments add: 'Comentario en estado InProgress'.
	self assert: item1 comments equals: comments.
	item1 togglePause.
	item1 addComment: 'Comentario en estado Paused'.
	comments add: 'Comentario en estado Paused'.
	self assert: item1 comments equals: comments
]

{ #category : #tests }
TestToDoList >> testAddCommentWhenStateIsFinished [
	item1 start.
	item1 finish.
	item1 addComment: 'Comentario en estado Finish'.
	"No se le agrega el comentario a la coleccion comments"
	self assert: item1 comments equals: comments
]

{ #category : #tests }
TestToDoList >> testTogglePauseWhenStateIsFinish [
	self should: [ item1 togglePause ] raise: Error
]

{ #category : #tests }
TestToDoList >> testTogglePauseWhenStateIsPending [
	self should: [ item1 togglePause  ] raise: Error
]

{ #category : #tests }
TestToDoList >> testWorkedTime [
	item1 start.
	1 seconds asDelay wait.
	self assert: item1 workedTime > 0 asSeconds.
	item1 togglePause.
	self assert: item1 workedTime > 0 asSeconds.

]

{ #category : #tests }
TestToDoList >> testWorkedTimeWhenStateIsPending [
	self should: [item1 workedTime] raise: Error
]

{ #category : #tests }
TestToDoList >> testWorkedTimeWhenStatesIsFinished [
	item1 start.
	1 seconds asDelay wait.
	item1 finish.
	"Cuando el item cambia al estado finish no cuenta mas el tiempo de trabajo."
	2 seconds asDelay wait.
	self assert: item1 workedTime < 2 asSeconds
]
