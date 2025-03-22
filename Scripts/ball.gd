extends CharacterBody2D
var speed = 400
func _ready():
	set_velocity_ball()
	
func set_velocity_ball():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
		
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1
		
	velocity *= speed
		
	
func _physics_process(delta):
	var collInfo = move_and_collide(velocity * delta)
	if collInfo:
		velocity = velocity.bounce(collInfo.get_normal())


func _on_right_wall_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_left_wall_body_entered(body: Node2D) -> void:
	pass # Replace with function body.
