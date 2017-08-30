extends Node2D

onready var timePassed = get_node("GameTimePassed")
onready var fixed_process_calls = get_node("FixedProcessCalls")
onready var process_calls = get_node("ProcessCalls")
onready var system_fps = get_node("SystemFps")

onready var process_n = 0
onready var fixed_process_n = 0
onready var curTime = 0

func _ready():
	set_process(true)
	set_fixed_process(true)

func _process(delta):
	curTime += delta
	process_n += 1
	system_fps.set_text("System FPS : "+str(Engine.get_frames_per_second()))
	timePassed.set_text("GameTimePassed : "+str(curTime))
	process_calls.set_text("Process calls : "+str(process_n))

func _fixed_process(delta):
	fixed_process_n += 1
	fixed_process_calls.set_text("Fixed Process Calls : "+str(fixed_process_n))