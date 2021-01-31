extends KinematicBody2D

export var vitesse = 275
var mouvement = Vector2 (0,0)

func _ready():
	pass

func _physics_process(delta):
	mouvement = Vector2 (0,0)
	
	# Lien avec le script Zindex
	#z_index = global_position.y
	
	if Input.is_action_pressed("ui_up"):
		mouvement.y -= 1
	if Input.is_action_pressed("ui_down"):
		mouvement.y += 1
	if Input.is_action_pressed("ui_left"):
		mouvement.x -= 1
		$AnimatedSprite.flip_h = true
	if Input.is_action_pressed("ui_right"):
		mouvement.x += 1
		$AnimatedSprite.flip_h = false
	
	if mouvement == Vector2 (0,0):
		$AnimatedSprite.play("idle")
	else:
		$AnimatedSprite.play("walk")
		
	mouvement = mouvement.normalized()
	
	mouvement = move_and_slide(mouvement*vitesse)
