extends StaticBody2D

var actTrigger = false

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	if body.name == "Player":
		if !actTrigger :
			dialogStart = "Start"
			DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Skip.dialogue"), dialogStart)
			actTrigger = true
	pass # Replace with function body.
