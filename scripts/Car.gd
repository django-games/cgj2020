extends KinematicBody2D

export var SPEED_X = 100
export var SPEED_Y = 500
var mouse_pos = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
#func _proccess(delta):
#	print(delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	var move = mouse_pos.y - position.y
	var direction = mouse_pos - position
	mouse_pos = get_global_mouse_position()
	position.x += SPEED_X * delta

	if move != 0:
		rotation = direction.angle()
		position.y += SPEED_Y * direction.normalized().y * delta 
