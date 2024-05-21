extends Area3D

# Speed at which the node moves
var move_speed: float = 100.0
var direction: int = 1  # 1 for moving right, -1 for moving left

func _physics_process(delta: float) -> void:
	# Move the node
	global_transform.origin.x += move_speed * delta * direction

	# Reverse direction and rotate when reaching a boundary
	if global_transform.origin.x >= 100.0 and direction == 1:
		direction *= -1
		rotate(Vector3.UP, deg_to_rad(180))
	elif global_transform.origin.x <= -100.0 and direction == -1:
		direction *= -1
		rotate(Vector3.UP, deg_to_rad(180))
