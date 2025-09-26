extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_jugar_pressed() -> void:
	print("Botón pulsado")
	get_tree().change_scene_to_file("res://scenes/super_mega_hot_potato.tscn")


func _on_controles_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/controls.tscn")


func _on_créditos_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn") # Replace with function body.
