extends Node


var player_data = {}


var global_map_ref: MainMap
var global_player_ref: Player
var global_ui_ref: UI


func _ready() -> void:
	player_data = get_data("res://scripts/player_data.json")


func save_game():
	pass


func load_game():
	pass


func get_data(path: String):
	var f = FileAccess.open(path, FileAccess.READ)
	var j = JSON.new()
	j.parse(f.get_as_text())
	
	return j.data
