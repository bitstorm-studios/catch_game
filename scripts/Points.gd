extends Control

@export var points:int = 0

func show_points(points):
	$Score.text = "Score: " + str(points) + "/5"
	print(points)
