extends Control

var pauseMenu

func _ready() -> void:
	pauseMenu = get_node("PauseMenu")

func _on_pause_button_pressed() -> void:
	Engine.time_scale = 0
	pauseMenu.visible = true
	pass # Replace with function body.


func _on_continue_pressed() -> void:
	Engine.time_scale = 1
	pauseMenu.visible = false
	pass # Replace with function body.


func _on_exit_pressed() -> void:
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://main_menu.tscn")
	pass # Replace with function body.
