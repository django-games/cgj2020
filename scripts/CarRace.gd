extends Node2D

var car

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true

func _on_Timer_timeout():
	print("TIMEOUT")
	get_tree().paused = false

func _on_Button_pressed():
	get_node("Camera2D/Button").hide()
	get_node("Camera2D/Label").hide()
	return get_tree().reload_current_scene()


func _on_Final_body_entered(_body):
	print("Ganaste")
	var label = get_node("Camera2D/Label")
	label.text = "You made it through the bridge!"
	label.show()
	$TimerFinal.start()

func _on_TimerFinal_timeout():
	return get_tree().change_scene("res://scenes/CarRaceToBadThoughtsScene.tscn")
