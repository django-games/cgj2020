extends Area2D

const SPEED = 1750
export var original_position: Vector2
var direction : Vector2

func _ready():
	self.position = original_position
	direction = get_global_mouse_position() - original_position
	direction = direction.normalized()
	
	var mouse_position = get_local_mouse_position()
	rotation += PI/2 + mouse_position.angle()

func _process(delta):
	position += SPEED * delta * direction

func screen_exited():
	queue_free()
