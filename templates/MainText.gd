extends Label

export(float) var SECONDS_TO_WAIT = 0.25
export(bool) var IS_READY = false
var TEXT_SIZE = -1
var SECONDS_COUNTER = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	TEXT_SIZE = self.text.length()
	SECONDS_COUNTER = 0
	IS_READY = false
	self.visible_characters = 0

func _process(delta):
	SECONDS_COUNTER += delta
	if SECONDS_COUNTER >= SECONDS_TO_WAIT:
		if self.visible_characters <= TEXT_SIZE:
			self.visible_characters += 1
		else:
			IS_READY = true
		SECONDS_COUNTER = 0
