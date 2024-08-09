extends CanvasLayer
@export var label : Label
var text
signal next_line
var line_finished
func load_line(line):
	if line:
		line_finished = false
		var typing = ""
		for letter in line:
			typing += letter
			label.text = typing
			await get_tree().create_timer(0.1).timeout
		line_finished = true
func _process(delta):
	if line_finished:
		if Input.is_action_just_pressed("space"):
			emit_signal("next_line")
