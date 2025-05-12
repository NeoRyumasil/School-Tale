extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" && !GlobalItems.Day2AndiTriggerPerpus:
		get_tree().change_scene_to_file("res://toilet.tscn")
	elif body.name == "Player" && GlobalItems.Day2AndiTriggerPerpus:
		get_tree().change_scene_to_file("res://scene_toilet_day_2.tscn")
	pass # Replace with function body.
