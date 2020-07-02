extends Node2D

export(Array, String) var levels;

func _ready():
	get_tree().get_root().set_transparent_background(true)
	
	var w_scene = load("res://window/window.tscn")
	var w_instance = w_scene.instance()
	add_child(w_instance)
	
	OS.window_size = Vector2(400, 400)
