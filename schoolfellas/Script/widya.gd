extends CharacterBody2D

var canInteract = false
var isChat = false
@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Animation.play("Idle")
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact") && canInteract:
		_interaction()

func _on_interaction_area_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		$Tutorial.visible = true
		canInteract = true

func _on_interaction_area_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		$Tutorial.visible = false
		canInteract = false
		isChat = false

func _interaction():
	$Tutorial.visible = false
	if GlobalItems.isDay1:
		dialogStart = "Act1RuangKelas"
		dialogResource = load("res://Script/DialogCharacter/Day1.dialogue")
	elif GlobalItems.isDay2 && GlobalItems.Day2AndiTriggerToilet:
		dialogResource = load("res://Script/DialogCharacter/Day2.dialogue")
		dialogStart = "Act3Perpustakaan"
		
	if GlobalItems.isDay2 && GlobalItems.Day2NellyTriggerKantin:
		dialogResource = load("res://Script/DialogCharacter/Day2.dialogue")
		dialogStart = "Act4Perpustakaan"
		
	if !isChat:
		DialogueManager.show_example_dialogue_balloon(dialogResource, dialogStart)
		isChat = true
	
