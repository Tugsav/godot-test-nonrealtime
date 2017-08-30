extends Sprite

func _ready():
	set_process(true)

func _process(delta):
	move_local_x(100*delta)
