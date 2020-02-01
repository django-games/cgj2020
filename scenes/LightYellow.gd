extends Light2D

# Declare member variables here. Examples:
var elapsed = 0
export var buttonTurnedOn = "red"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	elapsed += delta
	if buttonTurnedOn == "green" and elapsed >= 1.5 and get_node("/root/TrafficLight").total_green < 4:
		get_node("../LightGreen").hide()
		get_node("/root/TrafficLight").total_green -= 1
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
	if toggled:
		if get_node("/root/TrafficLight").total_green < 4:
			get_node("/root/TrafficLight").total_green -= 1
			show()
			get_node("../LightRed").hide()
			get_node("../LightGreen").hide()
			elapsed = 0
	else:
		get_node("/root/TrafficLight").total_green += 1
		if	get_node("/root/TrafficLight").total_green == 4:
			print("Siguiente escena")
			
		hide()
		get_node("../LightRed").hide()
		get_node("../LightGreen").show()
		buttonTurnedOn = "green"		
		elapsed = 0
