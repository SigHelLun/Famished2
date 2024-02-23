extends MeshInstance3D


@onready var interaction_area = $interactionArea3d

func _ready():
	interaction_area.interact = Callable(self, "_open_fridge")

func _opne_fridge():
	print("opened")
