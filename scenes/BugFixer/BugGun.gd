extends Sprite

var mouse_position
	
func _process(_delta):
	mouse_position = get_local_mouse_position()
	rotation += PI*0.75 +  mouse_position.angle()
