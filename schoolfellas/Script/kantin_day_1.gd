extends Node2D

var kios1
var kios2
var kios3
var tongSampah
var tongSampahInteraction

var npc1
var npc2
var npc3
var npc4
var player

var actTrigger = false

@export var dialogResource = DialogueResource
@export var dialogStart : String = "start"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalItems.Day1SceneTriggerKantin = true
	kios1 = get_node("Object/Kios4/Sprite")
	kios2 = get_node("Object/Kios5/Sprite")
	kios3 = get_node("Object/Kios6/Sprite")
	var objects = [kios1, kios2, kios3]
	
	tongSampah = get_node("Object/TempatSampahKecilSamping/Starlion")
	tongSampahInteraction = get_node("Object/TempatSampahKecilSamping/Area2D")
	
	npc1 = get_node("Characters/NPC1/Animation")
	npc2 = get_node("Characters/NPC2/Animation")
	npc3 = get_node("Characters/NPC3/Animation")
	npc4 = get_node("Characters/NPC4/Animation")
	
	player = get_node("Characters/Player/Animation")
	
	for i in objects.size():
		objects[i].flip_h = true
	
	npc1.play("Idle_kiri")
	npc2.play("Idle_kiri")
	npc3.play("Idle_kanan")
	npc4.play("Idle_kanan")
	
	player.play("IdleAtas")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if GlobalItems.Day1SceneTriggerKelas && !GlobalItems.haveLiontin:
		tongSampah.visible = true
	else:
		tongSampah.visible = false
	
	if !actTrigger :
		dialogStart = "Act1Kantin"
		DialogueManager.show_example_dialogue_balloon(load("res://Script/DialogCharacter/Day1.dialogue"), dialogStart)
		actTrigger = true
