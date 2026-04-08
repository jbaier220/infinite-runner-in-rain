extends CharacterBody2D

var velocity = Vector2.ZERO

var gravity = 1200.0
var jump_force = -400.0

func _physics_process(delta):
	# gravity
	velocity.y += gravity * delta

	# jump
	if is_on_floor() and Input.is_action_just_pressed("jump"):
		velocity.y = jump_force

	# Move
	velocity = move_and_slide()
