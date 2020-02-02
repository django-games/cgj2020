extends MarginContainer

func _ready():
	global_script.play_music("music2.ogg")

func quit(_button):
	print("Exiting...")
	return get_tree().quit()

func go_to_credits(_meta):
	return get_tree().change_scene("res://scenes/CreditsScene.tscn")

func go_to_intro(_meta):
	return get_tree().change_scene("res://scenes/IntroScene.tscn")
