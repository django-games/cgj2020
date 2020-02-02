extends RigidBody2D

export var min_speed = 300
export var max_speed = 500

func screen_exited():
	queue_free()

func has_been_Shot(_body):
	_body.queue_free()
	queue_free()
