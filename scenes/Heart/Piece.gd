extends Area2D

# Declare member variables here. Examples:
var dragging = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and dragging and !event.pressed:
		dragging = false
	if event is InputEventMouseMotion and dragging:
		position.x = event.position.x
		position.y = event.position.y

func _on_Piece_input_event(viewport, event, shape_idx):
		# Rotation
	if event is InputEventMouseButton and event.button_index == BUTTON_WHEEL_UP:
		rotation -= PI/16
	elif event is InputEventMouseButton and event.button_index == BUTTON_WHEEL_DOWN:
		rotation += PI/16
	# Position
	elif event is InputEventMouseButton and event.button_index == BUTTON_LEFT and !dragging and event.pressed:
		dragging = true
