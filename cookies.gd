extends Sprite2D


func _process(_delta):
	if save.cookie == true:
		self.show()
	else: 
		self.hide()
