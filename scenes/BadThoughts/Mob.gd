extends RigidBody2D

# Declare member variables here. Examples:
export var min_speed = 350
export var max_speed = 550

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
