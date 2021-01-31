extends TextureButton

func _input(event):
	
		$Jouer.grabfocus()

func _on_Jouer_pressed():
	get_tree().change_scene("res://DGodot/scenes/ScenePrincipale_Zad.tscn")

func _on_Quitter_pressed():
	get_tree().quit()
