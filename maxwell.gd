class_name maxwell
extends StaticBody3D

signal interacted(body)

@export var promptMessege = 'Talk to Maxwell'
@export var promptAction = 'interact'

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(promptAction):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return promptMessege + "\n["+ key_name +"]"

func maxwell(body):
	emit_signal("interacted", body)
	print(body.name, " hello!")
	clerkDialogue()

#code for dialogue
#array noPizzaD for dialogue når du møter
var noItemD = ['Meow', 'Talk to Maxwell']
#kva dialogue nummer er me på i arrayen noitemD og yesItemD
var countmsg = 0

#var holdItem1 = false
#const saveProg = preload('res://progress.gd')
func clerkDialogue():
	var holdItem1 = save.Item1
# Define dialogue arrays
	if holdItem1 == 0:
		promptMessege = noItemD[countmsg]
		countmsg += 1
		if countmsg >= len(noItemD):
			countmsg = 0

