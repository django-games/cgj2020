extends Light2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_toggled(toggled):
	if toggled:
		get_node("/root/TrafficLight").total_green -= 1		
		show()
	else:
		get_node("/root/TrafficLight").total_green += 1
		if	get_node("/root/TrafficLight").total_green == 4:
			print("Siguiente escena")
		hide()
