extends RigidBody2D

func _ready():
	$AnimatedSprite.playing = true
	$AnimatedSprite.animation = "moving"

func _process(delta):
	position.x += 1.2
	if position.x > 1050:
		position.x =  rand_range(-50,-100)
		position.y = rand_range(20,250)
		print(position)
