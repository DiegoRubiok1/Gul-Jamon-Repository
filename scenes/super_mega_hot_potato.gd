extends Node2D

var game_over := false

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS

func _on_player_temp_max_p_1() -> void:
	%Player2Win.visible = true
	get_tree().paused = true
	game_over = true

func _on_player_2_temp_max_p_2() -> void:
	%Player1Win.visible = true
	get_tree().paused = true
	game_over = true

func _input(event: InputEvent) -> void:
	if game_over and event.is_action_pressed("restart"):
		get_tree().paused = false
		get_tree().reload_current_scene()
	
