extends Node2D

var obstacle_scene: PackedScene = preload("res://scenes/Falling_Object.tscn")
var interval = 0.8
var player_points = 0

func _ready():
	$Timer.start(interval)

func _on_timer_timeout():
	var screen = get_viewport_rect().size 
	var position_obj = Vector2(randf_range(0, screen.x), -100)

	var obstacle_instance = obstacle_scene.instantiate()
	
	obstacle_instance.position = position_obj
	obstacle_instance.connect("collect", on_collect)

	add_child(obstacle_instance)
	
func on_collect():
	player_points += 1
	if (player_points == 5):
		get_tree().quit()
	print("1")
	$HUD.show_points(player_points)
	

