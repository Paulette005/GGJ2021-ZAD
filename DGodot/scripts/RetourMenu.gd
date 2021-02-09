extends Node2D

export var Narration = 0

func _ready():
	pass # Replace with function body.

func _process(delta):
		if Input.is_action_pressed("ui_cancel"):
			get_tree().change_scene("res://DGodot/scenes/Menu.tscn")
