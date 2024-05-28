extends RigidBody2D

@export var value = 1
var score = 0

var impulse_randomizer: RandomNumberGenerator = RandomNumberGenerator.new()

func _ready() -> void:
	impulse_randomizer.randomize()
	var impulse: Vector2 = Vector2(impulse_randomizer.randi_range(-10, 10), impulse_randomizer.randi_range(-150, -180))
	self.apply_impulse(self.position, impulse)
	
	

func _on_area_2d_mouse_entered() -> void:
	score += value
	print(score)
	self.queue_free()
