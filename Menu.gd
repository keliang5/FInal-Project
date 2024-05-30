extends Control



func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://survivors_games.tscn")


func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://options.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
