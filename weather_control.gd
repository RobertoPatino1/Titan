extends StaticBody2D

var currentWeather = "rain"
# Called when the node enters the scene tree for the first time.
func _ready():
	if currentWeather=="none":
		$rain.visible = false
		$raincolor.visible = false
	else:
		$rain.visible = true
		$raincolor.visible = true
	
