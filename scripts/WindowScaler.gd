extends Node

var game_offset: Vector2
var game_scale: float

func set_window_position(position: Vector2):
	OS.window_position = position * game_scale + game_offset

func get_window_position() -> Vector2:
	return (OS.window_position - game_offset) / game_scale 

func set_window_size(size: Vector2):
	OS.window_size = size * game_scale

func _ready():
	var screen := OS.get_current_screen()
	
	game_offset = OS.get_screen_position(screen)
	game_scale = 0.5
	
	set_window_size(Vector2(680, 384))
