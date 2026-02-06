extends Node2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Start"):
		get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")
	if Input.is_action_just_pressed("Exit"):
		get_tree().quit()

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")
