extends CharacterBody2D

@export var value = 1
var score = 0

var health = 3

@onready var player = get_node("/root/Game/Player")

func _ready():
	%Slime.play_walk()


func _physics_process(delta):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 300.0
	move_and_slide()

func take_damage():
	health -=1
	%Slime.play_hurt()
	
	if health == 0:
		queue_free()
		
		const coin_scene = preload("res://coin.tscn")
		var coin = coin_scene.instantiate()
		get_parent().add_child(coin)
		coin.global_position = global_position 
		
		const SMOKE_SCENE = preload("res://smoke_explosion/smoke_explosion.tscn")
		var smoke = SMOKE_SCENE.instantiate()
		get_parent().add_child(smoke)
		smoke.global_position = global_position

func _on_mouse_entered(coin) -> void:
	score += value
	print(score)
	self.queue_free()
