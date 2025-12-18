extends Node2D


@onready var state_machine: StateMachine = $StateMachine
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var nav_agent: NavigationAgent2D = $NavigationAgent2D

var direction = Vector2.ZERO : 
	set(value):
		direction = value
		
		if direction.x < -0.5:
			animated_sprite.flip_h = true
		else:
			animated_sprite.flip_h = false

var move_speed = 50.0
var safe_vel: Vector2

func _on_hurtbox_hit() -> void:
	$HitFX.play("hit")
	state_machine.change_state_by_name('Hit')


func _on_hurtbox_zero() -> void:
	state_machine.change_state_by_name('Dead')


func _on_navigation_agent_2d_velocity_computed(safe_velocity: Vector2) -> void:
	safe_vel = safe_velocity
