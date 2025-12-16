extends CharacterBody2D


var direction = Vector2.ZERO
var move_speed = 100.0

@onready var anim_tree = $AnimationTree
@onready var state_machine: StateMachine = $StateMachine
@onready var hitcast = $Aim/Hitcast

var mp = 25
var gold = 100


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("attack"):
		attack()
	if Input.is_action_just_pressed("roll"):
		state_machine.change_state_by_name('Roll')
	
	$Aim.look_at(global_position + direction)


func attack():
	state_machine.change_state_by_name('Attack')
