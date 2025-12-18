extends Node2D


@onready var state_machine: StateMachine = $StateMachine

var move_speed = 80.0


func _on_hurtbox_hit() -> void:
	$HitFX.play("hit")
	state_machine.change_state_by_name('Hit')


func _on_hurtbox_zero() -> void:
	state_machine.change_state_by_name('Dead')
