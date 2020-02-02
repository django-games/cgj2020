extends Sprite

onready var raycast = $RayCast2D

var mouse_position

func _process(delta):
	mouse_position = get_local_mouse_position()
	rotation += (deg2rad(-90) + mouse_position.angle()) * 0.1

	if Input.is_action_pressed("ui_accept"):
		var coll = raycast.get_collider()
		print(coll)
