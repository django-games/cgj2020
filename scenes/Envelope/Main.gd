extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	global_script.play_music("music3.ogg")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_FinalTimer_timeout():
	return get_tree().change_scene("res://scenes/LetterToCarRaceScene.tscn")
