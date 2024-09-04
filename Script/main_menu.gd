extends CanvasLayer
@export var buttons : Control
@export var slots : Control
@export var settings : Control
@export var volume_slider : HSlider
@export var window_mode : OptionButton
@export var cutscene : String

func _ready():
	settings.hide()
	slots.hide()
	buttons.show()
	DisplayServer.window_set_mode(Storage.window_mode)
	if Storage.window_mode == DisplayServer.WINDOW_MODE_FULLSCREEN:
		window_mode.selected = 0
	elif Storage.window_mode == DisplayServer.WINDOW_MODE_WINDOWED:
		window_mode.selected = 1
	var bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus, linear_to_db(Storage.master_volume))
	volume_slider.value = Storage.master_volume

func _process(delta):
	if Input.is_action_just_pressed("back"):
		if settings.hidden or slots.hidden:
			settings.hide()
			slots.hide()
			buttons.show()
			
func _on_play_pressed():
	buttons.hide()
	get_tree().change_scene_to_file(cutscene)

func _on_settings_pressed():
	buttons.hide()
	slots.hide()
	settings.show()

func _on_quit_pressed():
	get_tree().quit()


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
