extends Area2D
@export var input_sprite : Sprite2D
@export var tree_path : String

func _process(delta):
	if has_overlapping_bodies():
		for body in get_overlapping_bodies():
			if body.name == "Player":
				if Input.is_action_just_pressed("interact"):
					Dialogue.load_tree(tree_path)

func _on_body_entered(body):
	if body.name == "Player":
		input_sprite.show()

func _on_body_exited(body):
	if body.name == "Player":
		input_sprite.hide()
