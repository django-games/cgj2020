extends RigidBody2D

export var min_speed = 300
export var max_speed = 500

func screen_exited():
	queue_free()

func has_been_Shot(_body):
	_body.queue_free()
	queue_free()

func _physics_process(_delta):
	if self.position.x < 0:
		self.linear_velocity.x *= -1
	if self.position.x < 0:
		self.linear_velocity.y *= -1
