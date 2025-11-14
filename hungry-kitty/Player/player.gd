extends CharacterBody2D
var speed = 250

func _process(delta):
	if Input.is_action_just_pressed("ui_left"):
		velocity.x = speed * -1
	if Input.is_action_just_pressed("ui_right"):
		velocity.x = speed
	if Input.is_action_just_released("ui_left"):
		velocity.x = 0
	if Input.is_action_just_released("ui_right"):
		velocity.x = 0	
	move_and_slide()
