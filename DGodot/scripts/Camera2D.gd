extends Camera2D

var target
export var ciblePerso = "Node2D/YSort/Player"

func _ready():
	target = get_node("/root/"+ciblePerso)
	
func _physics_process(delta):
	global_position = target.global_position
