extends Area2D



func _on_Area2D_body_entered(_body):
	get_tree().paused = true
	var button = get_parent().get_parent().get_node("Camera2D/Button")
	var label = get_parent().get_parent().get_node("Camera2D/Label")
	button.show()
	label.show()