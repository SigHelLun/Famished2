extends StaticBody3D
class_name PlayerEndings

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
func endings(_body):
	if save.Meat == true:
		print('endindg meat')
	if save.pizza == true:
		print('pizza')
	if save.Meat == false && save.pizza == false:
		print('no ending req')
#var money = false
#var pizza = false
#var Rat = false
#var Meat = false
