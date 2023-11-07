extends Node2D

var obstacle_scene: PackedScene = preload("res://scenes/Falling_Object.tscn")
var interval = randf_range(0.5, 1)

func _ready():
	$Timer.start(interval)

func _on_timer_timeout():
	var screen = get_viewport_rect().size
	var position = Vector2(randf_range(0, screen.x), -600)

	var obstacle_instance = obstacle_scene.instantiate()

	add_child(obstacle_instance)
