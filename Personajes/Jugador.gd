extends CharacterBody2D

@export var move_speed : float = 100
@onready var animations = $AnimationPlayer

func update_animation():
	var direction = "DOWN"
	if velocity.x < 0 : direction = "RIGHT"
	elif velocity.x > 0 :direction = "LEFT"
	elif velocity.y <0 : direction = "UP"
	animations.play("walk"+direction)
	
func _physics_process(_delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	velocity = input_direction * move_speed
	
	move_and_slide()
	update_animation()
