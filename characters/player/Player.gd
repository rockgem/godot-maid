extends CharacterBody2D


var vel = Vector2.ZERO
var move_speed = 100.0




func _physics_process(delta: float) -> void:
	vel.x = Input.get_axis('ui_left', 'ui_right')
	vel.y = Input.get_axis('ui_up', 'ui_down')
	
	if vel != Vector2.ZERO:
		$AnimationTree.set('parameters/idle/blend_position', vel)
		$AnimationTree.set('parameters/run/blend_position', vel)
		$AnimationTree.set('parameters/attack/blend_position', vel)
		
		$AnimationTree.get('parameters/playback').travel('run')
	else:
		$AnimationTree.get('parameters/playback').travel('idle')
	
	velocity = vel * move_speed
	
	move_and_slide()
