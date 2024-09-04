extends npc
@export var portal_scene : PackedScene
@export var portal_position : Node2D
@export var next_level : String
@export var alt_level1 : String
@export var alt_level2 : String
@export var alt_level3 : String

func activate(arg1 : int):
	if arg1 == 1:
		var instance = portal_scene.instantiate() as Node2D
		instance.next_level = next_level
		add_child(instance)
		instance.global_position = portal_position.global_position
	elif arg1 == 2:
		var instance = portal_scene.instantiate() as Node2D
		instance.next_level = alt_level1
		add_child(instance)
		instance.global_position = portal_position.global_position
	elif arg1 == 3:
		var instance = portal_scene.instantiate() as Node2D
		instance.next_level = alt_level2
		add_child(instance)
		instance.global_position = portal_position.global_position
	elif arg1 == 4:
		var instance = portal_scene.instantiate() as Node2D
		instance.next_level = alt_level3
		add_child(instance)
		instance.global_position = portal_position.global_position
	
