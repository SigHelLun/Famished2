extends Area3D

var entered = false


func _on_area_entered(body: PhysicsBody3D):
	entered = true


func _on_area_exited(area):
	entered = false


func _process(delta):
		if entered == true:
			if Input.is_action_just_pressed("action"):
				get_tree().change_scene("res://tel_test.tscn")
