extends Control

var score = 0
@onready var score_count = get_node("/root/Game/CanvasLayer2/Counter/ScoreCount")

func set_score(new_score: int) -> void:
	score += 1
	score_count.text = "x" + str(score)
