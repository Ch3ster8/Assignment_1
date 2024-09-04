extends TextureRect
@export var player : CharacterBody2D

func _process(delta):
	global_position.x = player.global_position.x
