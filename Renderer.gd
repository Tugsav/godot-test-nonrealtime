extends Node2D

var frame = 0

func _ready():
	set_process(true)

func _process(delta):
	render()

func render():
	print(frame)
	
	VisualServer.force_draw()
	
	var screenshot = get_viewport().get_texture().get_data()
	screenshot.flip_y()
	screenshot.save_png("frames/"+str(frame))
	
	frame += 1