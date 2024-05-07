class_name GasDoor
extends StaticBody3D

signal interacted(body)

@export var promptMessege = 'Interact'
@export var promptAction = 'interact'

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(promptAction):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return promptMessege + "\n["+ key_name +"]"

func GasDoor(body):
	emit_signal("interacted", body)
	print(body.name, " hello!")
	print(get_tree().current_scene.name)
	if get_tree().current_scene.name == "gasoutside":
		get_tree().change_scene_to_file("res://GasStation.tscn")
	else:
		get_tree().change_scene_to_file("res://MainMap.tscn")
