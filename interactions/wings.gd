extends StaticBody2D

var entered = false
@onready var label = $Label




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if entered==true:
		if Input.is_action_just_pressed("interact"):
			#Cambio de escena
						get_tree().change_scene_to_file("res://scenes/minijuego1.tscn")


func _on_area_2d_body_entered(body):
	#Mostrar mensaje
	entered = true
	label.show()

	


func _on_area_2d_body_exited(body):
	entered = false
	label.hide()
