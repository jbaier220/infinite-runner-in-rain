extends Area2D

var original_height = 440.0
var jump_height = 240.0
var jump_speed = 5.0
var jumping = false

func _process(delta):
	if Input.is_action_just_pressed("jump"):
		jumping = true
	if jumping == true:
		position.y = lerp(position.y, jump_height, delta * jump_speed)
		await get_tree().create_timer(0.3).timeout
		position.y = lerp(position.y, original_height, delta * jump_speed)
		jumping = false
