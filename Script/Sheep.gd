extends npc
@export var portal_scene : PackedScene
@export var portal_position : Node2D

func activate():
	var instance = portal_scene.instantiate() as Node2D
	instance.position = portal_position.position
