extends CharacterBody2D

var canInteract = false
var isChat = false
var previous_position = Vector2.ZERO
@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Animation.play("Idle")
	previous_position = position
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("Interact") && canInteract:
		_interaction()
	
	var direction_vector = position - previous_position
	previous_position = position
	
	if direction_vector.x > 0:
		$Animation.play("JalanKiri")
	elif direction_vector.x < 0:
		$Animation.play("JalanKanan")
	elif direction_vector.y > 0:
		$Animation.play("JalanBawah")
	elif direction_vector.y < 0:
		$Animation.play("JalanAtas")
	else:
		$Animation.pause()
	
	move_and_slide()

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
	
