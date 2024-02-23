extends Node2D

var player : Node

func _process(delta):
	if player:
		global_position = player.global_position
		look_at(player.global_position)
