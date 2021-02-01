extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	z_as_relative = false
	z_index = global_position.y / 2
	print(z_index)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
