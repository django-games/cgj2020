extends RigidBody2D

# Declare member variables here. Examples:
var dragging = false
var finished = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if not finished:
		if event is InputEventMouseMotion and dragging:
			position.y = clamp(get_global_mouse_position().y, 0, 400)
			if position.y <= 200:
				finished = true
				get_node("../../Label").text = "..what?!"
				get_node("../../FinalTimer").start()
				print("Siguiente escena")
		elif event is InputEventMouseButton and event.button_index == BUTTON_LEFT and dragging and !event.pressed:
			dragging = false

func _on_RigidBody2D_input_event(_viewport, event, _shape_idx):
	if not finished and event is InputEventMouseButton and event.button_index == BUTTON_LEFT and !dragging and event.pressed:
		dragging = true
