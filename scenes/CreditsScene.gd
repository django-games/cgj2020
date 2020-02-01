extends MarginContainer

onready var text1 = get_node("/root/CreditsScene/Title")
onready var text2 = get_node("/root/CreditsScene/DjangoGames")
onready var text3 = get_node("/root/CreditsScene/GameDesign")
onready var text4 = get_node("/root/CreditsScene/Programming")
onready var text5 = get_node("/root/CreditsScene/Music")
onready var text6 = get_node("/root/CreditsScene/Art")
onready var text7 = get_node("/root/CreditsScene/GameJam")
onready var text8 = get_node("/root/CreditsScene/Thanks")

func _ready():
	text1.IS_ACTIVE = true
	text2.IS_ACTIVE = false
	text3.IS_ACTIVE = false
	text4.IS_ACTIVE = false
	text5.IS_ACTIVE = false
	text6.IS_ACTIVE = false
	text7.IS_ACTIVE = false
	text8.IS_ACTIVE = false

func _process(_delta):
	if text1.IS_READY:
		text1.IS_ACTIVE = false
		text2.IS_ACTIVE = true
	if text2.IS_READY:
		text2.IS_ACTIVE = false
		text3.IS_ACTIVE = true
	if text3.IS_READY:
		text3.IS_ACTIVE = false
		text4.IS_ACTIVE = true
	if text4.IS_READY:
		text4.IS_ACTIVE = false
		text5.IS_ACTIVE = true
	if text5.IS_READY:
		text5.IS_ACTIVE = false
		text6.IS_ACTIVE = true
	if text6.IS_READY:
		text6.IS_ACTIVE = false
		text7.IS_ACTIVE = true
	if text7.IS_READY:
		text7.IS_ACTIVE = false
		text8.IS_ACTIVE = true
	if text8.IS_READY:
		get_tree().quit()
