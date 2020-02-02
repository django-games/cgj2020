extends KinematicBody2D

var direction
var SPEED = 400

func _init():
	pass
	
func _physics_process(delta):
	direction = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		direction.y = 1
	elif Input.is_action_pressed("ui_right"):
		direction.y = -1
	
	position += direction * SPEED * delta
	
