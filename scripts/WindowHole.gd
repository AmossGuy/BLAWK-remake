extends StaticBody2D

func _ready():
	OS.window_per_pixel_transparency_enabled = true
	get_tree().get_root().set_transparent_background(true)
