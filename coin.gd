extends Area2D

@export var value = 1
var score = 0


func _on_mouse_entered() -> void:
	score += value
	print(score)
	self.queue_free()
