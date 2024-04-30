extends Sprite2D

func _process(_delta):
	if save.Meat == true:
		self.show()
	else: 
		self.hide()
