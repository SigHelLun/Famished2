extends Sprite2D

var pizza = save.pizza
func _process(_delta):
	if save.pizza == true:
		self.show()
	else: 
		self.hide()