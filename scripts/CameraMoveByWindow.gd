extends Node2D

func _ready():
	get_node("/root/WindowScaler").set_window_position(get_position())

func _process(delta):
	set_position(get_node("/root/WindowScaler").get_window_position())
