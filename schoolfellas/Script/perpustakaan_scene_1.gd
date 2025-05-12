extends Node2D

var actTrigger = false
var Player
var Andi

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Andi = get_node("Andi/Animation")
	Player = get_node("Player/Animation")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Andi.play("Idle_Atas")
	Player.play("IdleAtas")
		
	if !actTrigger :
		dialogStart = "Act1Perpustakaan"
		DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day2.dialogue"), dialogStart)
		actTrigger = true
	pass
