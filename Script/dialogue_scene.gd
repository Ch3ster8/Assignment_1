extends CanvasLayer
@export var label : Label
var text
signal next_line
signal line_finished
signal selected(option)
var wait = true
var isline_finished
func load_line(line):
	wait = true
	if line:
		isline_finished = false
		var typing = ""
		for letter in line:
			typing += letter
			label.text = typing
			if wait:
				await get_tree().create_timer(0.1).timeout
		isline_finished = true
		emit_signal("line_finished")
func _process(delta):
	if Input.is_action_just_pressed("space"):
		if isline_finished:
			emit_signal("next_line")
		else:
			wait = false
