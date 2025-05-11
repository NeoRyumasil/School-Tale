extends Node2D

var kios1
var kios2
var kios3
var tongSampah


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	kios1 = get_node("Object/Kios4/Sprite")
	kios2 = get_node("Object/Kios5/Sprite")
	kios3 = get_node("Object/Kios6/Sprite")
	tongSampah = get_node("Object/TempatSampahKecilSamping/Starlion")
	var objects = [kios1, kios2, kios3]
	
	for i in objects.size():
		objects[i].flip_h = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalItems.Day1SceneTriggerKelas && !GlobalItems.haveLiontin:
		tongSampah.set_visible(true)
	else:
		tongSampah.set_visible(false)
	pass
