extends AnimatedSprite2D
@export var dialogue_tree : String
@export var first_level : String
func _ready():
	play("default")
	Dialogue.load_tree(dialogue_tree)
	Dialogue.connect("tree_finished", tree_finished)

func tree_finished(arg1 : int):
	get_tree().change_scene_to_file(first_level)
