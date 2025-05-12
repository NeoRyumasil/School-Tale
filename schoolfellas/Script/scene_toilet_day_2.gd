extends Node2D

var Faldo
var Guntur

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Faldo = get_node("Faldo/Animation")
	Guntur = get_node("Guntur/Animation")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Faldo.play("IdleAtas")
	Guntur.play("Idle")
	pass
