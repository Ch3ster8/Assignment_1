extends Node
@export var dialogueScene : PackedScene
var instance
func _process(delta):
	if Input.is_action_just_pressed("e"):
		load_tree("res://TestTree.txt")
func load_tree(tree):
	instance = dialogueScene.instantiate()
	add_child(instance)
	var dialogue_text = get_child(0)
	var text = load_file("res://TestTree.txt")
	var character
	var prev_line
	for x in text.values():
		prev_line = x
		if x.contains("-"):
			character = x.replace("-", "")
			character = character.replace("	", "")
		elif x != "" and character:
			if prev_line:
				if x.count("	") == prev_line.count("	"):
					var line = str(character + ": " + x.replace("	", ""))
					dialogue_text.load_line(line)
					prev_line = line
					await dialogue_text.next_line
				else:
					pass
			else:
				var line = str(character + ": " + x.replace("	", ""))
				dialogue_text.load_line(line)
				prev_line = line
				await dialogue_text.next_line

	
func load_file(filename):
	var result = {}
	var file = FileAccess.open(filename, FileAccess.READ)
	var index = 1
	while not file.eof_reached():
		var line = file.get_line()
		result[str(index)] = line
		index += 1
	file.close()
	return result
