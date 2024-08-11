extends CanvasLayer
@export var label : Label
@export var button_holder : VFlowContainer
@export var button_scene : PackedScene
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
		
func load_options(options):
	isline_finished = false
	var buttons = []
	for option in options:
		var instance = button_scene.instantiate() as Button
		button_holder.add_child(instance)
		instance.text = options[option]
		buttons.append(instance)
		instance.pressed.connect(select.bind(option, buttons))
	buttons[0].focus_neighbor_bottom = buttons[-1].get_path()
	buttons[-1].focus_neighbor_top = buttons[0].get_path()
	buttons[0].grab_focus()
	await selected
	
func select(option, buttons):
	for x in buttons:
		x.queue_free()
	Dialogue.skip_lines.remove_at(Dialogue.skip_lines.find(option))
	emit_signal("next_line")

func _process(delta):
	if Input.is_action_just_pressed("space"):
		if isline_finished:
			emit_signal("next_line")
		else:
			wait = false
