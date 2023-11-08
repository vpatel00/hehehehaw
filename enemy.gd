extends KinematicBody2D

func _ready():
	set_process_input(true)

func _input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed:
			if is_mouse_hovered():
				queue_free()

func is_mouse_hovered() -> bool:
	var mouse_pos = get_global_mouse_position()
	var enemy_rect = Rect2(global_position, Vector2(75, 100))
	return enemy_rect.has_point(mouse_pos)
