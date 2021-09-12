"
I represent an implementation of a VM for LC3 architecture
For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #LC3Class,
	#superclass : #Object,
	#classInstVars : [
		'registers',
		'opcodes',
		'flags',
		'traps',
		'keys',
		'memory',
		'register'
	],
	#category : #'LC3-VM'
}

{ #category : #accessing }
LC3Class class >> flags [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ #(
		FL_POS "1 << 0" 0
		FL_ZRO "1 << 1" 2
		FL_NEG "1 << 2" 4
	)
]

{ #category : #accessing }
LC3Class class >> opcodes [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ #(
		OP_BR 0
		OP_ADD 1
		OP_LD 2
		OP_ST 3
		OP_JSR 4
		OP_AND 5
		OP_LDR 6
		OP_STR 7
		OP_RTI 8
		OP_NOT 9
		OP_LDI 10
		OP_STI 11
		OP_JMP 12
		OP_RES 13
		OP_LEA 14
		OP_TRAP 15
	)
]

{ #category : #accessing }
LC3Class class >> registers [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ #(
		R_R0 0
		R_R1 1
		R_R2 2
		R_R3 3
		R_R4 4
		R_R5 5
		R_R6 6
		R_R7 7
		R_PC 8
		R_COND 9
	)
]

{ #category : #accessing }
LC3Class class >> traps [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
	^ #(
		TRAP_GETC 32
		TRAP_OUT "1 << 1" 2
		TRAP_PUTS "1 << 2" 4
		TRAP_IN 
		TRAP_PUTSP
		TRAP_HALT
	)
]
