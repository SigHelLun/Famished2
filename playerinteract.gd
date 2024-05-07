extends RayCast3D
# Called when the node enters the scene tree for the first time.
func _ready():
	add_exception(owner)

func _physics_process(_delta):
	$Prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		#
		if detected is Interactable:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.interact(owner)
		#Teleport to main map
		if detected is doorInteractable:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.teleport(owner)
		#Teleport inside house
		if detected is HouseInsideTeleport:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.HouseInside(owner)
		#Teleport into Kitchen
		if detected is NeighborWindowTeleport:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.NeighborWindow(owner)
		#first npc use him for framework when making dialogue npc
		if detected is Clerktest:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.testdialogue(owner)
		#made a button that when pressed sets a variable to true with a global variabel/function
		if detected is Item:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.pickUp(owner)
		#does the same as Item but instead sets the global variable to false
		if detected is Item2:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
					detected.dropItem(owner)
		if detected is basementDoor:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
					detected.basement(owner)
		if detected is GasDoor:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
					detected.GasDoor(owner)
		if detected is PlayerEndings:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
					detected.endings(owner)
		if detected is GoToGas:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.GoToGas(owner)
		
		
		if detected is kitchen_neighbor:
			$Prompt.text = detected.get_prompt()
			if Input.is_action_just_pressed(detected.promptAction):
				detected.neighbor(owner)
