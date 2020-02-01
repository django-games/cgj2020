extends Camera2D

export var SPEED_CAM = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):

	if position.x >= 3000:
		pass
	else:
		position.x += SPEED_CAM * delta
