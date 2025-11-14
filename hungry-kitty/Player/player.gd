extends CharacterBody2D
var speed = 350

func _physics_process(delta):
	$AnimatedSprite2D.play("Idle")
	if Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite2D.flip_h = true
		velocity.x = speed * -1
	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.flip_h = false
		velocity.x = speed
	if Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
		velocity.x = 0
	move_and_slide()
