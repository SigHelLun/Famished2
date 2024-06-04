class_name cookieInter
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

func cookiePick(_body):
	if save.cookie == false:
		save.showC()
		print(save.cookie)
	else:
		save.hideC()
		print(save.cookie)

