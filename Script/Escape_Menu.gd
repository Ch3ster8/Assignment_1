extends CanvasLayer
@export var buttons : Control
@export var settings : Control
@export var player : CharacterBody2D
@export var can_menu : bool
@export var main_menu : String
var button_hidden = true
var setting_hidden = true
@export var volume_slider : HSlider
@export var window_mode : OptionButton
func _ready():
	buttons.hide()
	settings.hide()
	Dialogue.connect("tree_started", tree_started)
	Dialogue.connect("tree_finished", tree_finished)
	DisplayServer.window_set_mode(Storage.window_mode)
	if Storage.window_mode == DisplayServer.WINDOW_MODE_FULLSCREEN:
		window_mode.selected = 0
	elif Storage.window_mode == DisplayServer.WINDOW_MODE_WINDOWED:
		window_mode.selected = 1
	var bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus, linear_to_db(Storage.master_volume))
	volume_slider.value = Storage.master_volume

func tree_started():
	can_menu = false
func tree_finished(arg1 : int):
	can_menu = true
func _process(delta):
	if Input.is_action_just_pressed("back") and can_menu:
		if button_hidden:
			if setting_hidden:
				player.can_move = false
				buttons.show()
				get_tree().paused = true
				button_hidden = false
			else:
				buttons.show()
				settings.hide()
				button_hidden = false
				setting_hidden = true
		else:
			player.can_move = true
			buttons.hide()
			get_tree().paused = false
			button_hidden = true


func _on_resume_pressed():
	player.can_move = true
	buttons.hide()
	get_tree().paused = false
	button_hidden = true
			


func _on_settings_pressed():
	if setting_hidden:
		buttons.hide()
		settings.show()
		button_hidden = true
		setting_hidden = false
		


func _on_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file(main_menu)

func _on_window_button_item_selected(index):
	if index == 0:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		Storage.window_mode = DisplayServer.WINDOW_MODE_FULLSCREEN
	elif index == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		Storage.window_mode = DisplayServer.WINDOW_MODE_WINDOWED


func _on_volume_slider_value_changed(value):
	var bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus, linear_to_db(value))
	Storage.master_volume = value
