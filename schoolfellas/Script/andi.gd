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
	
		if !isChat:
			DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day1.dialogue"), dialogStart)
			isChat = true
	
	elif GlobalItems.isDay2:
		if !GlobalItems.Day2AndiTriggerGuru && !GlobalItems.Day2AndiTriggerLapangan:
			dialogStart = "Act1Lapangan"
		elif GlobalItems.Day2AndiTriggerLapangan && GlobalItems.Day2AndiTriggerGuru && GlobalItems.Day2AndiTriggerPerpus:
			dialogStart = "Act1Gudang"
		if !isChat:
			DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day2.dialogue"), dialogStart)
			isChat = true
		
