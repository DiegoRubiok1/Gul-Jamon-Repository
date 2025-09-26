extends CharacterBody2D

signal temp_max_p1

var temperature = 0.0

const TEMPERATURE_AUGMENT = 5.0

signal ball_thrown

func _ready():
	process_mode = PROCESS_MODE_PAUSABLE
	

func _physics_process(delta: float) -> void:
	const SPEED = 400.0
	
	var direction = Input.get_vector("move_left_p1", "move_right_p1", "move_up_p1", "move_down_p1").normalized()
	velocity = direction * SPEED
	move_and_slide()
	
	if direction != Vector2.ZERO:
		var target_angle = direction.angle()
		rotation = lerp_angle(rotation, target_angle, 0.1)
	
	if Input.is_action_just_pressed("throw_p1"):
		throw()
		
	if Global.ball_player == "Player":
		temperature += TEMPERATURE_AUGMENT * delta
	else:
		temperature -= TEMPERATURE_AUGMENT * 0.25 * delta
	
	if temperature > 100.0:
		emit_signal("temp_max_p1")
	
func throw() -> void:
	emit_signal("ball_thrown")
