extends KinematicBody2D

const SPEED = 750
const GRAVITY = 1000
const JUMP_FORCE = -500

var velocity = Vector2()

func _physics_process(delta):
	var move_direction = Vector2()

	if Input.is_action_pressed("move_left"):
		move_direction.x -= 1
	if Input.is_action_pressed("move_right"):
		move_direction.x += 1

	move_direction = move_direction.normalized()

	velocity.y += GRAVITY * delta
	velocity.x = move_direction.x * SPEED

	if is_on_floor() and Input.is_action_pressed("jump"):
		velocity.y = JUMP_FORCE

	velocity = move_and_slide(velocity, Vector2(0, -1))
