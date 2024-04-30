extends Sprite2D

func _process(_delta):
	if save.pizza == true:
		self.show()
	else: 
		self.hide()
