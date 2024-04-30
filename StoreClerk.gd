class_name StoreClerk
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
var noItemD = ['Oh.. he-hello. what can I do for you today s-sir','Are you okay, you dont look okay','....Emm Hello c-can you talk','what even are you man?', 'Are you gonna buy something?']
var yesItemD = ['Oh you want that pizza right...','emm y-yeah that will be 20$ dollars','You have the money right?','Are you gonna pay for that or?','20$ man']
#kva dialogue nummer er me på i arrayen noitemD og yesItemD
var countmsg = 1
var countmsg2 = 1
#var holdItem1 = false
#const saveProg = preload('res://progress.gd')
func clerkDialogue():
	var holdItem1 = save.Item1
		#vist holdpizza er false
	if holdItem1 == 0:
		#message er ein array den første stringen starter på 0.
		if countmsg == 1:
			promptMessege = noItemD[0]
		if countmsg == 2:
			promptMessege = noItemD[1]
		if countmsg == 3:
			promptMessege = noItemD[2]
		if countmsg == 4:
			promptMessege = noItemD[3]
		if countmsg == 5:
			promptMessege = 'Talk to Clerk'
		# countmsg minus kor mange settningar du vil gå tilbake
		if countmsg == 6:
			countmsg -= 5
		countmsg += 1
	if holdItem1 == 1:
		if countmsg2 == 1:
			promptMessege = yesItemD[0]
		if countmsg2 == 2:
			promptMessege = yesItemD[1]
		if countmsg2 == 3:
			promptMessege = yesItemD[2]
		if countmsg2 == 4:
			promptMessege = yesItemD[3]
		if countmsg2 == 5:
			promptMessege = yesItemD[4]
		if countmsg2 == 6:
			countmsg2 -= 5
			promptMessege = 'Talk to Clerk'
		countmsg2 += 1
