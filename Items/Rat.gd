extends Sprite2D

func _process(_delta):
	if save.Rat == true:
		self.show()
	else: 
		self.hide()
