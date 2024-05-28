extends Node2D

@onready var player_death: AudioStreamPlayer = $"Player death"


func spawn_mob():
	var new_mob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	new_mob.global_position = %PathFollow2D.global_position
	add_child(new_mob)
	
	
	


func _on_timer_timeout():
	spawn_mob()


func _on_player_health_depleted():
	$"Bg noise".stop()
	player_death.play()
	%GameOver.visible = true
	get_tree().paused = true
#merged
