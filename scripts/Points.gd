extends Control

@export var points:int = 0

func add_points():
	$Score.text = "Score: " + str(points) + "/5"
	print(points)

func _on_falling_object_add_points():
	points += 1	
	print("a" + str(points))
	add_points()
