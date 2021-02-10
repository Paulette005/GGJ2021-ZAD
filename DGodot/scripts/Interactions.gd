extends Node2D

var playerZone = false
var IDSouvenirs
var GestionDial
var indexArray = 0
var NbrDial = 0

var RandomDial = RandomNumberGenerator.new()

onready var Dialogues = get_node("/root/Node2D/CanvasLayer/Dialogues")
onready var BoiteDialogues = get_node("/root/Node2D/CanvasLayer/Dialogues/BoiteDialogues")
onready var Interaction = get_node("/root/Node2D/CanvasLayer/Interaction")
onready var Narration = (get_node("/root/Node2D"))

func _ready():
	get_node("Area2D").connect("body_entered",self,"on_body_entered")
	get_node("Area2D").connect("body_exited",self,"on_body_exited")

func on_body_entered(body):
	if body.name == "Player":
		playerZone = true
		if IDSouvenirs != 0:
			Interaction.visible = true
		GestionDial = IDSouvenirs
		print(IDSouvenirs)
		print("Narration: ", Narration.Narration)
		if IDSouvenirs == 0:
			indexArray = 0
			parle()

func on_body_exited(body):
	if body.name == "Player":
		playerZone = false
		Interaction.visible = false
		Dialogues.visible = false
		indexArray = 0

func _input(event):
	if event.is_action_pressed("ui_accept") && playerZone:
		parle()
		Interaction.visible = false

func parle():
	if indexArray < BoiteDialogues.DialSouvenir[GestionDial].size():
		if IDSouvenirs == 0:
			if NbrDial == 0:
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			if NbrDial == 1 && Narration.Narration < 10:
				GestionDial = 10
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			else:
				GestionDial = 11
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			
		else:
			if NbrDial == 0:
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
			else:
				RandomDial.randomize()
				GestionDial = RandomDial.randi_range(12,13)
				BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[GestionDial][indexArray]
				
		indexArray += 1
		Dialogues.visible = true
	else:
		Dialogues.visible = false
		indexArray = 0
		if IDSouvenirs <= 9:
			if NbrDial == 0:
				NbrDial += 1
				Narration.Narration += 1
