extends MarginContainer

var texts = []
var current_node = -1
var is_last_node = false

func _ready():
	global_script.play_music("music1.ogg")
	for text in get_children():
		texts.append(text)
	if texts.size() > 0:
		texts[0].IS_ACTIVE = true
		current_node = 0
		for i in range(1, texts.size()):
			texts[i].IS_ACTIVE = false
			texts[i].IS_READY = false

func _process(_delta):
	if current_node >= texts.size():
		after_last_text()
	else:
		var current_text = texts[current_node]
		if current_text.IS_READY:
			current_text.IS_ACTIVE = false
			current_node += 1
			if current_node < texts.size():
				texts[current_node].IS_ACTIVE = true

func after_last_text():
	return get_tree().change_scene("res://scenes/Traffic Light.tscn")
