extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" && !GlobalItems.Day2AndiTriggerGuru:
		get_tree().change_scene_to_file("res://Object/perpustakaan.tscn")
	elif body.name == "Player" && GlobalItems.Day2AndiTriggerGuru && !GlobalItems.Day2AndiTriggerToilet:
		get_tree().change_scene_to_file("res://perpustakaan_scene_1.tscn")
	elif  body.name == "Player" && GlobalItems.Day2AndiTriggerToilet:
		get_tree().change_scene_to_file("res://perpustakaan_scene_3.tscn")
	
	if body.name == "Player" && GlobalItems.Day2NellyTriggerKantin:
		get_tree().change_scene_to_file("res://perpustakaan_scene_4.tscn")
	
	pass # Replace with function body.
