extends Label

onready var SECONDS_TO_WAIT = get_node("/root/MainContainer").SECONDS_TO_WAIT
onready var IS_READY = get_node("/root/MainContainer").IS_READY
onready var IS_ACTIVE = get_node("/root/MainContainer").IS_ACTIVE
onready var PLAY_SOUND = get_node("/root/MainContainer").PLAY_SOUND
onready var TEXT = get_node("/root/MainContainer").TEXT
onready var audio_stream = get_node("/root/MainContainer/Sound")

var TEXT_SIZE = -1
var SECONDS_COUNTER = -1

# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = TEXT
	TEXT_SIZE = self.text.length()
	SECONDS_COUNTER = 0
	self.visible_characters = 0

func _process(delta):
	if IS_ACTIVE:
		SECONDS_COUNTER += delta
		if SECONDS_COUNTER >= SECONDS_TO_WAIT:
			if self.visible_characters <= TEXT_SIZE:
				self.visible_characters += 1
				if audio_stream != null and self.text[self.visible_characters - 1] != " " and PLAY_SOUND:
					audio_stream.play()
			else:
				IS_READY = true
			SECONDS_COUNTER = 0
