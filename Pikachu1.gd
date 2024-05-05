extends KinematicBody2D


func _ready():
	$AnimatedSprite.animation = "walk"
	#$Pikachu1.CollisionShape = $pshape1
	pass

var velocity = Vector2.ZERO
var xspeed = 300
var yspeed = 0
var GRAVITY = 9.8
var jspeed = -500
var stronghit = 0

func _physics_process(delta):
	$AnimatedSprite.flip_h = false
	velocity.x = 0
	velocity.y += GRAVITY
	if Input.is_action_pressed("1pright"):
		velocity.x += 300
	if Input.is_action_pressed("1pleft"):
		velocity.x += -300
	if Input.is_action_just_pressed("1pjump") and velocity.y == 0:
		#$Pikachu1.CollisionShape = $pshape2
		$AnimatedSprite.animation = "jump"
		velocity.y += jspeed
	if Input.is_action_just_pressed("1prush") and Input.is_action_pressed("1pright") and velocity.y == 0:
		#$Pikachu1.CollisionShape = $pshape3
		$AnimatedSprite.animation = "rushl"
		AnimatedSprite.flip_h = true
		velocity.x = 600
		velocity.y = 100
	if Input.is_action_just_pressed("1prush") and Input.is_action_pressed("1pleft") and velocity.y == 0:
		#$Pikachu1.CollisionShape = $pshape4
		$AnimatedSprite.animation = "rushr"
		velocity.x = -600
		velocity.y = 100
	if Input.is_action_just_pressed("1prush") and velocity.y != 0:
		stronghit = 1
		#$Pikachu1.CollisionShape = $pshape2
		$AnimatedSprite.animation = "angry"	
	move_and_slide(velocity)
