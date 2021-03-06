extends Node

func _ready():
	set_process_input(true)
	
func play_music(name):
	var music = MusicPlayer
	var audio_file = "res://Music/" + str(name)
	var sfx = load(audio_file)
	music.stream = sfx
	music.play()

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
	elif Input.is_key_pressed(KEY_1):
		print("Triggering: level 1")
		return get_tree().change_scene("res://scenes/Bridge.tscn")
	elif Input.is_key_pressed(KEY_2):
		print("Triggering: level 2")
		return get_tree().change_scene("res://scenes/Traffic Light.tscn")
	elif Input.is_key_pressed(KEY_3):
		print("Triggering: level 3")
		return get_tree().change_scene("res://scenes/Key.tscn")
	elif Input.is_key_pressed(KEY_4):
		print("Triggering: level 4")
		return get_tree().change_scene("res://scenes/Envelope/Main.tscn")
	elif Input.is_key_pressed(KEY_5):
		print("Triggering: level 5")
		return get_tree().change_scene("res://scenes/CarRace.tscn")
	elif Input.is_key_pressed(KEY_6):
		print("Triggering: level 6")
		return get_tree().change_scene("res://scenes/BadThoughts/Main.tscn")
	elif Input.is_key_pressed(KEY_7):
		print("Triggering: level 7")
		return get_tree().change_scene("res://scenes/Coffee.tscn")
	elif Input.is_key_pressed(KEY_8):
		print("Triggering: level 8")
		return get_tree().change_scene("res://scenes/BugFixer/BugFixer.tscn")
	elif Input.is_key_pressed(KEY_9):
		print("Triggering: level 9")
		return get_tree().change_scene("res://scenes/Heart/Main.tscn")

