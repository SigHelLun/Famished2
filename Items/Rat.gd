extends Sprite2D

var Rat = save.Rat
func _process(_delta):
	if Rat == true:
		self.show()
	else: 
		self.hide()
