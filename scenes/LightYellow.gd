extends Light2D

# Declare member variables here. Examples:
var elapsed = 0
export var buttonTurnedOn = "red"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var CANT = get_node("/root/TrafficLight").total_green
	elapsed += delta
	if buttonTurnedOn == "green" and elapsed >= 1.85 and CANT < 4:
		get_node("../LightGreen").hide()
		get_node("../Button").set_pressed(true)
		buttonTurnedOn = "yellow"
		elapsed = 0
		show()
	elif elapsed >= 1.0 and buttonTurnedOn == "yellow":
		get_node("../LightRed").show()
		buttonTurnedOn = "red"
		elapsed = 0
		hide()


func _on_Button_toggled(toggled):
	var CANT = get_node("/root/TrafficLight").total_green
	if toggled:
		if CANT < 4:
			get_node("/root/TrafficLight").total_green -= 1
			show()
			get_node("../LightRed").hide()
			get_node("../LightGreen").hide()
			elapsed = 0
	else:
		get_node("/root/TrafficLight").total_green += 1
		var c2 = get_node("/root/TrafficLight").total_green
		if	c2 == 4:
			return get_tree().change_scene("res://scenes/TFtoKeyScene.tscn")
		hide()
		get_node("../LightRed").hide()
		get_node("../LightGreen").show()
		buttonTurnedOn = "green"		
		elapsed = 0
