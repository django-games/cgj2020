extends Node

# Declare member variables here. Examples:
export (PackedScene) var Mob

var time_left = 20
var colors = [Color( 0.18, 0.31, 0.31, 1 ), Color( 0.28, 0.24, 0.55, 1 )]

func _ready():
	randomize()
	new_game()

func game_over():
	finish_game()
	
	# Puase the game for a break
	var t = Timer.new()
	t.set_wait_time(2.5)
	t.set_one_shot(true)
	add_child(t)
	t.start()
	yield(t, "timeout")
	
	new_game()
	
func finish_game():
	$MobTimer.stop()
	$Timer.stop()
	
func new_game():
	$Brain.start($StartPosition.position)
	$MobTimer.start()	
	time_left = 20
	$Timer.start()
	update_timer_label(time_left)
	
func update_timer_label(value):
	$TimerLabel.text = str(value)

func _on_Timer_timeout():
	time_left -= 1
	update_timer_label(time_left)
	if time_left <= 0:
		finish_game()
		print("Next scene")

func _on_MobTimer_timeout():
	 # Choose a random location on Path2D.
	$MobPath/MobSpawnLocation.set_offset(randi())

	# Set the mob's direction perpendicular to the path direction.
	var direction = $MobPath/MobSpawnLocation.rotation - PI/2 + rand_range(-PI / 16, PI / 16)
	
	# Create a Mob instance and add it to the scene.
	var mob = Mob.instance()
	mob.set_glow_color(colors[randi()%2])
	add_child(mob)
	
	# Set the mob's position to a random location.
	mob.position = $MobPath/MobSpawnLocation.position
	# Add some randomness to the direction.
	mob.rotation = direction
	
	# Set the velocity (speed & direction).
	mob.linear_velocity = Vector2(rand_range(mob.min_speed, mob.max_speed), 0)
	mob.linear_velocity = mob.linear_velocity.rotated(direction)	
