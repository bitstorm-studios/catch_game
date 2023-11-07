extends Node2D

@export var points: int = 0
@onready var points_func = $Control/Label

func _process(delta):
	position.y += randf_range(5, 10)

func _on_body_entered(body):
	points += 1
	points_func.add_points(points)	
	queue_free()
