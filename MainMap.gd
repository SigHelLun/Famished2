extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	if save.Kitchen == true:
		$player.global_position = $Kitchen.global_position
		save.KitchenF()
	else:
		$player.global_position = $Main.global_position
