extends Sprite

var change = false
var timer = false
var corazon1
var corazon2
var corazon3
var corazon4

func _ready():
	corazon1 = get_parent().get_node("Corazon1")
	corazon2 = get_parent().get_node("Corazon2")
	corazon3 = get_parent().get_node("Corazon3")
	corazon4 = get_parent().get_node("Corazon4")
	
func _process(delta):
	if timer:
		timer = false
		if change:
			rotation_degrees = 135
			corazon1.position += Vector2(-50,50)
			corazon2.position += Vector2(50,50)
			corazon3.position += Vector2(50,-50)
			corazon4.position += Vector2(-50,-50)
		else:
			rotation_degrees = 45
			corazon1.position -= Vector2(-50,50)
			corazon2.position -= Vector2(50,50)
			corazon3.position -= Vector2(50,-50)
			corazon4.position -= Vector2(-50,-50)
	
func _on_Timer_timeout():
	change = not change
	timer = true
		
