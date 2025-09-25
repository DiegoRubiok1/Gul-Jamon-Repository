extends CharacterBody2D

const SPEED = 400.0

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("move_left_p1", "move_right_p1", "move_up_p1", "move_down_p1").normalized()
	velocity = direction * SPEED
	move_and_slide()
	
	if direction != Vector2.ZERO:
		var target_angle = direction.angle()
		rotation = lerp_angle(rotation, target_angle, 0.1)
		
