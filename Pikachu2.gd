extends KinematicBody2D

func _ready():
	$AnimatedSprite.animation = "walk"
	pass

	
var direction = Vector2.ZERO


func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		direction.x = 1
	if Input.is_action_pressed("ui_left"):
		direction.x = -1
