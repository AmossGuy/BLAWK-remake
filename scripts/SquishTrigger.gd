extends Area2D

func _process(_delta):
	for body in get_overlapping_bodies():
		if body != get_parent():
			get_parent().queue_free()

#func _body_entered(_body):
#	print("hi")
#	get_parent().queue_free()
