extends CharacterBody2D

var run_speed = 350

func _physics_process(delta):
	velocity.x = 0

	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += run_speed
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= run_speed
		
	move_and_slide()
	
