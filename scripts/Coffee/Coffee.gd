extends Node2D

var val_d = false
var gus_d = false
var david_d = false
var andres_d = false
var play_tusa = false

var amount_ready = 0

func _process(_delta):
	if amount_ready == 4:
		return get_tree().change_scene("res://scenes/CoffeeToBugFixerScene.tscn")
	if play_tusa and not $Tusa.playing:
		MusicPlayer.stream_paused = false

func _on_Valerie_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if val_d:
			$Val/Texto.show()
		else:
			$Val/Texto.hide()
		val_d = not val_d

func _on_Gustavo_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if gus_d:
			$Gus/Texto.show()
		else:
			$Gus/Texto.hide()
		gus_d = not gus_d

func _on_David_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if david_d:
			$Dave/Texto.show()
		else:
			$Dave/Texto.hide()
		david_d = not david_d

func _on_Andres_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if andres_d:
			$Andy/Texto.show()
		else:
			$Andy/Texto.hide()
		andres_d = not andres_d

func _on_David_area_entered(area):
	if area.get_name() == "Cafe":
		$Dave/Texto/Label.text = "IF I WANTED BURNT COFFEE I WOULD HAVE DONE IT MYSELF"
		amount_ready += 1
		$Cafe.hide()
		print("David con cafe")

func _on_Valerie_area_entered(area):
	if area.get_name() == "Pizza":
		$Val/Texto/Label.text = "IT'S TOO HOT, UGH"
		amount_ready += 1
		$Pizza.hide()
		print("Valerie con pizza")


func _on_Andres_area_entered(area):
	if area.get_name() == "Radio":
		$Andy/Texto/Label.text = "ONLY EIGHT SECONDS? DO YOU REALLY RESPECT COPYRIGHT LAWS??"
		amount_ready += 1
		$Radio.hide()
		print("Andrés con radio")
		play_tusa = true
		MusicPlayer.stream_paused = true
		$Tusa.stream.loop = false
		$Tusa.play()

func _on_Gustavo_area_entered(area):
	if area.get_name() == "Libro":
		$Gus/Texto/Label.text = "HMPH, THIS IS NOT THE EDITION I WANTED---"
		amount_ready += 1
		$Libro.hide()
		print("Gus con libro")
