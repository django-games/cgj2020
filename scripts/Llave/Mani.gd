extends Area2D

var fall = false
var SPEED_FALL = 1500
var TIME_TIMER_2 = 1
var rand = RandomNumberGenerator.new()

func _ready():
	pass
	
func _physics_process(delta):
	if fall:
		if position.y <= 220:
			fall_hand(delta)
		else:
			fall = false
			
	else:
		if position.y >= -300:
			up_hand(delta)

func fall_hand(delta):
	position.y += SPEED_FALL * delta
	
func up_hand(delta):
	position.y -= SPEED_FALL * delta
	
func calculate_new_pos():
	position.x = rand.randi_range(100,900)

func _on_Timer_timeout():
	fall = true
	var timer2 = get_parent().get_node("Timer2")
	timer2.start(TIME_TIMER_2)


func _on_Timer2_timeout():
	calculate_new_pos()
