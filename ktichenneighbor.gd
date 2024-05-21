class_name kitchen_neighbor
extends StaticBody3D

signal interacted(body)

@export var promptMessege = 'Explore?'
@export var promptAction = 'interact'

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(promptAction):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return promptMessege + "\n["+ key_name +"]"

func neighbor(body):
	emit_signal("interacted", body)
	print(body.name, " hello!")
	neighbordialogue()

#code for dialogue
#array noPizzaD for dialogue når du møter
var noItemD = ['Who is that?!', 'GET. OUT.', 'This is your last warning.']
#kva dialogue nummer er me på i arrayen noitemD og yesItemD
var countmsg = 0
#var holdItem1 = false
#const saveProg = preload('res://progress.gd')
func neighbordialogue():
	var holdItem1 = save.Item1
# Define dialogue arrays
	if holdItem1 == 0:
		promptMessege = noItemD[countmsg]
		countmsg += 1
		if countmsg >= len(noItemD):
			countmsg = 0

