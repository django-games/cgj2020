extends Sprite

var mouse_position

func _process(_delta):
	mouse_position = get_local_mouse_position()
	rotation += (deg2rad(-90) + mouse_position.angle()) * 0.1
