extends Light2D

# Declare member variables here. Examples:

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

#func _process(delta):
#	if not turnedOn:
#		elapsed += delta
#		if elapsed >= 1.5 and get_node("/root/TrafficLight").total_green < 4:
#			get_node("/root/TrafficLight").total_green -= 1
#			get_node("../Button").set_pressed(true)
#			turnedOn = true
#			elapsed = 0
#			show()


#func _on_Button_toggled(toggled):
#	if toggled:
#		if get_node("/root/TrafficLight").total_green < 4:
#			get_node("/root/TrafficLight").total_green -= 1
#			show()
#			elapsed = 0
#	else:
#		get_node("/root/TrafficLight").total_green += 1
#		if	get_node("/root/TrafficLight").total_green == 4:
#			print("Siguiente escena")
#		turnedOn = false		
#		hide()
#		elapsed = 0
