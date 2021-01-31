extends Sprite

var playerZone = false
var ID

onready var Dialogues = get_node("/root/Node2D/CanvasLayer/Dialogues")
onready var BoiteDialogues = get_node("/root/Node2D/CanvasLayer/Dialogues/BoiteDialogues")

func _ready():
	get_node("Area2D").connect("body_entered",self,"on_body_entered")
	get_node("Area2D").connect("body_exited",self,"on_body_exited")

func on_body_entered(body):
	if body.name == "Player":
		playerZone = true
		print("playerZone true")
		print(ID)

func on_body_exited(body):
	if body.name == "Player":
		playerZone = false
		print("playerZone false")

func _input(event):
	if event.is_action_pressed("ui_accept") && playerZone:
		parle()

func parle():
	Dialogues.visible = true
