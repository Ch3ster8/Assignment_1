extends Area2D
@export var auto_activate := false
@export var input_sprite : Sprite2D
@export var sprite : Sprite2D
@export var tree_path : String
@export var flip_sprite := false
@export var finish_code = Node
var has_activated = false
func _ready():
	if flip_sprite:
		sprite.flip_h = true
		
func _process(delta):
	if has_overlapping_bodies():
		for body in get_overlapping_bodies():
			if body.name == "Player":
				if !has_activated:
					if auto_activate or Input.is_action_just_pressed("interact"):
						has_activated = true
						Dialogue.load_tree(tree_path)
						Dialogue.connect("tree_finished", tree_finished())

func _on_body_entered(body):
	if body.name == "Player":
		if !auto_activate:
			input_sprite.show()

func _on_body_exited(body):
	if body.name == "Player":
		if !auto_activate:
			input_sprite.hide()
			
func tree_finished():
	if finish_code:
		finish_code = finish_code as npc
		finish_code.activate()
