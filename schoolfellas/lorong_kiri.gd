extends Node2D

var actTrigger = false
var doneTriggerPerpus = false

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalItems.isDay2 && GlobalItems.Day2AndiTriggerPerpus && !doneTriggerPerpus:
		if !actTrigger :
				dialogStart = "Act2LorongSekolah"
				DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day2.dialogue"), dialogStart)
				actTrigger = true
	pass
