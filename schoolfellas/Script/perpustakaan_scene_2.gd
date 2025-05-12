extends Node2D

var actTrigger = false
var Player

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Player = get_node("Player/Animation")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Player.play("IdleKanan")
		
	if !actTrigger :
		dialogStart = "Act2Perpustakaan"
		DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day2.dialogue"), dialogStart)
		actTrigger = true
	pass
