extends RayCast3D
# Called when the node enters the scene tree for the first time.
func _ready():
	add_exception(owner)


func _physics_process(delta):
	$Prompt.text = ""
	if is_colliding():
		var detected = get_collider()
		if detected is Interactable:
			$Prompt.text = detected.name
