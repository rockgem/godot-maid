extends State


func enter_state():
	state_machine.root_entity.animated_sprite.play('death')


func process_state(delta):
	pass
