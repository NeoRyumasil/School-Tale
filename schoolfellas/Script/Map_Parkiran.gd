extends Node2D

var player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalItems.isParkiran = true
	player = get_node("Characters/Player")
	_spawn()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _spawn():
	if GlobalItems.isCheckpointParkiran:
		player.position = GlobalItems.checkpoint
	pass
