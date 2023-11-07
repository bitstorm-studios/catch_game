extends Node2D
signal add_points 

func _process(delta):
	position.y += randf_range(5, 10)

func _on_body_entered(body):
	emit_signal('add_points')
	queue_free()
