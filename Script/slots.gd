extends Control
@export var tutorial_level : String

func _on_load_button_pressed(slot):
	if slot == 1:
		get_tree().change_scene_to_file(tutorial_level)
