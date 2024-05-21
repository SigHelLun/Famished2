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
		get_tree().change_scene_to_file("res://endings/MeatEnd.tscn")
		
	if save.pizza == true:
		print('pizza')
		get_tree().change_scene_to_file("res://endings/PizzaEnding.tscn")
		
	if save.cookie == true:
		print('Cookie')
		get_tree().change_scene_to_file("res://endings/CookieEnd.tscn")


		
	if save.Meat == false && save.pizza == false && save.cookie == false:
		print('no ending req')
		promptMessege = "Thus require nurishment to use this appliance"
#var money = false
#var pizza = false
#var Rat = false
#var Meat = false
