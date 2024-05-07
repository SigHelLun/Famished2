extends Control


func _on_button_pressed():
	get_tree().change_scene_to_file("res://select.tscn")
	save.hideP()
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
