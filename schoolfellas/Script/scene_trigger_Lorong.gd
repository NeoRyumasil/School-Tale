extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if GlobalItems.isDay1:
		if body.name == "Player" && GlobalItems.haveTasHitam:
			get_tree().change_scene_to_file("res://map_parkiran_out.tscn")
		elif body.name == "Player" && !GlobalItems.haveTasHitam :
			get_tree().change_scene_to_file("res://Intro_out.tscn")
	if GlobalItems.isDay2:
		if body.name == "Player":
			get_tree().change_scene_to_file("res://map_parkiran_out.tscn")
	pass # Replace with function body.
