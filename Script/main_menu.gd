extends CanvasLayer
@export var buttons : Control
@export var slots : Control
@export var settings : Control

func _ready():
	settings.hide()
	slots.hide()
	buttons.show()

func _process(delta):
	if Input.is_action_just_pressed("back"):
		if settings.hidden or slots.hidden:
			settings.hide()
			slots.hide()
			buttons.show()
			
func _on_play_pressed():
	buttons.hide()
	slots.show()

func _on_settings_pressed():
	buttons.hide()
	slots.hide()
	settings.show()

func _on_quit_pressed():
	get_tree().quit()


func _on_window_button_item_selected(index):
	if index == 0:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	elif index == 1:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)


func _on_volume_slider_value_changed(value):
	var bus = AudioServer.get_bus_index("Master")
	AudioServer.set_bus_volume_db(bus, linear_to_db(value))
