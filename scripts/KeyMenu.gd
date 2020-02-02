extends Sprite

var change = false
var timer = false

func _ready():
	pass
	
func _process(delta):
	if timer:
		timer = false
		if change:
			rotation_degrees = 135
		else:
			rotation_degrees = 45
	
func _on_Timer_timeout():
	print(change)
	change = not change
	timer = true
		
