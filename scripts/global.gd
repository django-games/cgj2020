extends Node

func _ready():
	set_process_input(true) 

func _input(_ev):
	if Input.is_key_pressed(KEY_Q):
		print("Triggering: quit")
		return get_tree().quit()
	elif Input.is_key_pressed(KEY_M):
		print("Triggering: go to Main Menu")
		return get_tree().change_scene("res://scenes/MenuScene.tscn")
	elif Input.is_key_pressed(KEY_C):
		print("Triggering: go to Credits")
		return get_tree().change_scene("res://scenes/CreditsScene.tscn")
