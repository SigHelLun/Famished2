class_name Interactable
extends StaticBody3D

@export var promptMessege = 'Interact'
@export var promptAction = 'interact'

#func get_prompt():
#	var key_name = ""
##		if action is InputEventKey:
#			key_name = OS.get_scancode_string(action.scancode)
#	return promptMessege + "\n["+ key_name +"]"
