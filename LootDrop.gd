extends Marker2D

var loot_randomizer: RandomNumberGenerator = RandomNumberGenerator.new()
@onready var coin = preload("res://coin.tscn")

func _ready() -> void:
	_drop_loot()

func _drop_loot():
	loot_randomizer.randomize()
	var loot_percent: int = loot_randomizer.randi_range(0, 2)
	
	if loot_percent >= 0:
		for i in range(loot_randomizer.randi_range(1,2)):
			#var coin_instance: RigidBody2D = coin.instance()
			#add_child(coin_instance)
