extends TextureProgressBar

func _process(delta: float) -> void:
	value = %Player.temperature
