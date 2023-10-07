extends Area2D
@export var move_speed : float = 350

func _physics_process(delta):
	var direction = Vector2.LEFT
	
	var input_direction = Input.get_action_strength("right") - Input.get_action_strength("left")
	global_position += (move_speed+(100*(input_direction))) * direction * delta
	
func hit():
	print("Hit!")
	
	


func _on_area_entered(area):
	hit()


func _on_body_entered(body):
	hit()
