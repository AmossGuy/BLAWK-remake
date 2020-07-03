extends Node2D

func _process(delta):
	set_position(get_node("/root/WindowScaler").get_window_position())
