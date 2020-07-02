extends Node

var game_offset: Vector2
var game_scale: Vector2

func _ready():
	var screen := OS.get_current_screen()
	
	game_offset = OS.get_screen_position(screen)
	game_scale = Vector2(1, 1)
