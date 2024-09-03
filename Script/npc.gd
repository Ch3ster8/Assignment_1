extends Area2D
@export var auto_activate := false
@export var input_sprite : Sprite2D
@export var sprite : Sprite2D
@export var animation : AnimationPlayer
@export var tree_path : String
@export var flip_sprite := false
@export var finish_code = Node
var has_activated = false
func _ready():
	if animation:
		animation.play("idle")
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
						Dialogue.tree_finished.connect(tree_finished_arg)

func _on_body_entered(body):
	if body.name == "Player":
		if !auto_activate:
			input_sprite.show()

func _on_body_exited(body):
	if body.name == "Player":
		if !auto_activate:
			input_sprite.hide()
			
func tree_finished_arg(arg1 : int):
	if finish_code:
		finish_code = finish_code as npc
		finish_code.activate(arg1)
