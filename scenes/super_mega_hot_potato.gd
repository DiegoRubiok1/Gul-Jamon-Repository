extends Node2D


func _on_player_temp_max_p_1() -> void:
	%Player2Win.visible = true
	get_tree().paused = true


func _on_player_2_temp_max_p_2() -> void:
	%Player1Win.visible = true
	get_tree().paused = true
