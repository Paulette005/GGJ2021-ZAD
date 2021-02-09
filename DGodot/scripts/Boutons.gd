extends TextureButton

#func _input(event):
	
#		$grabfocus()

func _ready():
	get_node("/root/Control/VBoxContainer/Jouer").grab_focus()

func _on_Jouer_pressed():
	get_tree().change_scene("res://DGodot/scenes/scene_LD2.tscn")

func _on_Quitter_pressed():
	get_tree().quit()
