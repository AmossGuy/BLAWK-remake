extends Control

var drag_point = null

func _gui_input(e):
	if e is InputEventMouseButton:
		if e.button_index == BUTTON_LEFT:
			if e.pressed:
				Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
				drag_point = get_local_mouse_position()
			else:
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
				drag_point = null
	elif e is InputEventMouseMotion:
		if drag_point != null:
			OS.window_position += get_global_mouse_position() - drag_point
