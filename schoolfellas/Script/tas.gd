extends Area2D

var canInteract = false



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Interact") && canInteract:
		_interaction()
	
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		canInteract = true
		$Tutorial.visible = true

func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		canInteract = false
		$Tutorial.visible = false

func _interaction():
	GlobalItems.haveTasHitam = true
	queue_free()
