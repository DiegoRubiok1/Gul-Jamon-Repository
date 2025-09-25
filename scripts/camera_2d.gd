extends Camera2D

@onready var p1 = get_parent().get_node("Player")
@onready var p2 = get_parent().get_node("Player2")

var zoommin = 0.1
var zoommax = 1

func _physics_process(delta: float) -> void:
	position = (p1.position + p2.position) / Vector2(2, 2)

	var dist_x = abs(p1.position.x - p2.position.x)
	var new_zoom = 500.0 / (dist_x + 1.0)  # Inverse distance logic
	
	new_zoom = clamp(new_zoom, zoommin, zoommax)
	
	zoom.x = new_zoom
	zoom.y = new_zoom
