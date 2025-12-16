extends CharacterBody2D


var vel = Vector2.ZERO
var move_speed = 100.0

@onready var anim_tree = $AnimationTree

func _ready() -> void:
	pass


func _unhandled_key_input(event: InputEvent) -> void:
	if event.is_action_released("attack"):
		attack()


func attack():
	pass
