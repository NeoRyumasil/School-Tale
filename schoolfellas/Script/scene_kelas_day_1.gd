extends Node2D
var player 
var Edi_Follower
var Guntur_Follower
var Nelly_Follower
var Zara_Follower

var actTrigger = false

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_node("TileMaps/Player")
	Edi_Follower = get_node("Characters/Path_Edi/Edi_Follower")
	Nelly_Follower = get_node("Characters/Path_Nelly/Nelly_Follower")
	Zara_Follower = get_node("Characters/Path_Zara/Zara_Follower")
	Guntur_Follower = get_node("Characters/Path_Guntur/Guntur_Follower")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var move_speed = 0.5
	Edi_Follower.progress_ratio += move_speed * delta
	Nelly_Follower.progress_ratio += move_speed * delta
	Zara_Follower.progress_ratio += move_speed * delta
	Guntur_Follower.progress_ratio += move_speed * delta
	await $Timer.timeout
	
	if !actTrigger :
		dialogStart = "Act2RuangKelas"
		DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day1.dialogue"), dialogStart)
		actTrigger = true
	
	
