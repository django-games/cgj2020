extends Node2D

var val_d = false
var gus_d = false
var david_d = false
var andres_d = false
func _ready():
	pass
	

func _on_Valerie_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if val_d:
			$Val/Texto.show()
		else:
			$Val/Texto.hide()
		val_d = not val_d

func _on_Gustavo_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if gus_d:
			$Gus/Texto.show()
		else:
			$Gus/Texto.hide()
		gus_d = not gus_d

func _on_David_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if david_d:
			$Dave/Texto.show()
		else:
			$Dave/Texto.hide()
		david_d = not david_d

func _on_Andres_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if andres_d:
			$Andy/Texto.show()
		else:
			$Andy/Texto.hide()
		andres_d = not andres_d

