extends RigidBody2D

var wavedirection = 1
var wave = true

func _ready():
	wave = true

func _process(delta):
	if position.y <= 0:
		wavedirection = 1
	if position.y >= 0:
		wavedirection = -1
	position.y += (wavedirection*0.5)
