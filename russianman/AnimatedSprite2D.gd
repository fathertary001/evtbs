extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
var speed = 200


# Variables to control the movement speed


func _process(delta):
	# Input handling for movement
	var movement = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		movement.x += 1
	if Input.is_action_pressed("ui_left"):
		movement.x -= 1
	if Input.is_action_pressed("ui_down"):
		movement.y += 1
	if Input.is_action_pressed("ui_up"):
		movement.y -= 1
	
	# Normalize diagonal movement
	if movement.length() > 0:
		movement = movement.normalized()
	
	# Move the sprite
	position += movement * speed * delta
