extends Node2D

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Start"):
<<<<<<< HEAD
		get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")
=======
		get_tree().change_scene_to_file("res://Scenes/player.tscn")
>>>>>>> 2ae81e9f8c858d65d588889fb24704a94a3cc5ec
	if Input.is_action_just_pressed("Exit"):
		get_tree().quit()

func _on_exit_pressed() -> void:
	get_tree().quit()


func _on_start_pressed() -> void:
<<<<<<< HEAD
	get_tree().change_scene_to_file("res://Scenes/node_2d.tscn")
=======
	get_tree().change_scene_to_file("res://Scenes/player.tscn")
>>>>>>> 2ae81e9f8c858d65d588889fb24704a94a3cc5ec
