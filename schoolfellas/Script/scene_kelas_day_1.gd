extends Node2D
var player 
var Edi
var Guntur
var Nelly
var Zara
var Andi

var actTrigger = false

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_node("TileMaps/Player")
	Andi = get_node("Characters/Andi/Animation")
	Edi = get_node("Characters/Edi/Animation")
	Nelly = get_node("Characters/Nelly/Animation")
	Zara = get_node("Characters/Zara/Animation")
	Guntur = get_node("Characters/Guntur/Animation")
	
	Andi.play("Idle_kanan")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	Edi.play("IdleKiri")
	Nelly.play("IdleKiri")
	Guntur.play("IdleKiri")
	Zara.play("IdleKiri")
	
	if !actTrigger :
		dialogStart = "Act2RuangKelas"
		DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day1.dialogue"), dialogStart)
		actTrigger = true
	
	
