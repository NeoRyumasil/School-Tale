extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player" && GlobalItems.Day1SceneTriggerKelas && !GlobalItems.haveSampah && GlobalItems.isDay1:
		get_tree().change_scene_to_file("res://kantin_day_1.tscn")
	elif body.name == "Player" && GlobalItems.isDay2 && !GlobalItems.Day2NellyTriggerKantin:
		get_tree().change_scene_to_file("res://kantin_day_2_act_1.tscn")
	elif body.name == "Player":
		get_tree().change_scene_to_file("res://kantin.tscn")
	pass # Replace with function body.
