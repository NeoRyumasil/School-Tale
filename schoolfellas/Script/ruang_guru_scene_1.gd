extends Node2D

var actTrigger = false

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

var player
var pakJaka
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_node("Player/Animation")
	pakJaka = get_node("Pak Jaka/Animation")
	
	pakJaka.play("IdleKiri")
	player.play("IdleKanan")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !actTrigger :
			dialogStart = "Act1RuangGuru"
			DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day2.dialogue"), dialogStart)
			actTrigger = true
	pass
