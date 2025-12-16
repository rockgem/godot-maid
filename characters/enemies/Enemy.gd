extends Node2D


func _on_hurtbox_hit() -> void:
	$HitFX.play("hit")


func _on_hurtbox_zero() -> void:
	pass # Replace with function body.
