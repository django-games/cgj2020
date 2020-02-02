extends Node2D

# Declare member variables here. Examples:
var radius = 16
var eps2 = 0.05
var eps1 = 359.05

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	var p1 = Vector2(538.217, 241.616)
	var b1 = (eps1 <= abs($Piece1.rotation_degrees) or abs($Piece1.rotation_degrees) <= eps2) and $Piece1.position.distance_to(p1) <= radius
	if b1:
		$Piece1.position = p1
		
	var p2 = Vector2(440.25, 248.834)
	var b2 = (eps1 <= abs($Piece2.rotation_degrees) or abs($Piece2.rotation_degrees) <= eps2) and $Piece2.position.distance_to(p2) <= radius
	if b2:
		$Piece2.position = p2
	
	var p3 = Vector2(463.148, 321.925)
	var b3 = (eps1 <= abs($Piece3.rotation_degrees) or abs($Piece3.rotation_degrees) <= eps2) and $Piece3.position.distance_to(p3) <= radius
	if b3:
		$Piece3.position = p3
	
	var p4 = Vector2(525.463, 308.584)
	var b4 = (eps1 <= abs($Piece4.rotation_degrees) or abs($Piece4.rotation_degrees) <= eps2) and $Piece4.position.distance_to(p4) <= radius
	if b4:
		$Piece4.position = p4

	if b1 and b2 and b3 and b4:
		print("Next scene")
