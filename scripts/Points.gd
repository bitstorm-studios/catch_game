extends Control

func add_points(points: int):
	$Control/Label.self_modulate = Color(0,0,0,1)
	$Control/Label.text = "Score: " + str(points)
