extends StaticBody2D

var canInteract = false
var isHit = false
@export var dialogResource = DialogueResource
@export var dialogStart : String = "Start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact") && canInteract:
		_interaction()
	
	$Starlion/Animation.play("default")
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" && !isHit:
		canInteract = true
		isHit = true
		$Tutorial.visible = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		canInteract = false
		isHit = false
		$Tutorial.visible = false

func _interaction():
	canInteract = false
	DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/BakSampah.dialogue"), dialogStart)
