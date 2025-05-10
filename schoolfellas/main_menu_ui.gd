extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Intro.tscn")

func _on_continue_pressed() -> void:
	pass 


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
