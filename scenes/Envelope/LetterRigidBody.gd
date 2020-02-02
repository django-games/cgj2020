extends RigidBody2D

var dragging = false

func _ready():
	pass # Replace with function body.

func _on_LetterRigidBody_input_event(viewport, event, shape_idx):
	print(event)
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if !dragging and event.pressed:
			dragging = true
		elif dragging and !event.pressed:
			dragging = false
			
	elif event is InputEventMouseMotion and dragging:
		print(event.position.y)
		$LetterSprite.position.y = event.position.y
		print($LetterSprite.position.y)
