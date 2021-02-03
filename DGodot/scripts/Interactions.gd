extends Node2D

var playerZone = false
var IDSouvenirs
var indexArray = 0
var NbrDial = 0
var GestionDial
var Narration = 0
var valeur

onready var Dialogues = get_node("/root/Node2D/CanvasLayer/Dialogues")
onready var BoiteDialogues = get_node("/root/Node2D/CanvasLayer/Dialogues/BoiteDialogues")

func _ready():
	get_node("Area2D").connect("body_entered",self,"on_body_entered")
	get_node("Area2D").connect("body_exited",self,"on_body_exited")

func on_body_entered(body):
	if body.name == "Player":
		playerZone = true
		GestionDial = IDSouvenirs
		if IDSouvenirs == 0:
			parle()

func on_body_exited(body):
	if body.name == "Player":
		playerZone = false
		Dialogues.visible = false
		indexArray = 0

func _input(event):
	if event.is_action_pressed("ui_accept") && playerZone:
		parle()

func parle():
	if indexArray < BoiteDialogues.DialSouvenir[GestionDial].size():
		if IDSouvenirs == 0:
			if Narration == 0:
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			elif Narration == 6:
				GestionDial = 6
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			elif Narration > 0 && Narration < 6:
				GestionDial = 5
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
		else:
			if NbrDial == 0:
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			else:
				GestionDial = 7
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
				
		indexArray += 1
		Dialogues.visible = true
	else:
		Dialogues.visible = false
		indexArray = 0
		if NbrDial == 0:
			NbrDial += 1
		score()

func score():
	Narration += valeur
	print(Narration)
