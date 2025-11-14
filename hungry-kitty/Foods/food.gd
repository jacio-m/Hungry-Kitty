extends Area2D

var item_gravity = 2

func _process(delta):
	position.y += item_gravity
