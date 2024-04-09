extends RayCast3D
# Called when the node enters the scene tree for the first time.
func _ready():
	add_exception(owner)


func _physics_process(_delta):
	$Prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		if detected is Interactable:
			$Prompt.text = detected.get_prompt()
			
			if Input.is_action_just_pressed(detected.prompt_action):
				detected.interact(owner)
