extends Node

var dialogues_data

func _ready():
	var dialoguedatas_file = File.new()
	dialoguedatas_file.open("res://DGodot/data/narrationSouvenirs.json",File.READ)
	var dialoguedatas_json = JSON.parse(dialoguedatas_file.get_as_text())
	dialoguedatas_file.close()
	dialogues_data = dialoguedatas_json.result
	print(dialogues_data)
