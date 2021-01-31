extends Control

func _ready():
	OS.center_window()
#	OS.window_maximized = true
	$Timer.start(2)

func _on_Timer_timeout():
	get_tree().change_scene("res://DGodot/scenes/Menu.tscn")
