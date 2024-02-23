extends Sprite3D

var player : Node

func _process(delta):
	# Make the sprite face the same direction as the player
	if player:
		rotation = player.rotation
