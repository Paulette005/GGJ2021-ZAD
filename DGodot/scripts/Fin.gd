extends Control

func _ready():
	$Timer2.start(2)

func _on_Timer2_timeout():
	get_tree().change_scene("res://DGodot/scenes/Menu.tscn")
