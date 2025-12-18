extends Node2D
class_name MainMap



func _ready() -> void:
	ManagerGame.global_map_ref = self


func get_random_point_on_map() -> Vector2:
	var random_tile = $Ground.get_used_cells().pick_random()
	return random_tile * $Ground.tile_set.tile_size.x
