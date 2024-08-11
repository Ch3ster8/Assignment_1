extends Node
@export var dialogueScene : PackedScene
var instance
var dialogue_text
var skip_lines = []
var reloop = true
func _process(delta):
	if Input.is_action_just_pressed("e"):
		load_tree("res://TestTree.txt")
func load_tree(tree):
	instance = dialogueScene.instantiate()
	add_child(instance)
	dialogue_text = get_child(0)
	var text = load_file("res://TestTree.txt")
	var character
	var prev_line
	for line_num in range(text.values().size()):
		var line = text.values()[line_num]
		if skip_lines.has(line_num):
			prev_line = line
			continue
		var next_line
		if text.values().size() > line_num + 1:
			next_line = text.values()[line_num + 1]
			if next_line == "":
				next_line = null
		if line != "":
			if prev_line:
				if skip_lines.has(line_num-1):
					if line.count("	") >= prev_line.count("	"):
						skip_lines.append(line_num)
						prev_line = line
						continue
					else:
						var inverse_array = skip_lines.duplicate()
						inverse_array.reverse()
						var prev_num = line_num
						for x in inverse_array:
							if x == prev_num-1:
								prev_num-=1
							else:
								break
						if line.count("	") >= text.values()[prev_num].count("	"):
							skip_lines.append(line_num)
							prev_line = line
							continue
			var charLine = line.replace("	", "")
			if charLine[0] == "-":
				character = line.replace("-", "")
				character = character.replace("	", "")
			elif character:
				if prev_line:
					if line.count("	") == prev_line.count("	"):
						await say_line(character, line, line_num, text)
					elif line.count("	") == prev_line.count("	") + 1:
						charLine = prev_line.replace("	", "")
						if charLine[0] == "-":
							await say_line(character, line, line_num, text)
				else:
					await say_line(character, line, line_num, text)
		prev_line = line
		
func say_line(character, line, line_num, text):
	if dialogue_text:
		var new_line = str(character + ": " + line.replace("	", ""))
		dialogue_text.load_line(new_line)
		if line[-1] != "?":
			await dialogue_text.next_line
		else:
			var indent_ammount = line.count("	") + 1
			var options = {}
			await dialogue_text.line_finished
			for new_line_num in range(text.values().size()):
				if new_line_num <= line_num:
					continue
				line = text.values()[new_line_num]
				if line == "":
					break
				if line.count("	") == indent_ammount:
					options[new_line_num] = line
					skip_lines.append(new_line_num)
				elif line.count("	") < indent_ammount:
					break
			for option in options:
				options[option] = options[option].replace("	", "")
			dialogue_text.load_options(options)
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
