extends Node2D

var Andi

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Andi = get_node("Andi/Animation")
	GlobalItems.isDay2 = true
	GlobalItems.isDay1 = false
	
	Andi.play("Idle_kanan")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
