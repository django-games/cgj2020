extends Area2D

const SPEED = 1750
export var original_position: Vector2
var direction : Vector2

func _ready():
	self.position = original_position
	direction = get_global_mouse_position() - original_position
	direction = direction.normalized()

func _process(delta):
	position += SPEED * delta * direction
	$AnimatedSprite.play("laser")

func screen_exited():
	queue_free()
