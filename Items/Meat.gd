extends Sprite2D

func _process(_delta):
	if save.Meat == true:
		self.show()
		save.hideC()
		save.hideP()
	else: 
		self.hide()
