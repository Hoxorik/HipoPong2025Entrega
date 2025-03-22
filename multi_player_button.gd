extends Button



func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/pongEntrega1.tscn")


func _on_bot_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/pongContraOtroPlayer.tscn")


func _on_go_out_pressed() -> void:
	get_tree().quit()
