extends KinematicBody2D

var direction
var SPEED = 4

func _init():
	pass
	
func _physics_process(delta):
	direction = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		direction.x = -1
	elif Input.is_action_pressed("ui_right"):
		direction.x = 1
		
	move_and_collide(direction * SPEED)
		# position += direction * SPEED * delta
	
