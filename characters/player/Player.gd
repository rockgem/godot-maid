extends CharacterBody2D


var vel = Vector2.ZERO
var move_speed = 100.0

@onready var anim_tree = $AnimationTree
@onready var state_machine: StateMachine = $StateMachine



func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("attack"):
		attack()


func attack():
	print('att')
	state_machine.change_state_by_name('Attack')
