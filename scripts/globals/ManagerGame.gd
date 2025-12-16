extends Node


var player_data = {}


func _ready() -> void:
	player_data = get_data("res://scripts/player_data.json")


func save_game():
	pass


func load_game():
	pass


func get_data(path: String):
	pass
