extends StaticBody2D

@onready var interaction_area = $interaction_area
@onready var sprite = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	#interaction_area.interact = Callable(self,"_toggle_alas")
	pass


func _toggle_alas():
	sprite.frame = 1 if sprite.frame == 0 else 0
	
