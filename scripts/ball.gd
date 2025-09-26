extends Area2D


var picked = false

var speed = 1200.0
const DECELERATION = 900.0

var target_node = null

func _process(delta: float) -> void:
	pass
	
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
		
		Global.ball_player = "Player" # Cambiamos el jugador que tiene la bola
		picked = true
		target_node = body.get_node("BallHold")
		
		# Fix para que se pueda volver a tirar la bola, no sé como funciona, no tocar
		var sig = body.ball_thrown
		var method_callable = Callable(self, "_on_player_ball_thrown")
		if not sig.is_connected(method_callable):
			sig.connect(method_callable)
		
	
	elif body.name == "Player2":
		
		Global.ball_player = "Player2"
		picked = true
		target_node = body.get_node("BallHold")
		
		# Fix para que se pueda volver a tirar la bola, no sé como funciona, no tocar
		var sig = body.ball_thrown
		var method_callable = Callable(self, "_on_player_2_ball_thrown")
		if not sig.is_connected(method_callable):
			sig.connect(method_callable)
	
	else:
		rotation = rotation - PI

func _on_player_ball_thrown() -> void:
	if picked:
		picked = false
		
		if target_node:
			var player = target_node.get_parent()
			speed = 1200.0
			rotation = player.rotation

func _on_player_2_ball_thrown() -> void:
	if picked:
		picked = false
		
		if target_node:
			var player = target_node.get_parent()
			speed = 1200.0
			rotation = player.rotation
