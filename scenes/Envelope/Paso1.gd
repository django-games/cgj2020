extends Node2D

# Declare member variables here. Examples:

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Button_pressed():
	hide()
	get_node("../Paso2").show()
	print("hide")
