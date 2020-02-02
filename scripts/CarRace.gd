extends Node2D

var car

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _physics_process(delta):
#	print(delta)


func _on_Timer_timeout():
	print("TIMEOUT")
	get_tree().paused = false
	


func _on_Button_pressed():
	get_node("Camera2D/Button").hide()
	get_node("Camera2D/Label").hide()
	
	get_tree().reload_current_scene()


func _on_Final_body_entered(body):
	print("Ganaste")
	var label = get_node("Camera2D/Label")
	label.text = "Ganaste loco"
	label.show()
