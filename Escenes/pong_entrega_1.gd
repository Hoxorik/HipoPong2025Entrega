extends Node2D

const center =  Vector2(620, 340)
var playerScore = -2
var botScore = -2
func _on_left_wall_body_entered(body):
	botScore += 1
	$BotScore.text = str(botScore)
	finishGame()
	
func _on_right_wall_body_entered(body):
	playerScore += 1
	$Player1Score.text = str(playerScore)
	finishGame()
	
func finishGame():
	if playerScore == 3 || botScore == 3:
		get_tree().change_scene_to_file("res://Escenes/menuInicio.tscn")
	else:
		reset()
func reset():
	$Ball.position = center
	$Ball.call("set_velocity_ball")

	$Player1.position.y = center.y
	$bot.position.y = center.y


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/menuInicio.tscn")
