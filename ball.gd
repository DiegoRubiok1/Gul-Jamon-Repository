extends Area2D

var picked = false

var speed = 1200.0
const DECELERATION = 900.0

var target_node = null

func _physics_process(delta: float) -> void:
	if picked:
		position = target_node.global_position
	else:
		if speed > 0.0:
			speed = max(speed - DECELERATION * delta, 0)
			var direction = Vector2.RIGHT.rotated(rotation)
			position += direction * speed * delta

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		picked = true
		target_node = body
