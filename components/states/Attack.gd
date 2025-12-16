extends State


var anim_tree
var state_machine: StateMachine

var is_done = false

func _ready() -> void:
	await get_tree().physics_frame
	
	state_machine = get_parent()
	anim_tree = state_machine.root_entity.anim_tree
	anim_tree.animation_finished.connect(on_animation_finished)


func process_state(delta):
	if is_done == false:
		anim_tree.get('parameters/playback').travel('attack')
	else:
		state_machine.change_state_by_name('Idle')
		is_done = false
		
		var obj = state_machine.root_entity.hitcast.get_collider()
		if obj:
			obj.take_damage(1)


func on_animation_finished(animation_name: String):
	is_done = true
