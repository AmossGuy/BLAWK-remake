extends Node2D

func _process(delta):
	set_position(OS.window_position - get_node("/root/WindowScaler").game_offset)
