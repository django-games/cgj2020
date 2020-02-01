extends Label

onready var SECONDS_TO_WAIT = get_parent().get_parent().SECONDS_TO_WAIT
onready var PLAY_SOUND = get_parent().get_parent().PLAY_SOUND
onready var TEXT = get_parent().get_parent().TEXT
onready var audio_stream = get_parent().get_node("../Sound")

var TEXT_SIZE = -1
var SECONDS_COUNTER = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = TEXT
	TEXT_SIZE = self.text.length()
	SECONDS_COUNTER = 0
	self.visible_characters = 0

func _process(delta):
	if get_parent().get_parent().IS_ACTIVE:
		self.visible = true
		SECONDS_COUNTER += delta
		if SECONDS_COUNTER >= SECONDS_TO_WAIT:
			if self.visible_characters <= TEXT_SIZE:
				self.visible_characters += 1
				var current_pos = min(self.visible_characters, self.text.length())
				if audio_stream != null and self.text[current_pos - 1] != " " and PLAY_SOUND:
					audio_stream.play()
			else:
				get_parent().get_parent().IS_READY = true
			SECONDS_COUNTER = 0
	else:
		self.visible = false
