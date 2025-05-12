extends Node2D

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"
var actTrigger

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if !actTrigger :
		dialogStart = "Start"
		DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Ending.dialogue"), dialogStart)
		actTrigger = true
	pass
