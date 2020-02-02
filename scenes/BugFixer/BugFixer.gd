extends Node

const LASER = preload("res://scenes/BugFixer/Laser.tscn")
const BUG = preload("res://scenes/BugFixer/Bug.tscn")

var remaining_time : int

func _ready():
	global_script.play_music("drumsss.ogg")
	remaining_time = 20
	update_timer_label(remaining_time)
	$BugTimer.start()
	$MatchTimer.start()

func _physics_process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		var laser = LASER.instance()
		laser.original_position = $Gun.global_position
		self.add_child(laser)

func on_match_timeout():
	remaining_time -= 1
	update_timer_label(remaining_time)
	if remaining_time <= 0:
		finish_game()

func update_timer_label(new_label):
	$TimeLeft.text = str(new_label)

func finish_game():
	$BugTimer.stop()
	$MatchTimer.stop()
	print("Next scene")

func bug_spawn():
	$MobPath/MobSpawnLocation.set_offset(randi())
	var direction = $MobPath/MobSpawnLocation.rotation - PI/2 + rand_range(-PI / 16, PI / 16)
	var bug = BUG.instance()
	add_child(bug)
	bug.position = $MobPath/MobSpawnLocation.position
	bug.rotation = direction
	bug.linear_velocity = Vector2(rand_range(bug.min_speed, bug.max_speed), 0)
	bug.linear_velocity = bug.linear_velocity.rotated(direction)

func on_malla_entered(_area):
	if _area.get_filename() == LASER.get_path():
		# Ignoring laserbeams
		return
	print("ACABO DE ENTRAR CON", _area, " DE TIPO ")
	$MatchTimer.stop()
	$BugTimer.stop()
	update_timer_label("LOST")
	$RestartTimer.start()

func restart():
	get_tree().reload_current_scene()
