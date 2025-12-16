extends Node
class_name StateMachine


@export var initial_state: State
var root_entity

var current_state: State



func _ready() -> void:
	await get_tree().physics_frame
	root_entity = get_parent()


func _physics_process(delta: float) -> void:
	if current_state:
		current_state.process_state(delta)


func change_state(state: State):
	if current_state:
		current_state.state_exited()
	
	current_state = state
	current_state.enter_state()
