extends Node2D

var val_d = false
var gus_d = false
var david_d = false
var andres_d = false
var can_grab = false
var grabbed_offset
func _ready():
	pass
	
func _physics_process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and can_grab:
        grabbed_offset.position = get_global_mouse_position()

func _on_Valerie_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if val_d:
			$Val/Texto.show()
		else:
			$Val/Texto.hide()
		val_d = not val_d

func _on_Gustavo_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if gus_d:
			$Gus/Texto.show()
		else:
			$Gus/Texto.hide()
		gus_d = not gus_d

func _on_David_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if david_d:
			$Dave/Texto.show()
		else:
			$Dave/Texto.hide()
		david_d = not david_d

func _on_Andres_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if andres_d:
			$Andy/Texto.show()
		else:
			$Andy/Texto.hide()
		andres_d = not andres_d


func _on_Valerie_body_entered(body):
	print("ENTRO")


func _on_Cafe_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		print("AAAAAAAAAAAAA")
		can_grab = event.pressed
		grabbed_offset = $Cafe
