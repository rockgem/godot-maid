extends State

@export var max_distance = 70.0

func enter_state():
	pass


func process_state(delta):
	var dir = state_machine.root_entity.global_position.direction_to(ManagerGame.global_player_ref.global_position)
	state_machine.root_entity.global_position += dir * state_machine.root_entity.move_speed * delta
	
	if state_machine.root_entity.global_position.distance_to(ManagerGame.global_player_ref.global_position) > max_distance:
		state_machine.change_state_by_name('EnemyIdle')
