extends Node2D

var actTrigger = false
var pakJaka

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pakJaka = get_node("Pak Jaka/Animation")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalItems.Day1SceneTriggerKelas &&  GlobalItems.Day2AndiTriggerLapangan:
		pakJaka.play("IdleKiri")
		
		if !actTrigger :
			dialogStart = "Act1LorongSekolah"
			DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day2.dialogue"), dialogStart)
			actTrigger = true
	pass
