extends Area2D

var texture = preload("res://assets/Bloque2.png")
var wood_repared = true

func _on_Area2D_input_event(_viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT and wood_repared:
		var sprite = get_node("Sprite")
		sprite.set_texture(texture)
		get_parent().get_parent().is_bridge_complete += 1
		wood_repared = false
