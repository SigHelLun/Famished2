extends Node3D

var entered = false




#func _on_collision_shape_3d_tree_entered():
	#get_tree().change_scene_to_file("res://tel_test.tscn")
#	entered = true


#func _on_character_body_3d_tree_entered():
#		if entered == true:
#			get_tree().change_scene_to_file("res://tel_test.tscn")


#func _on_area_3d_area_entered(area):
#	if area.is_in_group("player"):
#		get_tree().change_scene_to_file("res://tel_test.tscn")
