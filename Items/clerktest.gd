class_name clerktest
extends StaticBody3D

signal interacted(body)

@export var promptMessege = 'Interact'
@export var promptAction = 'interact'
var message = ['what can I do for you today','Are you okay','....Emm Hello can you talk']
var countmsg = 1

func get_prompt():
	var key_name = ""
	for action in InputMap.action_get_events(promptAction):
		if action is InputEventKey:
			key_name = OS.get_keycode_string(action.physical_keycode)
	return promptMessege + "\n["+ key_name +"]"

func testdialogue(body):
	emit_signal("interacted", body)
	print(body.name, " hello!")
	if countmsg == 1:
		promptMessege = message[0]
		countmsg = 2
	if countmsg == 2:
		promptMessege = message[1]
		countmsg = 3
	if countmsg == 3:
		promptMessege = message[2]
	#dialoguebox()
