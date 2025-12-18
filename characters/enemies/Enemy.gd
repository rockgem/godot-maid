extends Node2D


var move_speed = 80.0


func _on_hurtbox_hit() -> void:
	$HitFX.play("hit")


func _on_hurtbox_zero() -> void:
	pass # Replace with function body.
