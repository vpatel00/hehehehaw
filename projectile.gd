extends KinematicBody2D

const SPEED = 500  # Adjust the speed as needed

var direction = Vector2()

func _ready():
	direction = Vector2(1, 0)  # Set the initial direction (right), adjust as needed

func _physics_process(delta):
	move_and_slide(direction * SPEED)
