extends Node

func _ready():
	set_process_input(true) 

func _input(_ev):
	if Input.is_key_pressed(KEY_Q):
		get_tree().quit()
