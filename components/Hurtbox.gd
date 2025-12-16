extends Area2D
class_name Hurtbox

signal hit
signal zero


@export var hp = 10


func take_damage(amount: int):
	hp -= amount
	
	hit.emit()
	
	if hp <= 0:
		death()


func death():
	zero.emit()
