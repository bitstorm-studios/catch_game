extends Node2D

var obstacle_scene: PackedScene = preload("res://scenes/Falling_Object.tscn")
var interval = 0.8

func _ready():
	$Timer.start(interval)

func _on_timer_timeout():
	var screen = get_viewport_rect().size 
	var position_obj = Vector2(randf_range(0, screen.x), -100)

	var obstacle_instance = obstacle_scene.instantiate()
	
	obstacle_instance.position = position_obj

	add_child(obstacle_instance)
