extends Area2D

@export var value = 1
var score = 0


func _on_mouse_entered() -> void:
	score += value
	print(score)
	self.queue_free()
	
#func _ready():
	#%AnimationPlayer.play("coin spin")
	#await %AnimationPlayer.animation_finished
	#queue_free()
