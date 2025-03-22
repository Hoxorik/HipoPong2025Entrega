extends Area2D

func Area2DInputEvent(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			get_tree().change_scene_to_file("res://Escenes/pongEntrega1.tscn")
