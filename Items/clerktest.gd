class_name Clerktest
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

func testdialogue(body):
	emit_signal("interacted", body)
	print(body.name, " hello!")
	clerkDialogue()

#code for dialogue
#array noPizzaD for dialogue når du møter
var noItemD = ['Hey there welcome to the store!', 'Please feel free to look around.', 'Just come to me when you are ready to pay.','Talk to clerk?']
var yesItemD = ['Oh you want that pizza right...','emm y-yeah that will be 20$ dollars','You have the money right?','Are you gonna pay for that or?','20$ man', 'Talk to clerk']
#kva dialogue nummer er me på i arrayen noitemD og yesItemD
var countmsg = 1
var countmsg2 = 1
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
	if holdItem1 == 1:
		promptMessege = yesItemD[countmsg2]
		countmsg2 += 1
		if countmsg2 >= len(yesItemD):
			countmsg2 = 0

