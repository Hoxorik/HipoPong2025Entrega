extends CharacterBody2D
var speed = 500
func _physics_process(delta):
	velocity.y = 0
	
	if Input.is_action_pressed("KEY_W"):
		velocity.y = -1
	elif Input.is_action_pressed("KEY_S"):
		velocity.y = 1
	
	velocity.y*= speed
	move_and_collide(velocity * delta)
