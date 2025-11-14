extends Area2D

var item_gravity = randi() % 3 + 1 

func _process(delta):
	position.y += item_gravity
