class_name Item
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
#puts the item at 1
func pickUp(body):
	print(body.name, " testitem!")
	save.item1Pick()
	if save.pizza == false:
		save.showP()
		save.hideC()
		print(save.pizza)
		save.item1Pick()
	else:
		save.hideP()
		print(save.pizza)
		save.item1Drop()
