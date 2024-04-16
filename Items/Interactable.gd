class_name Interactable
extends StaticBody3D

signal interacted(body)

#var hand = true
@export var promptMessege = 'Interact'
@export var promptAction = 'interact'

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(promptAction):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return promptMessege + "\n["+ key_name +"]"

func interact(body):
	emit_signal("interacted", body)
	print(body.name, " Interacted!")
	#hand = false
	#var hand_node = get_node("res://player.tscn/$Neck/hand")
#	if hand == false:

