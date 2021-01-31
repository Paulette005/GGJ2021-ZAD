extends Control

var DialSouvenir = ["premier souvenir avec la route.",
			"deuxième souvenir ave les barricades",
			"troisième souvenir avec les ruines champignons.",
			"quatrième souvenir",
			"cinquième, etc, etc.."]
var ID

func _process(delta):
		$RichTextLabel.bbcode_text= DialSouvenir[1]
