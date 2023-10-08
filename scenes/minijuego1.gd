extends Node2D
var score: int


func _process(delta):
	score = get_node("JugadorGotas").points
	get_node("ScoreLabel").text = "SCORE: %s" % score
