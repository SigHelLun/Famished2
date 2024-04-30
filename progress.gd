extends Node
#save alle globale variabler her
var Item1 = 0
var item2 = false
func item1Pick():
	Item1 = 1
func item1Drop():
	Item1 = 0


var money = false	
var pizza = false
var Rat = false


func hideM():
	money = false
func showM():
	money = true
func hideP():
	pizza = false
func showP():
	pizza = true
	money = false
func hideR():
	Rat = false
func showR():
	Rat = true
	money = false
	pizza = false
