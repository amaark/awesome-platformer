extends CharacterBody2D

const WALK_VELOCITY := 200.0
const WALK_ACCELERATION := 750.0

func handle_movement(delta: float) -> void:
	var input_direction := signf(Input.get_axis("move_left", "move_right"))

	if input_direction:
		velocity.x = move_toward(velocity.x, input_direction * WALK_VELOCITY, WALK_ACCELERATION * delta)
	else:
		velocity.x = move_toward(velocity.x, 0, WALK_ACCELERATION * delta)
