extends Node2D



func _on_Area2D_body_entered(body):
	$Timer.stop()
	$Timer2.stop()
	$Area2D.set_physics_process(false)
	$Label.show()
