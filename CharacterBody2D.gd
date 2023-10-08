extends CharacterBody2D

@export var move_speed : float = 100
@export var hit_points : int = 5
@export var points : int = 0

func _physics_process(_delta):
	var input_direction = Vector2(0,
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	$HealthBar.value = hit_points
	$HealthLabel.text = "HP: %s" % hit_points
	#$ScoreLabel.text = "SCORE: %s" % points
	velocity = input_direction * move_speed	
	move_and_slide()

func get_Hit():
	hit_points -= 1
	print("HP: "+str(hit_points))

func _on_area_2d_area_entered(area):
	if area.tipo == "Agua":
		points+=1
		print("Points: "+str(points))
	if area.tipo == "Metano":
		get_Hit()
