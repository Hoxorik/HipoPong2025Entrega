extends Node2D

const center =  Vector2(620, 340)
var playerScore = -2
var player2Score = -2

func finishGame():
	if playerScore == 3 || player2Score == 3:
		get_tree().change_scene_to_file("res://Escenes/menuInicio.tscn")
	else:
		reset()
func reset():
	$Ball.position = center
	$Ball.call("set_velocity_ball")

	$Player1.position.y = center.y
	$Player2.position.y = center.y


func _on_right_wall_body_entered(body: Node2D) -> void:
	playerScore += 1
	$Player1Score.text = str(playerScore)
	finishGame()
	# Replace with function body.


func _on_left_wall_body_entered(body: Node2D) -> void:
	player2Score += 1
	$Player2Score.text = str(player2Score)
	finishGame()
	


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/menuInicio.tscn")
