extends Node2D

var playerZone = false
var IDSouvenirs
var Narration = 0

onready var Dialogues = get_node("/root/Node2D/CanvasLayer/Dialogues")
onready var BoiteDialogues = get_node("/root/Node2D/CanvasLayer/Dialogues/BoiteDialogues")

func _ready():
	get_node("Area2D").connect("body_entered",self,"on_body_entered")
	get_node("Area2D").connect("body_exited",self,"on_body_exited")

func on_body_entered(body):
	if body.name == "Player":
		playerZone = true
		BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[IDSouvenirs]
		if IDSouvenirs == 0:
			parle()

func on_body_exited(body):
	if body.name == "Player":
		playerZone = false
		Dialogues.visible = false

func _input(event):
	if event.is_action_pressed("ui_accept") && playerZone:
		parle()

func parle():
	if IDSouvenirs == 0:
		if Narration == 0:
			BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[Narration]
		elif Narration == 6:
			BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[Narration]
		elif Narration == 5:
			BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[Narration]
	else:
		BoiteDialogues.Souvenirs = BoiteDialogues.DialSouvenir[IDSouvenirs]
	Dialogues.visible = true
