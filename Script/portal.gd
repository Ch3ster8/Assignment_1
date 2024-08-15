extends Area2D
@export var next_level : String
@export var anim_player : AnimationPlayer
func _ready():
	anim_player.play("portal")
	
func _on_body_entered(body):
	if body.name == "Player":
		body.hide()
		body.process_mode = Node.PROCESS_MODE_DISABLED
		anim_player.play("portal_close")
		await anim_player.animation_finished
		get_tree().change_scene_to_file(next_level)
