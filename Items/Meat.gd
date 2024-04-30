extends Sprite2D

var Meat = save.Meat
func _process(_delta):
	if Meat == true:
		self.show()
	else: 
		self.hide()
