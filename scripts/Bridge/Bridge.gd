extends Node2D

var is_bridge_complete = 0
var car
var SPEED = 150

func _ready():
	car = $Sprite
	
func _process(delta):
	if is_bridge_complete == 7:
		print("Siguiente Escena")
		$Label.show()
		is_bridge_complete += 1
		
	if is_bridge_complete == 8:
		if car.position.x <= 1200:
			car.position.x += SPEED * delta
		else:
			return get_tree().change_scene("res://scenes/BridgeToTFScene.tscn")
	
