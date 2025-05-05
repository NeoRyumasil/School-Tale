extends CharacterBody2D

var canInteract = false
var isChat = false
var dialog = preload("res://UI/Dialogs/dialog_box_andi.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
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
	
	var ui_node = get_tree().get_root().get_node("RuangKelas/UI")
	if not ui_node:
		print("Error: Node 'UI' tidak ditemukan! Pastikan sudah ditambahkan ke root scene.")
		return

	var dialogInstance = dialog.instantiate()
	if dialogInstance && !isChat:
		ui_node.add_child(dialogInstance)
		dialogInstance.position = Vector2(0, 0)  
		isChat = true
	else:
		print("Gagal membuat dialog!")
