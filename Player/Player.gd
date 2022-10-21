extends KinematicBody2D

var speed = 500

# warning-ignore:unused_argument
func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
# warning-ignore:return_value_discarded
	move_and_slide(velocity * speed)
